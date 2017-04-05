package io.manasobi.core.domain.program;

import com.querydsl.core.BooleanBuilder;
import io.manasobi.core.base.BaseService;
import io.manasobi.core.domain.user.auth.menu.AuthGroupMenu;
import io.manasobi.core.domain.user.auth.menu.AuthGroupMenuService;
import io.manasobi.core.parameter.RequestParams;
import org.apache.commons.io.FilenameUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import java.util.List;
import java.util.Map;

import static java.util.stream.Collectors.*;

@Service
public class ProgramService extends BaseService<Program, String> {

    private ProgramRepo programRepo;

    @Inject
    private AuthGroupMenuService authGroupMenuService;

    @Inject
    public ProgramService(ProgramRepo programRepo) {
        super(programRepo);
        this.programRepo = programRepo;
    }

    public List<Program> get(RequestParams<Program> requestParams) {
        String filter = requestParams.getFilter();

        BooleanBuilder builder = new BooleanBuilder();

        List list = select().from(qProgram)
                            .where(builder)
                            .orderBy(qProgram.progNm.asc())
                            .fetch();

        if (isNotEmpty(filter)) {
            list = filter(list, filter);
        }

        return list;
    }

    public Page<Program> get(Pageable pageable, RequestParams requestParams) {
        return filter(get(requestParams), pageable);
    }

    @Transactional
    public void saveProgram(List<Program> programs) {

        Map<Boolean, List<Program>> filteredMap = programs.stream().collect(partitioningBy(Program::isDeleted));

        List<Program> deleteJobList = filteredMap.get(Boolean.TRUE);
        List<Program> saveJobList = filteredMap.get(Boolean.FALSE);


        for (Program program : programs) {

            // 삭제 처리
            if (program.isDeleted()) {

                List<Long> menuIds = select().select(qMenu.menuId).distinct().from(qMenu)
                                             .where(qMenu.progCd.eq(program.getProgCd()))
                                             .fetch();

                delete(qAuthGroupMenu)
                    .where(qAuthGroupMenu.menuId.in(menuIds))
                    .execute();

                update(qMenu)
                    .setNull(qMenu.progCd)
                    .where(qMenu.progCd.eq(program.getProgCd()))
                    .execute();

                delete(program.getId());
            }

            // 저장 처리
            else {

                // 신규 저장일 경우
                if (isEmpty(program.getProgCd())) {
                    program.setProgCd(FilenameUtils.getBaseName(program.getProgPh()));
                    save(program);

                } else {
                    // 신규 저장이 아닐 경우

                    List<Long> menuIds = select().select(qMenu.menuId)
                                                 .distinct()
                                                 .from(qMenu)
                                                 .where(qMenu.progCd.eq(program.getProgCd()))
                                                 .fetch();

                    List<AuthGroupMenu> authGroupMenuList = select().select(qAuthGroupMenu)
                                                                    .from(qAuthGroupMenu)
                                                                    .where(qAuthGroupMenu.menuId.in(menuIds))
                                                                    .fetch();

                    // 해당 프로그램으로 권한 그룹이 등록된 경우 권한을 다시 설정 (Y -> N로 변경된 항목만 체크)
                    if (isNotEmpty(authGroupMenuList)) {
                        for (AuthGroupMenu authGroupMenu : authGroupMenuList) {
                            authGroupMenu.updateAuthorization(program);
                            authGroupMenuService.save(authGroupMenu);
                        }
                    }

                    Program existProgram = findOne(program.getId());

                    // 프로그램 코드가 변경되었을 경우
                    if (notEquals(existProgram.getProgPh(), program.getProgPh())) {
                        program.setProgCd(FilenameUtils.getBaseName(program.getProgPh()));

                        delete(existProgram.getId());

                        // 메뉴에 메뉴코드 & 프로그램코드 변경
                        update(qMenu)
                                .set(qMenu.progCd, program.getProgCd())
                                .where(qMenu.progCd.eq(existProgram.getProgCd()))
                                .execute();

                    }
                    save(program);


                }
            }
        }

        /*// 삭제 처리
        programs.stream()
                .filter(program -> program.isDeleted())
                .forEach(program -> {
                    try {
                        processDeleteJob(program);
                    } catch (Exception e) {
                        throw new RuntimeException(e.getMessage());
                    }
                });

        //저장 처리
        Stream<Program> saveJobStream = programs.stream()
                                                .filter(program -> !program.isDeleted());
        // 신규 저장일 경우
        Stream<Program> insertJobStream = saveJobStream.filter(program -> isEmpty(program.getProgCd()))
                                                       .map(this::processInsertJob);
        // 신규 저장이 아닐 경우
        Stream<Program> updateJobStream = saveJobStream.filter(program -> !isEmpty(program.getProgCd()))
                                                       .map(this::processUpdateJob);

        Stream.concat(insertJobStream, updateJobStream)
              .forEach(program -> {
                  try {
                      TemplateUtils.generateHtmlAndJsFiles(program.getProgPh());
                      save(program);
                  } catch (Exception e) {
                      throw new RuntimeException(e.getMessage());
                  }
              });*/
    }

    private void processDeleteJob(Program program) {

        List<Long> menuIds =
                select().select(qMenu.menuId).distinct()
                        .from(qMenu)
                        .where(qMenu.progCd.eq(program.getProgCd())).fetch();

        delete(qAuthGroupMenu)
                .where(qAuthGroupMenu.menuId.in(menuIds))
                .execute();

        update(qMenu)
                .setNull(qMenu.progCd)
                .where(qMenu.progCd.eq(program.getProgCd()))
                .execute();

        delete(program.getId());
    }

    private Program processInsertJob(Program program) {
        program.setProgCd(FilenameUtils.getBaseName(program.getProgPh()));
        return program;
    }

    private Program processUpdateJob(Program program) {

        List<Long> menuIds =
                select().select(qMenu.menuId).distinct()
                        .from(qMenu)
                        .where(qMenu.progCd.eq(program.getProgCd()))
                        .fetch();

        List<AuthGroupMenu> authGroupMenuList =
                select().select(qAuthGroupMenu)
                        .from(qAuthGroupMenu)
                        .where(qAuthGroupMenu.menuId.in(menuIds))
                        .fetch();

        // 해당 프로그램으로 권한 그룹이 등록된 경우 권한을 다시 설정 (Y -> N로 변경된 항목만 체크)
        if (isNotEmpty(authGroupMenuList)) {
            for (AuthGroupMenu authGroupMenu : authGroupMenuList) {
                authGroupMenu.updateAuthorization(program);
                authGroupMenuService.save(authGroupMenu);
            }
        }

        Program existProgram = findOne(program.getId());

        // 프로그램 코드가 변경되었을 경우
        if (notEquals(existProgram.getProgPh(), program.getProgPh())) {

            program.setProgCd(FilenameUtils.getBaseName(program.getProgPh()));

            delete(existProgram.getId());

            // 메뉴에 메뉴코드 & 프로그램코드 변경
            update(qMenu)
                    .set(qMenu.progCd, program.getProgCd())
                    .where(qMenu.progCd.eq(existProgram.getProgCd()))
                    .execute();
        }

        return program;
    }

}

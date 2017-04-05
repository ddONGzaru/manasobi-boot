package io.manasobi.core.domain.code;

import com.querydsl.core.BooleanBuilder;
import io.manasobi.core.base.BaseService;
import io.manasobi.core.code.Types;
import io.manasobi.core.parameter.RequestParams;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.inject.Inject;
import java.util.List;

@Service
public class CommonCodeService extends BaseService<CommonCode, CommonCode.CommonCodeId> {

    private CommonCodeRepo basicCodeRepository;

    @Inject
    public CommonCodeService(CommonCodeRepo basicCodeRepository) {
        super(basicCodeRepository);
        this.basicCodeRepository = basicCodeRepository;
    }

    public Page<CommonCode> find(Pageable pageable, RequestParams requestParams) {

        String groupCd = requestParams.getString("groupCd", "");
        String useYn = requestParams.getString("useYn", "");
        String filter = requestParams.getString("filter");

        BooleanBuilder builder = new BooleanBuilder();

        if (isNotEmpty(groupCd)) {
            builder.and(qCommonCode.groupCd.eq(groupCd));
        }

        if (isNotEmpty(useYn)) {
            Types.Used used = Types.Used.get(useYn);
            builder.and(qCommonCode.useYn.eq(used));
        }

        if (isNotEmpty(filter)) {

            filter = buildLikeExpression(filter);

            BooleanBuilder likeBuilder = new BooleanBuilder();

            likeBuilder.or(qCommonCode.groupCd.like(filter))
                       .or(qCommonCode.groupNm.like(filter))
                       .or(qCommonCode.code.like(filter))
                       .or(qCommonCode.name.like(filter));

            builder.and(likeBuilder);
        }

        pageable = buildPageable(pageable);

        Page<CommonCode> resultPage = findAll(builder, pageable);

        return resultPage;

    }

    private String buildLikeExpression(String filter) {
        return "%" + filter + "%";
    }

    private Pageable buildPageable(Pageable pageable) {

        Sort.Order sortOrder = new Sort.Order(Sort.Direction.ASC, "sort");

        Sort sort;

        if (pageable.getSort() == null) {
            Sort.Order defaultOrder = new Sort.Order(Sort.Direction.ASC, "groupNm");
            sort = new Sort(defaultOrder, sortOrder);
        } else {
            sort = pageable.getSort().and(new Sort(sortOrder));
        }

        return new PageRequest(pageable.getPageNumber(), pageable.getPageSize(), sort);
    }


    public List<CommonCode> get(RequestParams requestParams) {

        String groupCd = requestParams.getString("groupCd", "");
        String useYn = requestParams.getString("useYn", "");
        String filter = requestParams.getString("filter");

        BooleanBuilder builder = new BooleanBuilder();

        if (isNotEmpty(groupCd)) {
            builder.and(qCommonCode.groupCd.eq(groupCd));
        }

        if (isNotEmpty(useYn)) {
            Types.Used used = Types.Used.get(useYn);
            builder.and(qCommonCode.useYn.eq(used));
        }

        List<CommonCode> commonCodeList = select().from(qCommonCode).where(builder).orderBy(qCommonCode.groupNm.asc(), qCommonCode.sort.asc()).fetch();

        if (isNotEmpty(filter)) {
            commonCodeList = filter(commonCodeList, filter);
        }

        return commonCodeList;

    }

    @Transactional
    public void saveCommonCode(List<CommonCode> basicCodes) {
        save(basicCodes);
    }
}

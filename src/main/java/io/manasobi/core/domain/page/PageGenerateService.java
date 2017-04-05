package io.manasobi.core.domain.page;

import com.google.common.base.CaseFormat;
import io.manasobi.core.api.ApiException;
import io.manasobi.core.base.BaseService;
import io.manasobi.core.code.Types;
import io.manasobi.core.domain.program.Program;
import io.manasobi.core.domain.program.ProgramRepo;
import io.manasobi.core.domain.program.ProgramService;
import io.manasobi.core.model.extract.metadata.Column;
import io.manasobi.core.model.extract.metadata.Table;
import io.manasobi.core.model.extract.service.JdbcMetadataService;
import io.manasobi.core.model.extract.service.ModelExtractService;
import io.manasobi.utils.TemplateUtils;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import javax.inject.Inject;
import java.util.Arrays;
import java.util.List;

import static java.util.stream.Collectors.*;

@Service
public class PageGenerateService extends BaseService<Program, String> {

    @Autowired
    private ProgramService programService;

    @Autowired
    private JdbcMetadataService jdbcMetadataService;

    @Autowired
    private ModelExtractService modelExtractService;

    private List<String> templateTypes;

    @PostConstruct
    private void init() {
        templateTypes = Arrays.asList(
            Types.ModelExtractorTemplate.CONTROLLER,
            Types.ModelExtractorTemplate.SERVICE,
            Types.ModelExtractorTemplate.REPOSITORY,
            Types.ModelExtractorTemplate.ENTITY,
            Types.ModelExtractorTemplate.VO,
            Types.ModelExtractorTemplate.MYBATIS_INTERFACE,
            Types.ModelExtractorTemplate.MYBATIS_XML
        );
    }

    @Inject
    public PageGenerateService(ProgramRepo programRepo) {
        super(programRepo);
    }

    public void generate(String name, String path, String templateCode) {

        validateRequestParams(name, path);

        String programCode = FilenameUtils.getBaseName(path);

        TemplateUtils.generateViewResources(path, templateCode, programCode);

        saveProgram(programCode, name, path);
    }

    public void generateAllSet(String name, String path, String table, String templateCode) {

        path = parsePath(path);

        String programCode = FilenameUtils.getBaseName(path);

        validateRequestParams(name, path);

        generateViewResources(path, templateCode, table, programCode);

        generateModelResources(path, table, programCode);

        saveProgram(programCode, name, path);
    }

    private String parsePath(String path) {

        path = (!path.startsWith("/")) ? "/" + path : path;

        path = path.endsWith("/") ? path.substring(0, path.length() - 1) : path;

        return path;
    }

    private void validateRequestParams(String name, String path) {

        if (exists(qProgram.progNm.eq(name.trim()))) {
            throw new ApiException("존재하는 프로그램명입니다. [" + name + "]");
        }

        if (exists(qProgram.progPh.eq(path.trim()))) {
            throw new ApiException("존재하는 경로입니다. [" + path + "]");
        }
    }

    private void generateViewResources(String path, String templateCode, String tableName, String programCode) {

        Table table = jdbcMetadataService.getTable(tableName);

        List<Column> columnList = table.getColumns();

        TemplateUtils.generateViewResources(path, templateCode,
                buildGridAttr(columnList), buildGridKey(columnList), programCode);
    }

    private String buildGridAttr(List<Column> columnList) {

        String[] template = {
            "{key: '@{KEY}', label: '@{LABEL}', width: 100, align: 'left', editor: 'text'}"
        };

        return columnList.stream()
                         .map(column -> {
                              String label = column.getColumnName();
                              String key = CaseFormat.UPPER_UNDERSCORE.to(CaseFormat.LOWER_CAMEL, label);

                              String message = template[0].replace("@{KEY}", key);
                              return message.replace("@{LABEL}", label);
                         }).collect(joining(","));
    }

    private String buildGridKey(List<Column> columnList) {

        return columnList.stream()
                         .filter(column -> column.isKey())
                         .map(column -> "this." +
                             CaseFormat.UPPER_UNDERSCORE.to(CaseFormat.LOWER_CAMEL, column.getColumnName()))
                         .collect(joining(" && "));
    }

    private void generateModelResources(String programPath, String tableName, String programCode) {

        programPath = programPath.startsWith("/") ? programPath.substring(1) : programPath;

        String className = CaseFormat.LOWER_UNDERSCORE.to(CaseFormat.UPPER_CAMEL, programCode);

        String packageName = programPath.replace("/", ".");

        packageName = packageName.startsWith(".") ?
                packageName.substring(1) : packageName;

        packageName = packageName.endsWith(".") ?
                packageName.substring(0, packageName.length()-1) : packageName;

        modelExtractService.generateFiles(templateTypes, programPath, tableName, className, packageName);

    }

    private void saveProgram(String programCode, String name, String path) {

        Program program = new Program();
        program.setProgCd(programCode);
        program.setProgNm(name);
        program.setProgPh(path);

        programService.save(program);
    }

}
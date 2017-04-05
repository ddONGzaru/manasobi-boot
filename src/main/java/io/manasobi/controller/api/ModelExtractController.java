package io.manasobi.controller.api;

import io.manasobi.controller.BaseController;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.model.extract.metadata.Table;
import io.manasobi.core.model.extract.service.JdbcMetadataService;
import io.manasobi.core.model.extract.service.ModelExtractService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.inject.Inject;
import java.util.List;

@RestController
@RequestMapping("/api/v1/model-extractor")
public class ModelExtractController extends BaseController {

    @Inject
    private JdbcMetadataService jdbcMetadataService;

    @Inject
    private ModelExtractService modelExtractService;

    @GetMapping("/tables")
    public List<Table> getTableList() {
        return jdbcMetadataService.getTables();
    }

    @GetMapping("/table")
    public Table getTable(String tableName) {
        return jdbcMetadataService.getTable(tableName);
    }

    @GetMapping("/gen_code")
    public ApiResponse generateCodes(
            @RequestParam(defaultValue = "") String packageName,
            @RequestParam(defaultValue = "") String tableName,
            @RequestParam(defaultValue = "") String className,
            @RequestParam(defaultValue = "") List<String> templateTypes) {

        modelExtractService.generateFiles(templateTypes, tableName, className, packageName);

        return ok();
    }

}

package io.manasobi.controller.api;

import io.manasobi.controller.BaseController;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.domain.page.PageGenerateService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequestMapping("/api/v1/page-gen")
public class PageGenerateController extends BaseController {

    @Autowired
    private ConfigurableApplicationContext context;

    @Autowired
    private PageGenerateService pageGenerateService;

    @GetMapping
    public ApiResponse generate(String name, String path, String templateCode) {
        pageGenerateService.generate(name, path, templateCode);
        return ok();
    }

    @GetMapping("/all-set")
    public ApiResponse generate(String name, String path, String table, String templateCode) {
        pageGenerateService.generateAllSet(name, path, table, templateCode);
        return ok();
    }

}


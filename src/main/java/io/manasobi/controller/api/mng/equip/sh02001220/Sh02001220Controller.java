package io.manasobi.controller.api.mng.equip.sh02001220;

import io.manasobi.domain.mng.equip.sh02001220.Sh02001220;
import io.manasobi.domain.mng.equip.sh02001220.Sh02001220Service;
import io.manasobi.domain.mng.equip.sh02001220.Sh02001220VO;
import io.manasobi.controller.BaseController;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.parameter.RequestParams;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;
import java.util.List;

@RestController
@RequestMapping(value = "/api/v1/mng/equip/sh02001220")
public class Sh02001220Controller extends BaseController {

    @Inject
    private Sh02001220Service sh02001220Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh02001220> requestParams) {
        Page<Sh02001220> pages = sh02001220Service.find(pageable, requestParams.getString("filter", ""));
        return Responses.PageResponse.of(Sh02001220VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody List<Sh02001220> request) {
        sh02001220Service.save(request);
        return ok();
    }
}
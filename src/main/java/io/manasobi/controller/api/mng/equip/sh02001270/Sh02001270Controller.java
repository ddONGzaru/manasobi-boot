package io.manasobi.controller.api.mng.equip.sh02001270;

import io.manasobi.domain.mng.equip.sh02001270.Sh02001270;
import io.manasobi.domain.mng.equip.sh02001270.Sh02001270Service;
import io.manasobi.domain.mng.equip.sh02001270.Sh02001270VO;
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
@RequestMapping(value = "/api/v1/mng/equip/sh02001270")
public class Sh02001270Controller extends BaseController {

    @Inject
    private Sh02001270Service sh02001270Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh02001270> requestParams) {
        Page<Sh02001270> pages = sh02001270Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh02001270VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody List<Sh02001270> request) {
        sh02001270Service.save(request);
        return ok();
    }
}
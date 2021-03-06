package io.manasobi.controller.api.mng.equip.sh02001190;

import io.manasobi.domain.mng.equip.sh02001190.Sh02001190;
import io.manasobi.domain.mng.equip.sh02001190.Sh02001190Service;
import io.manasobi.domain.mng.equip.sh02001190.Sh02001190VO;
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
@RequestMapping(value = "/api/v1/mng/equip/sh02001190")
public class Sh02001190Controller extends BaseController {

    @Inject
    private Sh02001190Service sh02001190Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh02001190> requestParams) {
        Page<Sh02001190> pages = sh02001190Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh02001190VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody List<Sh02001190> request) {
        sh02001190Service.save(request);
        return ok();
    }
}
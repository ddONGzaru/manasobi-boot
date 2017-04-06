package io.manasobi.controller.api.mng.equip.sh02001280;

import io.manasobi.domain.mng.equip.sh02001280.Sh02001280;
import io.manasobi.domain.mng.equip.sh02001280.Sh02001280Service;
import io.manasobi.domain.mng.equip.sh02001280.Sh02001280VO;
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
@RequestMapping(value = "/api/v1/mng/equip/sh02001280")
public class Sh02001280Controller extends BaseController {

    @Inject
    private Sh02001280Service sh02001280Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh02001280> requestParams) {
        Page<Sh02001280> pages = sh02001280Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh02001280VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody List<Sh02001280> request) {
        sh02001280Service.save(request);
        return ok();
    }
}
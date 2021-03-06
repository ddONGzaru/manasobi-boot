package io.manasobi.controller.api.mng.equip.sh02001150;

import io.manasobi.domain.mng.equip.sh02001150.Sh02001150;
import io.manasobi.domain.mng.equip.sh02001150.Sh02001150Service;
import io.manasobi.domain.mng.equip.sh02001150.Sh02001150VO;
import io.manasobi.controller.BaseController;
import io.manasobi.core.api.ApiException;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.code.ApiStatus;
import io.manasobi.core.parameter.RequestParams;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;

@RestController
@RequestMapping(value = "/api/v1/mng/equip/sh02001150")
public class Sh02001150Controller extends BaseController {

    @Inject
    private Sh02001150Service sh02001150Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh02001150> requestParams) {
        Page<Sh02001150> pages = sh02001150Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh02001150VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody Sh02001150VO sh02001150VO) {

        ApiResponse apiResponse = sh02001150Service.sendAndReceive(sh02001150VO);

        if (apiResponse.getStatus() == -1) {
            throw new ApiException(ApiStatus.SYSTEM_ERROR, apiResponse.getMessage());
        }

        return apiResponse;
    }
}
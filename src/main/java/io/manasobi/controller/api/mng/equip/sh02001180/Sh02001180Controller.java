package io.manasobi.controller.api.mng.equip.sh02001180;

import io.manasobi.domain.mng.equip.sh02001180.Sh02001180;
import io.manasobi.domain.mng.equip.sh02001180.Sh02001180Service;
import io.manasobi.domain.mng.equip.sh02001180.Sh02001180VO;
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
@RequestMapping(value = "/api/v1/mng/equip/sh02001180")
public class Sh02001180Controller extends BaseController {

    @Inject
    private Sh02001180Service sh02001180Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh02001180> requestParams) {
        Page<Sh02001180> pages = sh02001180Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh02001180VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody Sh02001180VO sh02001180VO) {

        ApiResponse apiResponse = sh02001180Service.sendAndReceive(sh02001180VO);

        if (apiResponse.getStatus() == -1) {
            throw new ApiException(ApiStatus.SYSTEM_ERROR, apiResponse.getMessage());
        }

        return apiResponse;
    }
}
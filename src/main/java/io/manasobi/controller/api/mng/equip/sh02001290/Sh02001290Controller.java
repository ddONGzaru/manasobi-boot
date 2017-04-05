package io.manasobi.controller.api.mng.equip.sh02001290;

import com.bgf.shbank.domain.mng.equip.sh02001290.Sh02001290;
import com.bgf.shbank.domain.mng.equip.sh02001290.Sh02001290Service;
import com.bgf.shbank.domain.mng.equip.sh02001290.Sh02001290VO;
import io.onsemiro.controller.BaseController;
import io.onsemiro.core.api.ApiException;
import io.onsemiro.core.api.response.ApiResponse;
import io.onsemiro.core.api.response.Responses;
import io.onsemiro.core.code.ApiStatus;
import io.onsemiro.core.parameter.RequestParams;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;

@RestController
@RequestMapping(value = "/api/v1/mng/equip/sh02001290")
public class Sh02001290Controller extends BaseController {

    @Inject
    private Sh02001290Service sh02001290Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh02001290> requestParams) {
        Page<Sh02001290> pages = sh02001290Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh02001290VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody Sh02001290VO sh02001290VO) {

        ApiResponse apiResponse = sh02001290Service.sendAndReceive(sh02001290VO);

        if (apiResponse.getStatus() == -1) {
            throw new ApiException(ApiStatus.SYSTEM_ERROR, apiResponse.getMessage());
        }

        return apiResponse;
    }
}
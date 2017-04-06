package io.manasobi.controller.api.mng.etc.sh04001130;

import io.manasobi.domain.mng.etc.sh04001130.Sh04001130;
import io.manasobi.domain.mng.etc.sh04001130.Sh04001130Service;
import io.manasobi.domain.mng.etc.sh04001130.Sh04001130VO;
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
@RequestMapping(value = "/api/v1/mng/etc/sh04001130")
public class Sh04001130Controller extends BaseController {

    @Inject
    private Sh04001130Service sh04001130Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh04001130> requestParams) {
        Page<Sh04001130> pages = sh04001130Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh04001130VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody Sh04001130VO sh04001130VO) {

        ApiResponse apiResponse = sh04001130Service.sendAndReceive(sh04001130VO);

        if (apiResponse.getStatus() == -1) {
            throw new ApiException(ApiStatus.SYSTEM_ERROR, apiResponse.getMessage());
        }

        return apiResponse;
    }
}
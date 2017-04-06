package io.manasobi.controller.api.mng.etc.sh04001110;

import io.manasobi.domain.mng.etc.sh04001110.Sh04001110;
import io.manasobi.domain.mng.etc.sh04001110.Sh04001110Service;
import io.manasobi.domain.mng.etc.sh04001110.Sh04001110VO;
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
@RequestMapping(value = "/api/v1/mng/etc/sh04001110")
public class Sh04001110Controller extends BaseController {

    @Inject
    private Sh04001110Service sh04001110Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh04001110> requestParams) {
        Page<Sh04001110> pages = sh04001110Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh04001110VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody Sh04001110VO sh04001110VO) {

        ApiResponse apiResponse = sh04001110Service.sendAndReceive(sh04001110VO);

        if (apiResponse.getStatus() == -1) {
            throw new ApiException(ApiStatus.SYSTEM_ERROR, apiResponse.getMessage());
        }

        return apiResponse;
    }
}
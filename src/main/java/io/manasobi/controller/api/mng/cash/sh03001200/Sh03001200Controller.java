package io.manasobi.controller.api.mng.cash.sh03001200;

import io.manasobi.domain.mng.cash.sh03001200.Sh03001200;
import io.manasobi.domain.mng.cash.sh03001200.Sh03001200Service;
import io.manasobi.domain.mng.cash.sh03001200.Sh03001200VO;
import io.manasobi.controller.BaseController;
import io.manasobi.core.api.ApiException;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.code.ApiStatus;
import io.manasobi.core.parameter.RequestParams;
import io.manasobi.utils.DateUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;
import java.time.LocalDateTime;

@RestController
@RequestMapping(value = "/api/v1/mng/cash/sh03001200")
public class Sh03001200Controller extends BaseController {

    @Inject
    private Sh03001200Service sh03001200Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh03001200> requestParams) {
        Page<Sh03001200> pages = sh03001200Service.find(pageable, requestParams.getString("filter", ""));
        return Responses.PageResponse.of(Sh03001200VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody Sh03001200VO sh03001200VO) {
        LocalDateTime now = LocalDateTime.now();

        sh03001200VO.setTxId(DateUtils.convertToString(now, "yyyy-MM-dd HH:mm:ss"));

        ApiResponse apiResponse = sh03001200Service.sendAndReceive(sh03001200VO);

        if (apiResponse.getStatus() == -1) {
            throw new ApiException(ApiStatus.SYSTEM_ERROR, apiResponse.getMessage());
        }

        return apiResponse;
    }

    @GetMapping(params = "findOne")
    public Sh03001200VO findOne(RequestParams<Sh03001200VO> requestParams) {
        return sh03001200Service.findOne(requestParams);
    }
}
package io.manasobi.controller.api.mng.cash.sh03001180;

import io.manasobi.domain.mng.cash.sh03001180.Sh03001180;
import io.manasobi.domain.mng.cash.sh03001180.Sh03001180Service;
import io.manasobi.domain.mng.cash.sh03001180.Sh03001180VO;
import io.manasobi.controller.BaseController;
import io.manasobi.core.api.ApiException;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.code.ApiStatus;
import io.manasobi.core.parameter.RequestParams;
import io.manasobi.utils.DateUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;
import java.time.LocalDateTime;

@RestController
@RequestMapping(value = "/api/v1/mng/cash/sh03001180")
public class Sh03001180Controller extends BaseController {

    @Inject
    private Sh03001180Service sh03001180Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh03001180> requestParams) {
        Page<Sh03001180> pages = sh03001180Service.find(pageable, requestParams.getString("filter", ""));
        return Responses.PageResponse.of(Sh03001180VO.of(pages.getContent()), pages);
    }

    @GetMapping(params = "findAll")
    public Responses.PageResponse findAll(Pageable pageable, RequestParams<Sh03001180VO> requestParams) {
        Page<Sh03001180> pages = sh03001180Service.findAll(pageable, requestParams);
        return Responses.PageResponse.of(Sh03001180VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody Sh03001180VO sh03001180VO) {
        LocalDateTime now = LocalDateTime.now();

        sh03001180VO.setTxId(DateUtils.convertToString(now, "yyyy-MM-dd HH:mm:ss"));
        sh03001180VO.setCashSendingAmt(sh03001180VO.getCashSendingAmt().replace(",",""));
        sh03001180VO.setCash50kSendingAmt(sh03001180VO.getCash50kSendingAmt().replace(",",""));

        if(StringUtils.isEmpty(sh03001180VO.getAcceptEnable())){
            sh03001180VO.setAcceptEnable("");
        }

        ApiResponse apiResponse = sh03001180Service.sendAndReceive(sh03001180VO);

        if (apiResponse.getStatus() == -1) {
            throw new ApiException(ApiStatus.SYSTEM_ERROR, apiResponse.getMessage());
        }

        return apiResponse;
    }
}
package io.manasobi.controller.api.mng.cash.sh03001160;

import com.bgf.shbank.domain.mng.cash.sh03001160.Sh03001160;
import com.bgf.shbank.domain.mng.cash.sh03001160.Sh03001160Service;
import com.bgf.shbank.domain.mng.cash.sh03001160.Sh03001160VO;
import io.onsemiro.controller.BaseController;
import io.onsemiro.core.api.ApiException;
import io.onsemiro.core.api.response.ApiResponse;
import io.onsemiro.core.api.response.Responses;
import io.onsemiro.core.code.ApiStatus;
import io.onsemiro.core.parameter.RequestParams;
import io.onsemiro.utils.DateUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;
import java.time.LocalDateTime;

@RestController
@RequestMapping(value = "/api/v1/mng/cash/sh03001160")
public class Sh03001160Controller extends BaseController {

    @Inject
    private Sh03001160Service sh03001160Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh03001160> requestParams) {
        Page<Sh03001160> pages = sh03001160Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh03001160VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody Sh03001160VO sh03001160VO) {
        LocalDateTime now = LocalDateTime.now();

        sh03001160VO.setTxId(DateUtils.convertToString(now, "yyyy-MM-dd HH:mm:ss"));

        sh03001160VO.setAddCashSendingAmt(sh03001160VO.getAddCashSendingAmt().replace(",", ""));
        sh03001160VO.setAddCash50kSendingAmt(sh03001160VO.getAddCash50kSendingAmt().replace(",", ""));

        ApiResponse apiResponse = sh03001160Service.sendAndReceive(sh03001160VO);

        if (apiResponse.getStatus() == -1) {
            throw new ApiException(ApiStatus.SYSTEM_ERROR, apiResponse.getMessage());
        }

        return apiResponse;
    }


    @GetMapping(params = "nextSeqNo")
    public Sh03001160VO nextSeqNo(RequestParams<Sh03001160VO> requestParams) {
        return sh03001160Service.nextSeqNo(requestParams);
    }
}
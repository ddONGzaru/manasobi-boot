package io.manasobi.controller.api.mng.cash.sh03001140;

import io.manasobi.controller.BaseController;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.parameter.RequestParams;
import io.manasobi.domain.mng.cash.sh03001140.Sh03001140;
import io.manasobi.domain.mng.cash.sh03001140.Sh03001140Service;
import io.manasobi.domain.mng.cash.sh03001140.Sh03001140VO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;

@RestController
@RequestMapping(value = "/api/v1/mng/cash/sh03001140")
public class Sh03001140Controller extends BaseController {

    @Inject
    private Sh03001140Service sh03001140Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh03001140> requestParams) {
        Page<Sh03001140> pages = sh03001140Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh03001140VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody Sh03001140VO sh03001140VO) {

        if (!StringUtils.isEmpty(sh03001140VO.getPrevDayCashSendingAmt()) && sh03001140VO.getPrevDayCashSendingAmt().contains(",")) {
            sh03001140VO.setPrevDayCashSendingAmt(StringUtils.replace(sh03001140VO.getPrevDayCashSendingAmt(), ",", ""));
        }
        if (!StringUtils.isEmpty(sh03001140VO.getDepositAmt()) && sh03001140VO.getDepositAmt().contains(",")) {
            sh03001140VO.setDepositAmt(StringUtils.replace(sh03001140VO.getDepositAmt(), ",", ""));
        }
        if (!StringUtils.isEmpty(sh03001140VO.getGiveAmt()) && sh03001140VO.getGiveAmt().contains(",")) {
            sh03001140VO.setGiveAmt(StringUtils.replace(sh03001140VO.getGiveAmt(), ",", ""));
        }
        if (!StringUtils.isEmpty(sh03001140VO.getCloseAmt()) && sh03001140VO.getCloseAmt().contains(",")) {
            sh03001140VO.setCloseAmt(StringUtils.replace(sh03001140VO.getCloseAmt(), ",", ""));
        }
        if (!StringUtils.isEmpty(sh03001140VO.getNoneProcessAmt()) && sh03001140VO.getNoneProcessAmt().contains(",")) {
            sh03001140VO.setNoneProcessAmt(StringUtils.replace(sh03001140VO.getNoneProcessAmt(), ",", ""));
        }
        if (!StringUtils.isEmpty(sh03001140VO.getRtrvlFund()) && sh03001140VO.getRtrvlFund().contains(",")) {
            sh03001140VO.setRtrvlFund(StringUtils.replace(sh03001140VO.getRtrvlFund(), ",", ""));
        }
        if (!StringUtils.isEmpty(sh03001140VO.getAdjustLackAmtCount()) && sh03001140VO.getAdjustLackAmtCount().contains(",")) {
            sh03001140VO.setAdjustLackAmtCount(StringUtils.replace(sh03001140VO.getAdjustLackAmtCount(), ",", ""));
        }
        if (!StringUtils.isEmpty(sh03001140VO.getAdjustLackAmt()) && sh03001140VO.getAdjustLackAmt().contains(",")) {
            sh03001140VO.setAdjustLackAmt(StringUtils.replace(sh03001140VO.getAdjustLackAmt(), ",", ""));
        }

        sh03001140VO.setCloseDate(StringUtils.replace(sh03001140VO.getCloseDate(), "-", ""));

        sh03001140Service.save(sh03001140VO);
        return ok();
    }
}
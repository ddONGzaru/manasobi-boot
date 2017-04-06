package io.manasobi.controller.api.mng.cash.sh03001150;

import io.manasobi.controller.BaseController;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.parameter.RequestParams;
import io.manasobi.domain.mng.cash.sh03001150.Sh03001150;
import io.manasobi.domain.mng.cash.sh03001150.Sh03001150Service;
import io.manasobi.domain.mng.cash.sh03001150.Sh03001150VO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;

@RestController
@RequestMapping(value = "/api/v1/mng/cash/sh03001150")
public class Sh03001150Controller extends BaseController {

    @Inject
    private Sh03001150Service sh03001150Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh03001150> requestParams) {
        Page<Sh03001150> pages = sh03001150Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh03001150VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody Sh03001150VO sh03001150VO) {

        if (!StringUtils.isEmpty(sh03001150VO.getNoneProcessAmt()) && sh03001150VO.getNoneProcessAmt().contains(",")) {
            sh03001150VO.setNoneProcessAmt(StringUtils.replace(sh03001150VO.getNoneProcessAmt(), ",", ""));
        }
        if (!StringUtils.isEmpty(sh03001150VO.getDealAmt()) && sh03001150VO.getDealAmt().contains(",")) {
            sh03001150VO.setDealAmt(StringUtils.replace(sh03001150VO.getDealAmt(), ",", ""));
        }
        if (!StringUtils.isEmpty(sh03001150VO.getSendCommission()) && sh03001150VO.getSendCommission().contains(",")) {
            sh03001150VO.setSendCommission(StringUtils.replace(sh03001150VO.getSendCommission(), ",", ""));
        }
        if (!StringUtils.isEmpty(sh03001150VO.getRtnCommission()) && sh03001150VO.getRtnCommission().contains(",")) {
            sh03001150VO.setRtnCommission(StringUtils.replace(sh03001150VO.getRtnCommission(), ",", ""));
        }

        sh03001150VO.setDealDate(StringUtils.replace(sh03001150VO.getDealDate(), "-", ""));
        sh03001150VO.setProcessDate(StringUtils.replace(sh03001150VO.getProcessDate(), "-", ""));
        
        sh03001150Service.findOne(sh03001150VO);
        return ok();
    }

    @GetMapping(params = "nextSeqNo")
    public Sh03001150VO nextSeqNo(RequestParams<Sh03001150VO> requestParams) {
        return sh03001150Service.nextSeqNo(requestParams);
    }
}
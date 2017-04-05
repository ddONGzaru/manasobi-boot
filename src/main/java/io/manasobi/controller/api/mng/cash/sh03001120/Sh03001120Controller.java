package io.manasobi.controller.api.mng.cash.sh03001120;

import io.manasobi.controller.BaseController;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.parameter.RequestParams;
import io.manasobi.domain.mng.cash.sh03001120.Sh03001120;
import io.manasobi.domain.mng.cash.sh03001120.Sh03001120Service;
import io.manasobi.domain.mng.cash.sh03001120.Sh03001120VO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.inject.Inject;

@RestController
@RequestMapping(value = "/api/v1/mng/cash/sh03001120")
public class Sh03001120Controller extends BaseController {

    @Inject
    private Sh03001120Service sh03001120Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh03001120VO> requestParams) {
        Page<Sh03001120> pages = sh03001120Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh03001120VO.of(pages.getContent()), pages);
    }

    @GetMapping(params = "stextSend")
    public ApiResponse findAll(Sh03001120VO sh03001120VO) {
        sh03001120VO.setReferDate(StringUtils.replace(sh03001120VO.getReferDate(), "-", ""));
        sh03001120VO.setReferStartTime(StringUtils.replace(sh03001120VO.getReferStartTime(), ":", "")+"00");
        sh03001120VO.setReferEndTime(StringUtils.replace(sh03001120VO.getReferEndTime(), ":", "")+"00");
        sh03001120Service.findOne(sh03001120VO);
        return ok();
    }
}
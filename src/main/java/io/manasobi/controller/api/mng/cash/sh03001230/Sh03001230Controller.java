package io.manasobi.controller.api.mng.cash.sh03001230;

import com.bgf.shbank.domain.mng.cash.sh03001230.Sh03001230;
import com.bgf.shbank.domain.mng.cash.sh03001230.Sh03001230Service;
import com.bgf.shbank.domain.mng.cash.sh03001230.Sh03001230VO;
import io.onsemiro.controller.BaseController;
import io.onsemiro.core.api.response.ApiResponse;
import io.onsemiro.core.api.response.Responses;
import io.onsemiro.core.parameter.RequestParams;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;

@RestController
@RequestMapping(value = "/api/v1/mng/cash/sh03001230")
public class Sh03001230Controller extends BaseController {

    @Inject
    private Sh03001230Service sh03001230Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh03001230> requestParams) {
        Page<Sh03001230> pages = sh03001230Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh03001230VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody Sh03001230VO sh03001230VO) {

        if (!StringUtils.isEmpty(sh03001230VO.getRtnAmt()) && sh03001230VO.getRtnAmt().contains(",")) {
            sh03001230VO.setRtnAmt(StringUtils.replace(sh03001230VO.getRtnAmt(), ",", ""));
        }

        sh03001230VO.setRtnDate(StringUtils.replace(sh03001230VO.getRtnDate(), "-", ""));
        sh03001230VO.setConfirmDate(StringUtils.replace(sh03001230VO.getConfirmDate(), "-", ""));
        sh03001230VO.setDealDate(StringUtils.replace(sh03001230VO.getDealDate(), "-", ""));

        sh03001230Service.save(sh03001230VO);
        return ok();
    }
}
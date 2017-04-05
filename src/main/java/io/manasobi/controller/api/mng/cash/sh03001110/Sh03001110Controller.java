package io.manasobi.controller.api.mng.cash.sh03001110;

import com.bgf.shbank.controller.view.ExcelView;
import com.bgf.shbank.domain.mng.cash.sh03001110.Sh03001110;
import com.bgf.shbank.domain.mng.cash.sh03001110.Sh03001110Service;
import com.bgf.shbank.domain.mng.cash.sh03001110.Sh03001110VO;
import com.bgf.shbank.utils.DateUtils;
import com.google.common.collect.Maps;
import io.manasobi.controller.BaseController;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.parameter.RequestParams;
import io.manasobi.domain.mng.cash.sh03001110.Sh03001110;
import io.manasobi.domain.mng.cash.sh03001110.Sh03001110Service;
import io.manasobi.domain.mng.cash.sh03001110.Sh03001110VO;
import io.manasobi.utils.DateUtils;
import io.onsemiro.controller.BaseController;
import io.onsemiro.core.api.response.ApiResponse;
import io.onsemiro.core.api.response.Responses;
import io.onsemiro.core.parameter.RequestParams;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.View;

import javax.inject.Inject;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "/api/v1/mng/cash/sh03001110")
public class Sh03001110Controller extends BaseController {

    @Inject
    private Sh03001110Service sh03001110Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh03001110> requestParams) {
        Page<Sh03001110> pages = sh03001110Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh03001110VO.of(pages.getContent()), pages);
    }

    @GetMapping(params = "findPage")
    public Responses.PageResponse findPage(Pageable pageable, RequestParams<Sh03001110VO> requestParams) {
        Page<Sh03001110> pages = sh03001110Service.findPage(pageable, requestParams);
        return Responses.PageResponse.of(Sh03001110VO.of(pages.getContent()), pages);
    }

    @GetMapping("/m01")
    public Sh03001110VO findOne(Sh03001110VO sh03001110VO) {
        sh03001110VO.setBranchCode(sh03001110VO.getBranchCode());
        Sh03001110VO vo = sh03001110Service.findModal(sh03001110VO);
        return sh03001110Service.findOne(vo);
    }

    @GetMapping(params = "findAll")
    public ApiResponse findAll(Sh03001110VO requestParams) {
        sh03001110Service.findAll(requestParams);
        return ok();
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody List<Sh03001110> request) {
        sh03001110Service.save(request);
        return ok();
    }

    @GetMapping("/download")
    public View download(RequestParams<Sh03001110VO> requestParams, Model model) {

        List<Sh03001110> resultList = sh03001110Service.findExcel(requestParams);

        List<Sh03001110VO> voList = Sh03001110VO.of(resultList);

        Map<String, Object> params = Maps.newHashMap();
        params.put("vo", voList);

        model.addAttribute("vo", voList);
        model.addAttribute("txId", "sh03001110");
        model.addAttribute("fileName", "시재조회-" + DateUtils.getNow("yyyyMMdd_HHmmss"));

        return new ExcelView();
    }
}
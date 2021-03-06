package io.manasobi.controller.api.mng.error.sh01001120;

import io.manasobi.controller.view.ExcelView;
import io.manasobi.domain.mng.error.sh01001120.Sh01001120;
import io.manasobi.domain.mng.error.sh01001120.Sh01001120Service;
import io.manasobi.domain.mng.error.sh01001120.Sh01001120VO;
import io.manasobi.utils.DateUtils;
import com.google.common.collect.Maps;
import io.manasobi.controller.BaseController;
import io.manasobi.core.api.ApiException;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.code.ApiStatus;
import io.manasobi.core.parameter.RequestParams;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.View;

import javax.inject.Inject;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "/api/v1/mng/error/sh01001120")
public class Sh01001120Controller extends BaseController {

    @Inject
    private Sh01001120Service sh01001120Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh01001120VO> requestParams) {
        Page<Sh01001120> pages = sh01001120Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh01001120VO.of(pages.getContent()), pages);
    }

    @GetMapping("/download")
    public View download(RequestParams<Sh01001120VO> requestParams, Model model) {

        List<Sh01001120> resultList = sh01001120Service.find(requestParams);

        List<Sh01001120VO> voList = Sh01001120VO.of(resultList);

        Map<String, Object> params = Maps.newHashMap();
        params.put("vo", voList);

        model.addAttribute("vo", voList);
        model.addAttribute("txId", "sh01001120");
        model.addAttribute("fileName", "출동요청이력-" + DateUtils.getNow("yyyyMMdd_HHmmss"));

        return new ExcelView();
    }

    @GetMapping(params = "details")
    public Sh01001120VO details(RequestParams<Sh01001120VO> requestParams) {
        return sh01001120Service.findOne(requestParams);
    }

    @PutMapping
    @PostMapping
    public ApiResponse requestSelfCall(@RequestBody Sh01001120VO vo) {
        if(vo.getSelfCalleeGubun().equals("1")){
            // 자체출동 -> 수동
            ApiResponse apiResponse = sh01001120Service.sendAndReceive(vo);

            if (apiResponse.getStatus() == -1) {
                throw new ApiException(ApiStatus.SYSTEM_ERROR, apiResponse.getMessage());
            }

            return apiResponse;
        }else{
            // 자체출동 -> 민원값인 경우
            sh01001120Service.saveNewError(vo);
            return ok();
        }
    }
}
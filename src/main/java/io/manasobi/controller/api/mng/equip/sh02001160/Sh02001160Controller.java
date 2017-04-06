package io.manasobi.controller.api.mng.equip.sh02001160;

import io.manasobi.domain.mng.equip.sh02001160.Sh02001160;
import io.manasobi.domain.mng.equip.sh02001160.Sh02001160Service;
import io.manasobi.domain.mng.equip.sh02001160.Sh02001160VO;
import io.manasobi.utils.ModelMapperUtils;
import io.manasobi.controller.BaseController;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.parameter.RequestParams;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;

@RestController
@RequestMapping(value = "/api/v1/mng/equip/sh02001160")
public class Sh02001160Controller extends BaseController {

    @Inject
    private Sh02001160Service sh02001160Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh02001160> requestParams) {
        Page<Sh02001160> pages = sh02001160Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh02001160VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody Sh02001160VO sh02001160VO) {
        Sh02001160 sh02001160 = ModelMapperUtils.map(sh02001160VO, Sh02001160.class);


        String hireFee = sh02001160VO.getHireFee();
        if (!StringUtils.isEmpty(hireFee) && hireFee.contains(",")) {
            hireFee = StringUtils.replace(hireFee, ",", "");
            sh02001160.setHireFee(hireFee);
        }

        sh02001160Service.save(sh02001160);
        return ok();
    }
}
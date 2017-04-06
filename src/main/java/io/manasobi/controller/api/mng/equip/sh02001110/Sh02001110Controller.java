package io.manasobi.controller.api.mng.equip.sh02001110;

import io.manasobi.domain.mng.equip.sh02001110.Sh02001110;
import io.manasobi.domain.mng.equip.sh02001110.Sh02001110Service;
import io.manasobi.domain.mng.equip.sh02001110.Sh02001110VO;
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
@RequestMapping(value = "/api/v1/mng/equip/sh02001110")
public class Sh02001110Controller extends BaseController {

    @Inject
    private Sh02001110Service sh02001110Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh02001110> requestParams) {
        Page<Sh02001110> pages = sh02001110Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh02001110VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody Sh02001110VO sh02001110VO) {

        Sh02001110 sh02001110 = ModelMapperUtils.map(sh02001110VO, Sh02001110.class);

        String serviceFee = sh02001110VO.getServiceFee();
        if (!StringUtils.isEmpty(serviceFee) && serviceFee.contains(",")) {
            serviceFee = StringUtils.replace(serviceFee, ",", "");
            sh02001110.setServiceFee(serviceFee);
        }

        sh02001110Service.save(sh02001110);

        return ok();
    }

    @GetMapping(params = "details")
    public Sh02001110VO details(RequestParams<Sh02001110VO> requestParams) {
        return sh02001110Service.findOne(requestParams);
    }
}
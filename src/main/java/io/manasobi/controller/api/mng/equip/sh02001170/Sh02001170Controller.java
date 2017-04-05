package io.manasobi.controller.api.mng.equip.sh02001170;

import com.bgf.shbank.domain.mng.equip.sh02001170.Sh02001170;
import com.bgf.shbank.domain.mng.equip.sh02001170.Sh02001170Service;
import com.bgf.shbank.domain.mng.equip.sh02001170.Sh02001170VO;
import io.onsemiro.controller.BaseController;
import io.onsemiro.core.api.response.ApiResponse;
import io.onsemiro.core.api.response.Responses;
import io.onsemiro.core.parameter.RequestParams;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;
import java.util.List;

@RestController
@RequestMapping(value = "/api/v1/mng/equip/sh02001170")
public class Sh02001170Controller extends BaseController {

    @Inject
    private Sh02001170Service sh02001170Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh02001170> requestParams) {
        Page<Sh02001170> pages = sh02001170Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh02001170VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody List<Sh02001170> request) {
        sh02001170Service.save(request);
        return ok();
    }
}
package io.manasobi.controller.api.mng.equip.sh02001120;

import com.bgf.shbank.domain.mng.equip.sh02001120.Sh02001120;
import com.bgf.shbank.domain.mng.equip.sh02001120.Sh02001120Service;
import com.bgf.shbank.domain.mng.equip.sh02001120.Sh02001120VO;
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
@RequestMapping(value = "/api/v1/mng/equip/sh02001120")
public class Sh02001120Controller extends BaseController {

    @Inject
    private Sh02001120Service sh02001120Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh02001120> requestParams) {
        Page<Sh02001120> pages = sh02001120Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh02001120VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody List<Sh02001120> request) {
        sh02001120Service.save(request);
        return ok();
    }
}
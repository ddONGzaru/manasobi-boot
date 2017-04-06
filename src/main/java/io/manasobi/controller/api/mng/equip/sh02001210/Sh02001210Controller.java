package io.manasobi.controller.api.mng.equip.sh02001210;

import io.manasobi.domain.mng.equip.sh02001210.Sh02001210;
import io.manasobi.domain.mng.equip.sh02001210.Sh02001210Service;
import io.manasobi.domain.mng.equip.sh02001210.Sh02001210VO;
import io.manasobi.controller.BaseController;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.parameter.RequestParams;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;
import java.util.List;

@RestController
@RequestMapping(value = "/api/v1/mng/equip/sh02001210")
public class Sh02001210Controller extends BaseController {

    @Inject
    private Sh02001210Service sh02001210Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh02001210> requestParams) {
        Page<Sh02001210> pages = sh02001210Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh02001210VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody List<Sh02001210> request) {
        sh02001210Service.save(request);
        return ok();
    }
}
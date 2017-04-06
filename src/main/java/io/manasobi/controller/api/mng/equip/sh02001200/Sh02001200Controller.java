package io.manasobi.controller.api.mng.equip.sh02001200;

import io.manasobi.domain.mng.equip.sh02001200.Sh02001200;
import io.manasobi.domain.mng.equip.sh02001200.Sh02001200Service;
import io.manasobi.domain.mng.equip.sh02001200.Sh02001200VO;
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
@RequestMapping(value = "/api/v1/mng/equip/sh02001200")
public class Sh02001200Controller extends BaseController {

    @Inject
    private Sh02001200Service sh02001200Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh02001200> requestParams) {
        Page<Sh02001200> pages = sh02001200Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh02001200VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody List<Sh02001200> request) {
        sh02001200Service.save(request);
        return ok();
    }
}
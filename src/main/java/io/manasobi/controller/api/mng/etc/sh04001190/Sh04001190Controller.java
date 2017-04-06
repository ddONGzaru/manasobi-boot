package io.manasobi.controller.api.mng.etc.sh04001190;

import io.manasobi.domain.mng.etc.sh04001190.Sh04001190;
import io.manasobi.domain.mng.etc.sh04001190.Sh04001190Service;
import io.manasobi.domain.mng.etc.sh04001190.Sh04001190VO;
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
@RequestMapping(value = "/api/v1/mng/etc/sh04001190")
public class Sh04001190Controller extends BaseController {

    @Inject
    private Sh04001190Service sh04001190Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh04001190> requestParams) {
        Page<Sh04001190> pages = sh04001190Service.find(pageable, requestParams.getString("filter", ""));
        return Responses.PageResponse.of(Sh04001190VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody List<Sh04001190> request) {
        sh04001190Service.save(request);
        return ok();
    }
}
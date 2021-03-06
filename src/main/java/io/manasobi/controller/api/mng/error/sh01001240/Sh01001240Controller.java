package io.manasobi.controller.api.mng.error.sh01001240;

import io.manasobi.domain.mng.error.sh01001240.Sh01001240;
import io.manasobi.domain.mng.error.sh01001240.Sh01001240Service;
import io.manasobi.domain.mng.error.sh01001240.Sh01001240VO;
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
@RequestMapping(value = "/api/v1/mng/error/sh01001240")
public class Sh01001240Controller extends BaseController {

    @Inject
    private Sh01001240Service sh01001240Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh01001240> requestParams) {
        Page<Sh01001240> pages = sh01001240Service.find(pageable, requestParams.getString("filter", ""));
        return Responses.PageResponse.of(Sh01001240VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody List<Sh01001240> request) {
        sh01001240Service.save(request);
        return ok();
    }
}
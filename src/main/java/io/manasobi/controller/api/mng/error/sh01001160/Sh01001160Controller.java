package io.manasobi.controller.api.mng.error.sh01001160;

import com.bgf.shbank.domain.mng.error.sh01001160.Sh01001160;
import com.bgf.shbank.domain.mng.error.sh01001160.Sh01001160Service;
import com.bgf.shbank.domain.mng.error.sh01001160.Sh01001160VO;
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
@RequestMapping(value = "/api/v1/mng/error/sh01001160")
public class Sh01001160Controller extends BaseController {

    @Inject
    private Sh01001160Service sh01001160Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh01001160VO> requestParams) {
        Page<Sh01001160> pages = sh01001160Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh01001160VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody List<Sh01001160> request) {
        sh01001160Service.save(request);
        return ok();
    }
}
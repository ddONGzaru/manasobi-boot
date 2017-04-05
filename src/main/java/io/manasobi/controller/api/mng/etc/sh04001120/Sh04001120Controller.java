package io.manasobi.controller.api.mng.etc.sh04001120;

import com.bgf.shbank.domain.mng.etc.sh04001120.Sh04001120;
import com.bgf.shbank.domain.mng.etc.sh04001120.Sh04001120Service;
import com.bgf.shbank.domain.mng.etc.sh04001120.Sh04001120VO;
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
@RequestMapping(value = "/api/v1/mng/etc/sh04001120")
public class Sh04001120Controller extends BaseController {

    @Inject
    private Sh04001120Service sh04001120Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh04001120> requestParams) {
        Page<Sh04001120> pages = sh04001120Service.find(pageable, requestParams.getString("filter", ""));
        return Responses.PageResponse.of(Sh04001120VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody List<Sh04001120> request) {
        sh04001120Service.save(request);
        return ok();
    }
}
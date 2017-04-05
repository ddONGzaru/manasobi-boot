package io.manasobi.controller.api.mng.etc.sh04001170;

import com.bgf.shbank.domain.mng.etc.sh04001170.Sh04001170;
import com.bgf.shbank.domain.mng.etc.sh04001170.Sh04001170Service;
import com.bgf.shbank.domain.mng.etc.sh04001170.Sh04001170VO;
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
@RequestMapping(value = "/api/v1/mng/etc/sh04001170")
public class Sh04001170Controller extends BaseController {

    @Inject
    private Sh04001170Service sh04001170Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh04001170> requestParams) {
        Page<Sh04001170> pages = sh04001170Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh04001170VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody List<Sh04001170> request) {
        sh04001170Service.save(request);
        return ok();
    }
}
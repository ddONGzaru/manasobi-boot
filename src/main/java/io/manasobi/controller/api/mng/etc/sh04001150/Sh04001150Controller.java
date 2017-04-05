package io.manasobi.controller.api.mng.etc.sh04001150;

import com.bgf.shbank.domain.mng.etc.sh04001150.Sh04001150;
import com.bgf.shbank.domain.mng.etc.sh04001150.Sh04001150Service;
import com.bgf.shbank.domain.mng.etc.sh04001150.Sh04001150VO;
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
@RequestMapping(value = "/api/v1/mng/etc/sh04001150")
public class Sh04001150Controller extends BaseController {

    @Inject
    private Sh04001150Service sh04001150Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh04001150> requestParams) {
        Page<Sh04001150> pages = sh04001150Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh04001150VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody List<Sh04001150> request) {
        sh04001150Service.save(request);
        return ok();
    }
}
package io.manasobi.controller.api.mng.etc.sh04001180;

import com.bgf.shbank.domain.mng.etc.sh04001180.Sh04001180;
import com.bgf.shbank.domain.mng.etc.sh04001180.Sh04001180Service;
import com.bgf.shbank.domain.mng.etc.sh04001180.Sh04001180VO;
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
@RequestMapping(value = "/api/v1/mng/etc/sh04001180")
public class Sh04001180Controller extends BaseController {

    @Inject
    private Sh04001180Service sh04001180Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh04001180> requestParams) {
        Page<Sh04001180> pages = sh04001180Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh04001180VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody List<Sh04001180> request) {
        sh04001180Service.save(request);
        return ok();
    }
}
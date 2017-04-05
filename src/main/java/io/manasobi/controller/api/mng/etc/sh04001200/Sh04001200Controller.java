package io.manasobi.controller.api.mng.etc.sh04001200;

import com.bgf.shbank.domain.mng.etc.sh04001200.Sh04001200;
import com.bgf.shbank.domain.mng.etc.sh04001200.Sh04001200Service;
import com.bgf.shbank.domain.mng.etc.sh04001200.Sh04001200VO;
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
@RequestMapping(value = "/api/v1/mng/etc/sh04001200")
public class Sh04001200Controller extends BaseController {

    @Inject
    private Sh04001200Service sh04001200Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh04001200> requestParams) {
        Page<Sh04001200> pages = sh04001200Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh04001200VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody List<Sh04001200> request) {
        sh04001200Service.save(request);
        return ok();
    }
}
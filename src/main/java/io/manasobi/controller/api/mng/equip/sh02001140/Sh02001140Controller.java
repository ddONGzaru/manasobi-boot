package io.manasobi.controller.api.mng.equip.sh02001140;

import com.bgf.shbank.domain.mng.equip.sh02001140.Sh02001140;
import com.bgf.shbank.domain.mng.equip.sh02001140.Sh02001140Service;
import com.bgf.shbank.domain.mng.equip.sh02001140.Sh02001140VO;
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
@RequestMapping(value = "/api/v1/mng/equip/sh02001140")
public class Sh02001140Controller extends BaseController {

    @Inject
    private Sh02001140Service sh02001140Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh02001140> requestParams) {
        Page<Sh02001140> pages = sh02001140Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh02001140VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody List<Sh02001140> request) {
        sh02001140Service.save(request);
        return ok();
    }
}
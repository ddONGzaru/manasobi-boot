package io.manasobi.controller.api.mng.etc.sh04001140;

import com.bgf.shbank.domain.mng.etc.sh04001140.Sh04001140;
import com.bgf.shbank.domain.mng.etc.sh04001140.Sh04001140Service;
import com.bgf.shbank.domain.mng.etc.sh04001140.Sh04001140VO;
import io.onsemiro.controller.BaseController;
import io.onsemiro.core.api.ApiException;
import io.onsemiro.core.api.response.ApiResponse;
import io.onsemiro.core.api.response.Responses;
import io.onsemiro.core.code.ApiStatus;
import io.onsemiro.core.parameter.RequestParams;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;

@RestController
@RequestMapping(value = "/api/v1/mng/etc/sh04001140")
public class Sh04001140Controller extends BaseController {

    @Inject
    private Sh04001140Service sh04001140Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh04001140> requestParams) {
        Page<Sh04001140> pages = sh04001140Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh04001140VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody Sh04001140VO sh04001140VO) {


        ApiResponse apiResponse = sh04001140Service.sendAndReceive(sh04001140VO);

        if (apiResponse.getStatus() == -1) {
            throw new ApiException(ApiStatus.SYSTEM_ERROR, apiResponse.getMessage());
        }

        return apiResponse;
    }
}
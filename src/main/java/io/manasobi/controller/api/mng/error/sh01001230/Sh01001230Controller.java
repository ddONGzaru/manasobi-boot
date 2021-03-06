package io.manasobi.controller.api.mng.error.sh01001230;

import io.manasobi.domain.mng.error.sh01001230.Sh01001230;
import io.manasobi.domain.mng.error.sh01001230.Sh01001230Service;
import io.manasobi.domain.mng.error.sh01001230.Sh01001230VO;
import io.manasobi.utils.ModelMapperUtils;
import io.manasobi.controller.BaseController;
import io.manasobi.core.api.ApiException;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.code.ApiStatus;
import io.manasobi.core.parameter.RequestParams;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;

@RestController
@RequestMapping(value = "/api/v1/mng/error/sh01001230")
public class Sh01001230Controller extends BaseController {

    @Inject
    private Sh01001230Service sh01001230Service;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh01001230VO> requestParams) {
        Page<Sh01001230> pages = sh01001230Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh01001230VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody Sh01001230VO vo) {
        ApiResponse apiResponse = sh01001230Service.sendAndReceive(vo);

        if (apiResponse.getStatus() == -1) {
            throw new ApiException(ApiStatus.SYSTEM_ERROR, apiResponse.getMessage());
        }

        saveSh01001230(vo);
        return apiResponse;
    }

    public void saveSh01001230(Sh01001230VO vo) {
        Sh01001230 sh01001230 = ModelMapperUtils.map(vo, Sh01001230.class);
        // 동지다발장애목록관리에 조치결과정보 Update
        sh01001230Service.save(sh01001230);
    }
}
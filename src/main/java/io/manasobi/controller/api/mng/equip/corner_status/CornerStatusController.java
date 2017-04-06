package io.manasobi.controller.api.mng.equip.corner_status;

import io.manasobi.domain.mng.equip.corner_status.CornerStatus;
import io.manasobi.domain.mng.equip.corner_status.CornerStatusService;
import io.manasobi.domain.mng.equip.corner_status.CornerStatusVO;
import io.manasobi.utils.ModelMapperUtils;
import io.manasobi.controller.BaseController;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.parameter.RequestParams;
import io.manasobi.utils.CommonCodeUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;

@RestController
@RequestMapping(value = "/api/v1/mng/equip/corner_status")
public class CornerStatusController extends BaseController {

    @Inject
    private CornerStatusService cornerStatusService;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<CornerStatus> requestParams) {
        Page<CornerStatus> pages = cornerStatusService.find(pageable, requestParams);
        return Responses.PageResponse.of(CornerStatusVO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody CornerStatusVO cornerStatusVO) {

        CornerStatus cornerStatus = ModelMapperUtils.map(cornerStatusVO, CornerStatus.class);
        if (cornerStatusVO.getJisaCode() == null || cornerStatusVO.getJisaCode().isEmpty()) {
            cornerStatus.setJisaCode(CommonCodeUtils.getCode("JISA_CODE", cornerStatusVO.getJisaCodeName()));
        }


        cornerStatusService.save(cornerStatus);

        return ok();
    }
}
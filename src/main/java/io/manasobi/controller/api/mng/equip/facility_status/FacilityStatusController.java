package io.manasobi.controller.api.mng.equip.facility_status;

import com.bgf.shbank.domain.mng.equip.facility_status.FacilityStatus;
import com.bgf.shbank.domain.mng.equip.facility_status.FacilityStatusService;
import com.bgf.shbank.domain.mng.equip.facility_status.FacilityStatusVO;
import com.bgf.shbank.utils.ModelMapperUtils;
import io.onsemiro.controller.BaseController;
import io.onsemiro.core.api.response.ApiResponse;
import io.onsemiro.core.api.response.Responses;
import io.onsemiro.core.parameter.RequestParams;
import io.onsemiro.utils.CommonCodeUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;

@RestController
@RequestMapping(value = "/api/v1/mng/equip/facility_status")
public class FacilityStatusController extends BaseController {

    @Inject
    private FacilityStatusService facilityStatusService;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<FacilityStatus> requestParams) {
        Page<FacilityStatus> pages = facilityStatusService.find(pageable, requestParams);
        return Responses.PageResponse.of(FacilityStatusVO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody FacilityStatusVO facilityStatusVO) {

        FacilityStatus facilityStatus = ModelMapperUtils.map(facilityStatusVO, FacilityStatus.class);

        if (facilityStatusVO.getJisaCode() == null || facilityStatusVO.getJisaCode().isEmpty()) {
            facilityStatus.setJisaCode(CommonCodeUtils.getCode("JISA_CODE", facilityStatusVO.getJisaCodeName()));
        }
        String hireFee = facilityStatusVO.getHireFee();
        if (!StringUtils.isEmpty(hireFee) && hireFee.contains(",")) {
            hireFee = StringUtils.replace(hireFee, ",", "");
            facilityStatus.setHireFee(hireFee);
        }

        facilityStatusService.save(facilityStatus);
        return ok();
    }
}
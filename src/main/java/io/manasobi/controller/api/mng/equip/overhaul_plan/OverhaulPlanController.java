package io.manasobi.controller.api.mng.equip.overhaul_plan;

import io.manasobi.domain.mng.equip.overhaul_plan.OverhaulPlan;
import io.manasobi.domain.mng.equip.overhaul_plan.OverhaulPlanService;
import io.manasobi.domain.mng.equip.overhaul_plan.OverhaulPlanVO;
import io.manasobi.utils.DateUtils;
import io.manasobi.utils.ModelMapperUtils;
import com.google.common.collect.Lists;
import io.manasobi.controller.BaseController;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.parameter.RequestParams;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;
import java.io.IOException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

@RestController
@RequestMapping(value = "/api/v1/mng/equip/overhaul_plan")
public class OverhaulPlanController extends BaseController {

    @Inject
    private OverhaulPlanService overhaulPlanService;

    @GetMapping
    public Responses.ListResponse list(RequestParams<OverhaulPlan> requestParams) {
        List<OverhaulPlan> lists = overhaulPlanService.find(requestParams);
        return Responses.ListResponse.of(OverhaulPlanVO.of(lists));
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody OverhaulPlanVO vo) {
        List<OverhaulPlan> request = Lists.newArrayList();

        Timestamp from = DateUtils.convertToTimestamp(vo.getOverhaulDateFrom(), "yyyy-MM-dd");
        Timestamp to = DateUtils.convertToTimestamp(vo.getOverhaulDateTo(), "yyyy-MM-dd");

        for (LocalDateTime start = from.toLocalDateTime(); start.isBefore(to.toLocalDateTime().plusDays(1)); start = start.plusDays(1) ) {
            OverhaulPlan overhaulPlan = ModelMapperUtils.map(vo, OverhaulPlan.class);
            String date  = DateUtils.convertToString(start, "yyyy-MM-dd");
            overhaulPlan.setOverhaulDate(DateUtils.convertToTimestamp(date, "yyyy-MM-dd"));
            request.add(overhaulPlan);
        }

        overhaulPlanService.save(request);
        return ok();
    }

    @PutMapping(value = "/delete")
    public ApiResponse delete(@RequestBody OverhaulPlanVO vo) throws IOException {
        Timestamp from = DateUtils.convertToTimestamp(vo.getOverhaulDateFrom(), "yyyy-MM-dd");
        Timestamp to = DateUtils.convertToTimestamp(vo.getOverhaulDateTo(), "yyyy-MM-dd");

        for (LocalDateTime start = from.toLocalDateTime(); start.isBefore(to.toLocalDateTime().plusDays(1)); start = start.plusDays(1) ) {
            OverhaulPlan overhaulPlan = ModelMapperUtils.map(vo, OverhaulPlan.class);
            String date  = DateUtils.convertToString(start, "yyyy-MM-dd");
            overhaulPlan.setOverhaulDate(DateUtils.convertToTimestamp(date, "yyyy-MM-dd"));
            if (overhaulPlanService.exists(overhaulPlan.getId())) {
                overhaulPlanService.delete(overhaulPlan.getId());
            }
        }

        return ok();
    }
}
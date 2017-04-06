package io.manasobi.controller.view.mng.equip.overhaul_plan;

import io.manasobi.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class OverhaulPlanViewRouter extends BaseController {

    @GetMapping("/mng/equip/overhaul_plan")
    public String view() {
        return "/mng/equip/overhaul_plan";
    }
}


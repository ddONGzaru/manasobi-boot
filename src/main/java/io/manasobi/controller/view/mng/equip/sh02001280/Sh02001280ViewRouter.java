package io.manasobi.controller.view.mng.equip.sh02001280;

import io.manasobi.controller.BaseController;
import io.manasobi.utils.CommonCodeUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Sh02001280ViewRouter extends BaseController {

    @GetMapping("/mng/equip/sh02001280")
    public String view(ModelMap model) {

        model.addAttribute("jisa", CommonCodeUtils.get("JISA_CODE"));
        model.addAttribute("corner", CommonCodeUtils.get("CORNER_TERMINAL_CODE"));
        model.addAttribute("branch", CommonCodeUtils.get("BRANCH_CODE"));
        return "/mng/equip/sh02001280";
    }
}


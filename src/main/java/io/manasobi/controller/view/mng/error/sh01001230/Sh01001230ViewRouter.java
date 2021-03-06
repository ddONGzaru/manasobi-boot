package io.manasobi.controller.view.mng.error.sh01001230;

import io.manasobi.controller.BaseController;
import io.manasobi.utils.CommonCodeUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Sh01001230ViewRouter extends BaseController {

    @GetMapping("/mng/error/sh01001230")
    public String view(ModelMap model) {

        model.addAttribute("jisaCode", CommonCodeUtils.get("JISA_CODE"));
        model.addAttribute("handleStatus", CommonCodeUtils.get("HANDLE_STATUS"));
        return "/mng/error/sh01001230";
    }
}


package io.manasobi.controller.view.mng.error.sh01001180;

import io.manasobi.controller.BaseController;
import io.manasobi.utils.CommonCodeUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Sh01001180ViewRouter extends BaseController {

    @GetMapping("/mng/error/sh01001180")
    public String view(ModelMap model) {

        model.addAttribute("jisaCode", CommonCodeUtils.get("JISA_CODE"));
        return "/mng/error/sh01001180";
    }
}


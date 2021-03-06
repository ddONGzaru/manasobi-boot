package io.manasobi.controller.view.mng.error.sh01001190;

import io.manasobi.controller.BaseController;
import io.manasobi.utils.CommonCodeUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Sh01001190ViewRouter extends BaseController {

    @GetMapping("/mng/error/sh01001190")
    public String view(ModelMap model) {

        model.addAttribute("branch", CommonCodeUtils.get("BRANCH_CODE"));
        model.addAttribute("jisa", CommonCodeUtils.get("JISA_CODE"));
        return "/mng/error/sh01001190";
    }
}


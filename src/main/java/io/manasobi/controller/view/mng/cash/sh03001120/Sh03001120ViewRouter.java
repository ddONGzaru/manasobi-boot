package io.manasobi.controller.view.mng.cash.sh03001120;

import io.manasobi.controller.BaseController;
import io.manasobi.utils.CommonCodeUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Sh03001120ViewRouter extends BaseController {

    @GetMapping("/mng/cash/sh03001120")
    public String view(ModelMap model) {

        model.addAttribute("jisaCode", CommonCodeUtils.get("JISA_CODE"));

        return "/mng/cash/sh03001120";
    }
}


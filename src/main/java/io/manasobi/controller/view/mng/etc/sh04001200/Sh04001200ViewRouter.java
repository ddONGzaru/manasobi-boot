package io.manasobi.controller.view.mng.etc.sh04001200;

import io.manasobi.controller.BaseController;
import io.manasobi.utils.CommonCodeUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Sh04001200ViewRouter extends BaseController {

    @GetMapping("/mng/etc/sh04001200")
    public String view(ModelMap model) {

        model.addAttribute("jisaCode", CommonCodeUtils.get("JISA_CODE"));
        return "/mng/etc/sh04001200";
    }
}


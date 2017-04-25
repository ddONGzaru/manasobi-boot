package io.manasobi.controller.view.mng.error.minwon_mng;

import io.manasobi.controller.BaseController;
import io.manasobi.core.code.Constants;
import io.manasobi.utils.CommonCodeUtils;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MinwonMngViewRouter extends BaseController {

    @Secured(Constants.Security.ROLE_ADMIN)
    @GetMapping("/mng/error/minwon_mng")
    public String view(ModelMap model) {

        model.addAttribute("jisaCode", CommonCodeUtils.get("JISA_CODE"));
        model.addAttribute("minwonType", CommonCodeUtils.get("MINWON_TYPE"));
        model.addAttribute("minwonStatus", CommonCodeUtils.get("MINWON_STATUS"));

        return "/mng/error/minwon_mng";
    }
}


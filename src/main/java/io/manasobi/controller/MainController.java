package io.manasobi.controller;

import io.manasobi.core.code.Types;
import io.manasobi.core.domain.user.SessionUser;
import io.manasobi.utils.CommonCodeUtils;
import io.manasobi.utils.PhaseUtils;
import io.manasobi.utils.SessionUtils;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created by tw.jang on 2016-12-28.
 */
@Slf4j
@Controller
public class MainController {

    @Value("${appConfig.app-name}")
    private String appName;

    private String commonCodeJson;

    @GetMapping("/")
    public String index() {
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String login(ModelMap model) {

        SessionUser sessionUser = SessionUtils.getCurrentUser();

        if (sessionUser != null) {
            if (sessionUser.getUserStatus() == Types.UserStatus.ACCOUNT_LOCK) {
                model.addAttribute("userCd", sessionUser.getUserCd());
                return "/change-pwd";
            }
        }

        return SessionUtils.isLoggedIn() ? "redirect:/" + appName : "/login";
    }

    @GetMapping("/main")
    public String main() {
        return "redirect:/" + appName;
    }

    @GetMapping("/${appConfig.app-name}")
    public String app(Model model) {

        SessionUser sessionUser = SessionUtils.getCurrentUser();

        if (sessionUser.getUserStatus() == Types.UserStatus.ACCOUNT_LOCK) {
            model.addAttribute("userCd", sessionUser.getUserCd());
            return "/change-pwd";
        }

        if (StringUtils.isEmpty(commonCodeJson)) {
            commonCodeJson = CommonCodeUtils.getAllByJson();
        }

        model.addAttribute("commonCodeJson", commonCodeJson);
        model.addAttribute("isDevelopmentMode", PhaseUtils.isDevelopmentMode());
        model.addAttribute("axbody_class", "frame-set");

        return "/main";
    }

}

package io.manasobi.controller.view.mng.etc.sh04001110;

import io.manasobi.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Sh04001110ViewRouter extends BaseController {

    @GetMapping("/mng/etc/sh04001110")
    public String view() {
        return "/mng/etc/sh04001110";
    }
}


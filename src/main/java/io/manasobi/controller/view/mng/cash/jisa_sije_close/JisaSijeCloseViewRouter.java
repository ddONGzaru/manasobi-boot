package io.manasobi.controller.view.mng.cash.jisa_sije_close;

import io.manasobi.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class JisaSijeCloseViewRouter extends BaseController {

    @GetMapping("/mng/cash/jisa_sije_close")
    public String view() {
        return "/mng/cash/jisa_sije_close";
    }
}


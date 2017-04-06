package io.manasobi.controller.view.mng.cash.sh03001200;

import io.manasobi.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Sh03001200ViewRouter extends BaseController {

    @GetMapping("/mng/cash/sh03001200")
    public String view() {
        return "/mng/cash/sh03001200";
    }
}


package io.manasobi.controller.view.mng.equip.sh05001130;

import io.manasobi.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Sh05001130ViewRouter extends BaseController {

    @GetMapping("/mng/equip/sh05001130")
    public String view() {
        return "/mng/equip/sh05001130";
    }
}


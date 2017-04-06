package io.manasobi.controller.view.mng.equip.sh05001110;

import io.manasobi.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Sh05001110ViewRouter extends BaseController {

    @GetMapping("/mng/equip/sh05001110")
    public String view() {
        return "/mng/equip/sh05001110";
    }
}


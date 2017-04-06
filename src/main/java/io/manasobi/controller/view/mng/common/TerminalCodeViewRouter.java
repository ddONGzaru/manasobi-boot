package io.manasobi.controller.view.mng.common;

import io.manasobi.controller.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class TerminalCodeViewRouter extends BaseController {
    @PostMapping("/mng/common/search-terminal-modal")
    public String viewModal() {
        return "/mng/common/search-terminal-modal";
    }
}


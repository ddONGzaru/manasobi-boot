package io.manasobi.controller.view.mng.cash.sh03001110;

import io.manasobi.domain.mng.cash.sh03001110.Sh03001110VO;
import io.manasobi.controller.BaseController;
import io.manasobi.utils.CommonCodeUtils;
import io.manasobi.utils.DateUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.time.LocalDateTime;

@Controller
public class Sh03001110ViewRouter extends BaseController {

    @GetMapping("/mng/cash/sh03001110")
    public String view(ModelMap model) {

        model.addAttribute("jisaCode", CommonCodeUtils.get("JISA_CODE"));

        return "/mng/cash/sh03001110";
    }

    @PostMapping("/mng/cash/sh03001110/m01")
    public String viewModal(Sh03001110VO vo, ModelMap model) {

//        model.addAttribute("referDate", vo.getReferDate().substring(0,10));
        LocalDateTime referDate = LocalDateTime.now();
        model.addAttribute("referDate", DateUtils.convertToString(referDate, "yyyy-MM-dd"));
        model.addAttribute("jisa", vo.getJisaCode());
        model.addAttribute("branch", vo.getBranchCode());
        model.addAttribute("terminalNo", vo.getTerminalNo());

        return "/mng/cash/sh03001110_m01";
    }

}


package io.manasobi.controller.api.mng.equip.terminal_status;

import io.manasobi.domain.mng.equip.terminal_status.TerminalStatus;
import io.manasobi.domain.mng.equip.terminal_status.TerminalStatusService;
import io.manasobi.domain.mng.equip.terminal_status.TerminalStatusVO;
import io.manasobi.utils.ModelMapperUtils;
import io.manasobi.controller.BaseController;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.parameter.RequestParams;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;

@RestController
@RequestMapping(value = "/api/v1/mng/equip/terminal_status")
public class TerminalStatusController extends BaseController {

    @Inject
    private TerminalStatusService terminalStatusService;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<TerminalStatus> requestParams) {
        Page<TerminalStatus> pages = terminalStatusService.find(pageable, requestParams);
        return Responses.PageResponse.of(TerminalStatusVO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody TerminalStatusVO terminalStatusVO) {

        TerminalStatus terminalStatus = ModelMapperUtils.map(terminalStatusVO, TerminalStatus.class);
        String modelCode = terminalStatusVO.getModelCode();
        terminalStatus.setTerminalCorpCode(modelCode.substring(0, 1));
        terminalStatus.setModelCode(modelCode.substring(1, 4));

        terminalStatusService.save(terminalStatus);
        return ok();
    }
}
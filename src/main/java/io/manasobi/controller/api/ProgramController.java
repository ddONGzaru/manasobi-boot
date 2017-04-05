package io.manasobi.controller.api;

import io.manasobi.controller.BaseController;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.domain.program.Program;
import io.manasobi.core.domain.program.ProgramService;
import io.manasobi.core.domain.program.ProgramVO;
import io.manasobi.core.parameter.RequestParams;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;
import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping(value = "/api/v1/program")
public class ProgramController extends BaseController {

    @Inject
    private ProgramService programService;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Program> requestParams) {
        Page<Program> page = programService.get(pageable, requestParams);
        return Responses.PageResponse.of(ProgramVO.of(page.getContent()), page);
    }

    @GetMapping(params = "showAll")
    public Responses.ListResponse list(RequestParams requestParams) {
        List<Program> programs = programService.get(requestParams);
        return Responses.ListResponse.of(programs);
    }

    @PutMapping
    public ApiResponse save(@Valid @RequestBody List<Program> request) {
        programService.saveProgram(request);
        return ok();
    }
}

package io.manasobi.controller.api.mng.error.error_handle_mng;

import io.manasobi.domain.mng.error.error_handle_mng.ErrorHandleMng;
import io.manasobi.domain.mng.error.error_handle_mng.ErrorHandleMngService;
import io.manasobi.domain.mng.error.error_handle_mng.ErrorHandleMngVO;
import io.manasobi.utils.ModelMapperUtils;
import io.manasobi.controller.BaseController;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.parameter.RequestParams;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.time.LocalDateTime;

@RestController
@RequestMapping(value = "/api/v1/mng/error/error_handle_mng")
public class ErrorHandleMngController extends BaseController {

    @Inject
    private ErrorHandleMngService errorHandleMngService;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<ErrorHandleMng> requestParams) {
        Page<ErrorHandleMng> pages = errorHandleMngService.find(pageable, requestParams.getString("filter", ""));
        return Responses.PageResponse.of(ErrorHandleMngVO.of(pages.getContent()), pages);
    }

  /*  @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody List<ErrorHandleMng> request) {
        errorHandleMngService.save(request);
        return ok();
    }*/

    //@PutMapping("/api/v1/mng/error/error_handle_mng/save_error_msg")
    @PutMapping
    @PostMapping
    public ApiResponse saveErrorHandleMng(@RequestBody ErrorHandleMngVO request) {
        ErrorHandleMng errorHandleMng = ModelMapperUtils.map(request, ErrorHandleMng.class);
        errorHandleMng.setLastModifyDatetime(Timestamp.valueOf(LocalDateTime.now()));

        errorHandleMngService.save(errorHandleMng);
        return ok();
    }
}
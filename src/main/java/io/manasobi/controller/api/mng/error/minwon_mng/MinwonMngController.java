package io.manasobi.controller.api.mng.error.minwon_mng;

import io.manasobi.domain.mng.error.minwon_mng.MinwonMng;
import io.manasobi.domain.mng.error.minwon_mng.MinwonMngService;
import io.manasobi.domain.mng.error.minwon_mng.MinwonMngVO;
import io.manasobi.utils.DateUtils;
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
@RequestMapping(value = "/api/v1/mng/error/minwon_mng")
public class MinwonMngController extends BaseController {

    @Inject
    private MinwonMngService minwonMngService;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<MinwonMng> requestParams) {
        Page<MinwonMng> pages = minwonMngService.find(pageable, requestParams);
        return Responses.PageResponse.of(MinwonMngVO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody MinwonMngVO request) {
        MinwonMng minwonMng = ModelMapperUtils.map(request, MinwonMng.class);

        if(minwonMng.getRegDatetime() == null) {
            minwonMng.setRegDatetime(Timestamp.valueOf(DateUtils.convertToString(LocalDateTime.now(), DateUtils.DATE_TIME_PATTERN)));
        }

        minwonMng.setUpdateDatetime(Timestamp.valueOf(DateUtils.convertToString(LocalDateTime.now(), DateUtils.DATE_TIME_PATTERN)));

        minwonMngService.save(minwonMng);
        return ok();
    }
}
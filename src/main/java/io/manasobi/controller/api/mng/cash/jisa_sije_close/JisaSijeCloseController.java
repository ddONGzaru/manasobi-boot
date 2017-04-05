package io.manasobi.controller.api.mng.cash.jisa_sije_close;

import com.google.common.collect.Lists;
import io.manasobi.controller.BaseController;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.parameter.RequestParams;
import io.manasobi.domain.mng.cash.jisa_sije_close.JisaSijeClose;
import io.manasobi.domain.mng.cash.jisa_sije_close.JisaSijeCloseService;
import io.manasobi.domain.mng.cash.jisa_sije_close.JisaSijeCloseVO;
import io.manasobi.utils.DateUtils;
import io.manasobi.utils.ModelMapperUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

@RestController
@RequestMapping(value = "/api/v1/mng/cash/jisa_sije_close")
public class JisaSijeCloseController extends BaseController {

    @Inject
    private JisaSijeCloseService jisaSijeCloseService;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<JisaSijeClose> requestParams) {
        Page<JisaSijeClose> pages = jisaSijeCloseService.find(pageable, requestParams);
        return Responses.PageResponse.of(JisaSijeCloseVO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody List<JisaSijeCloseVO> requestParams) {

        List<JisaSijeClose> request = Lists.newArrayList();
        JisaSijeClose jisaSijeClose = null;

        for (JisaSijeCloseVO jisaSijeCloseVO : requestParams) {
            jisaSijeClose = ModelMapperUtils.map(jisaSijeCloseVO, JisaSijeClose.class);
            jisaSijeClose.setTxId(Timestamp.valueOf(LocalDateTime.now()));
            jisaSijeClose.setCloseDate(DateUtils.convertToTimestamp(jisaSijeCloseVO.getCloseDate(),"yyyy-MM-dd"));
            request.add(jisaSijeClose);
        }
        jisaSijeCloseService.save(request);
        return ok();
    }
}
package io.manasobi.controller.api;

import io.manasobi.controller.BaseController;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.domain.code.CommonCode;
import io.manasobi.core.domain.code.CommonCodeService;
import io.manasobi.core.domain.code.CommonCodeVO;
import io.manasobi.core.parameter.RequestParams;
import io.manasobi.utils.CommonCodeUtils;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import javax.inject.Inject;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/v1/common-code")
public class CommonCodeController extends BaseController {

    @Inject
    private CommonCodeService basicCodeService;

    @ApiImplicitParams({
        @ApiImplicitParam(name = "groupCd", dataType = "String", paramType = "query", value = "분류 코드"),
        @ApiImplicitParam(name = "useYn",   dataType = "String", paramType = "query", value = "사용여부 (Y/N)"),
        @ApiImplicitParam(name = "filter",  dataType = "String", paramType = "query", value = "검색어")
    })
    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<CommonCode> requestParams) {

        Page<CommonCode> page = basicCodeService.find(pageable, requestParams);
        return Responses.PageResponse.of(CommonCodeVO.of(page.getContent()), page);
    }

    @PutMapping
    public ApiResponse save(@RequestBody List<CommonCode> basicCodes) {
        basicCodeService.saveCommonCode(basicCodes);
        return ok();
    }

    @GetMapping("/getAllByMap")
    public Map<String, List<CommonCode>> getAllByMap() {
        return CommonCodeUtils.getAllByMap();
    }
}
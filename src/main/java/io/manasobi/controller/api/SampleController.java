package io.manasobi.controller.api;

import io.manasobi.controller.BaseController;
import io.manasobi.core.api.ApiException;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.domain.file.AX5File;
import io.manasobi.core.domain.sample.child.ChildSample;
import io.manasobi.core.domain.sample.child.ChildSampleService;
import io.manasobi.core.domain.sample.child.ChildSampleVO;
import io.manasobi.core.domain.sample.parent.ParentSample;
import io.manasobi.core.domain.sample.parent.ParentSampleService;
import io.manasobi.core.domain.sample.parent.ParentSampleVO;
import io.manasobi.core.parameter.RequestParams;
import io.manasobi.utils.ModelMapperUtils;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.inject.Inject;
import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping(value = "/api/v1/sample")
public class SampleController extends BaseController {

    @Inject
    private ParentSampleService parentService;

    @Inject
    private ChildSampleService childService;

    @GetMapping("/parent")
    public Responses.PageResponse parentList(Pageable pageable, RequestParams<ParentSampleVO> requestParams) {
        Page<ParentSample> pages = parentService.find(pageable, requestParams.getString("filter", ""));
        return Responses.PageResponse.of(ParentSampleVO.of(pages.getContent()), pages);
    }

    @PutMapping("/parent")
    @PostMapping("/parent")
    public ApiResponse parentSave(@RequestBody List<ParentSampleVO> list) {
        List<ParentSample> parentSampleList = ModelMapperUtils.mapList(list, ParentSample.class);
        parentService.save(parentSampleList);
        return ok();
    }

    @PostMapping("/upload")
    public AX5File upload(MultipartFile file, ParentSampleVO vo) throws IOException {

        String a = "123";

        String bbb;

        throw new ApiException("dddddafdsafdsafdasgfasd1111111");

        //return new AX5File();
    }

    @DeleteMapping("/parent")
    public ApiResponse parentDelete(@RequestParam(value = "key") List<String> keys) {
        parentService.deleteByKeys(keys);
        return ok();
    }

    @GetMapping("/child")
    public Responses.PageResponse childList(@RequestParam(defaultValue = "") String parentKey, Pageable pageable) {
        Page<ChildSample> pages = null;
        try {
            pages = childService.findByParentKeyWithPaging(parentKey, pageable);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return Responses.PageResponse.of(ChildSampleVO.of(pages.getContent()), pages);
    }

    @PutMapping("/child")
    @PostMapping("/child")
    public ApiResponse childSave(@RequestBody List<ChildSampleVO> list) {
        List<ChildSample> childSampleList = ModelMapperUtils.mapList(list, ChildSample.class);
        childService.save(childSampleList);
        return ok();
    }

    @DeleteMapping("/child")
    public ApiResponse childDelete(@RequestParam(value = "key") List<String> keys) {
        childService.deleteByKeys(keys);
        return ok();
    }
}

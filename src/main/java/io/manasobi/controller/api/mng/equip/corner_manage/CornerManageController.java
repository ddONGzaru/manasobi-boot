package io.manasobi.controller.api.mng.equip.corner_manage;

import io.manasobi.controller.BaseController;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.domain.file.AX5File;
import io.manasobi.core.domain.file.FileUploadService;
import io.manasobi.core.parameter.RequestParams;
import io.manasobi.domain.mng.equip.corner_manage.CornerManage;
import io.manasobi.domain.mng.equip.corner_manage.CornerManageService;
import io.manasobi.domain.mng.equip.corner_manage.CornerManageVO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping(value = "/api/v1/mng/equip/corner_manage")
public class CornerManageController extends BaseController {

    @Inject
    private CornerManageService cornerManageService;

    @Inject
    private FileUploadService fileUploadService;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<CornerManage> requestParams) {
        Page<CornerManage> pages = cornerManageService.find(pageable, requestParams);
        return Responses.PageResponse.of(CornerManageVO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody List<CornerManage> request) {
        cornerManageService.save(request);
        return ok();
    }

    @PostMapping(value = "/upload")
    public AX5File upload(@RequestParam MultipartFile file) throws IOException {
        return fileUploadService.upload(file);
    }

    @PostMapping(value = "/delete")
    public ApiResponse delete(@RequestBody List<AX5File> files) throws IOException {
        fileUploadService.delete(files);
        return ok();
    }

    @GetMapping(value = "/download")
    @ResponseBody
    public ResponseEntity<byte[]> download(HttpServletRequest request, @RequestParam String id) throws IOException {
        return fileUploadService.download(request, id);
    }

    @RequestMapping(value = "/preview", method = RequestMethod.GET)
    public void preview(HttpServletResponse response, @RequestParam String id) throws IOException {
        fileUploadService.preview(response, id);
    }

    @RequestMapping(value = "/thumbnail", method = RequestMethod.GET)
    public void thumbnail(HttpServletResponse response, @RequestParam String id) throws IOException {
        fileUploadService.thumbnail(response, id);
    }

    @GetMapping(value = "/files")
    public List<AX5File> files() {
        return fileUploadService.files();
    }

    @GetMapping(value = "/flush")
    public ApiResponse flush() {
        fileUploadService.flush();
        return ok();
    }


    @GetMapping("/m01")
    public ApiResponse findOne(CornerManageVO vo) {
        return ok();
    }
}
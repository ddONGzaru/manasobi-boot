package io.manasobi.controller.api.mng.cash.sh03001220;

import io.manasobi.controller.BaseController;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.domain.file.AX5File;
import io.manasobi.core.parameter.RequestParams;
import io.manasobi.domain.core.upload.FileUploadService;
import io.manasobi.domain.mng.cash.sh03001220.Sh03001220;
import io.manasobi.domain.mng.cash.sh03001220.Sh03001220Service;
import io.manasobi.domain.mng.cash.sh03001220.Sh03001220VO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping(value = "/api/v1/mng/cash/sh03001220")
public class Sh03001220Controller extends BaseController {

    @Inject
    private Sh03001220Service sh03001220Service;

    @Inject
    private FileUploadService fileUploadService;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<Sh03001220> requestParams) {
        Page<Sh03001220> pages = sh03001220Service.find(pageable, requestParams);
        return Responses.PageResponse.of(Sh03001220VO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody Sh03001220VO sh03001220VO) {

        if (!StringUtils.isEmpty(sh03001220VO.getCashTypeCode1RecvAmt()) && sh03001220VO.getCashTypeCode1RecvAmt().contains(",")) {
            sh03001220VO.setCashTypeCode1RecvAmt(StringUtils.replace(sh03001220VO.getCashTypeCode1RecvAmt(), ",", ""));
        }
        if (!StringUtils.isEmpty(sh03001220VO.getCashTypeCode2RecvAmt()) && sh03001220VO.getCashTypeCode2RecvAmt().contains(",")) {
            sh03001220VO.setCashTypeCode2RecvAmt(StringUtils.replace(sh03001220VO.getCashTypeCode2RecvAmt(), ",", ""));
        }
        if (!StringUtils.isEmpty(sh03001220VO.getCashTypeCode3RecvAmt()) && sh03001220VO.getCashTypeCode3RecvAmt().contains(",")) {
            sh03001220VO.setCashTypeCode3RecvAmt(StringUtils.replace(sh03001220VO.getCashTypeCode3RecvAmt(), ",", ""));
        }
        if (!StringUtils.isEmpty(sh03001220VO.getCashTypeCode4RecvAmt()) && sh03001220VO.getCashTypeCode4RecvAmt().contains(",")) {
            sh03001220VO.setCashTypeCode4RecvAmt(StringUtils.replace(sh03001220VO.getCashTypeCode4RecvAmt(), ",", ""));
        }
        if (!StringUtils.isEmpty(sh03001220VO.getCashTypeCode5RecvAmt()) && sh03001220VO.getCashTypeCode5RecvAmt().contains(",")) {
            sh03001220VO.setCashTypeCode5RecvAmt(StringUtils.replace(sh03001220VO.getCashTypeCode5RecvAmt(), ",", ""));
        }
        sh03001220VO.setReqDate(StringUtils.replace(sh03001220VO.getReqDate(), "-", ""));
        sh03001220Service.save(sh03001220VO);
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
}
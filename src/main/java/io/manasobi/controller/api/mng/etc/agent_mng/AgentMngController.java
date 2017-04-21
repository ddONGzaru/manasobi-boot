package io.manasobi.controller.api.mng.etc.agent_mng;

import io.manasobi.controller.BaseController;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.api.response.Responses;
import io.manasobi.core.parameter.RequestParams;
import io.manasobi.domain.core.upload.AX5File;
import io.manasobi.domain.core.upload.FileUploadService;
import io.manasobi.domain.mng.etc.agent_mng.AgentMng;
import io.manasobi.domain.mng.etc.agent_mng.AgentMngService;
import io.manasobi.domain.mng.etc.agent_mng.AgentMngVO;
import io.manasobi.utils.DateUtils;
import io.manasobi.utils.ModelMapperUtils;
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
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;

@RestController
@RequestMapping(value = "/api/v1/mng/etc/agent_mng")
public class AgentMngController extends BaseController {

    @Inject
    private AgentMngService agentMngService;

    @Inject
    private FileUploadService fileUploadService;

    @GetMapping
    public Responses.PageResponse list(Pageable pageable, RequestParams<AgentMngVO> requestParams) {
        Page<AgentMng> pages = agentMngService.find(pageable, requestParams);
        return Responses.PageResponse.of(AgentMngVO.of(pages.getContent()), pages);
    }

    @PutMapping
    @PostMapping
    public ApiResponse save(@RequestBody AgentMngVO vo) {
        AgentMng agentMng = ModelMapperUtils.map(vo, AgentMng.class);

        if(StringUtils.isEmpty(agentMng.getTxId())){
            agentMng.setTxId(Timestamp.valueOf(DateUtils.convertToString(LocalDateTime.now(), DateUtils.DATE_TIME_PATTERN)));
        }

        agentMngService.save(agentMng);
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
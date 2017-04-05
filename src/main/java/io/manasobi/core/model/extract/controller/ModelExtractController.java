package io.manasobi.core.model.extract.controller;

import io.manasobi.controller.BaseController;
import io.manasobi.core.api.response.ApiResponse;
import io.manasobi.core.model.JPAMvcModelExtractedCode;
import io.manasobi.core.model.extract.service.ModelExtractService;
import io.manasobi.core.model.extract.template.file.TemplateCode;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.inject.Inject;
import java.io.IOException;
import java.util.List;

/*@Controller
@RequestMapping(value = "/modelExtractor")*/
public class ModelExtractController extends BaseController {


    @Inject
    private ModelExtractService modelExtractService;

    @RequestMapping(method = RequestMethod.GET)
    public String index(
            @RequestParam String tableName,
            @RequestParam String className,
            @RequestParam(required = false, defaultValue = "") String apiPath,
            ModelMap model) {

        //modelAndView.setViewName("/axpi/index");

        try {
            JPAMvcModelExtractedCode jpaMvcModelExtractedCode = modelExtractService.getJpaMvcModel(tableName, className, apiPath);
            model.addAttribute("jpaMvcModel", jpaMvcModelExtractedCode);
            model.addAttribute("downloadLink", String.format("/modelExtractor/download?tableName=%s&className=%s&templateType", tableName, className));
            model.addAttribute("copyLink", String.format("/modelExtractor/generateFiles?tableName=%s&apiPath=%s", tableName, className, apiPath));
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("error", e.getMessage());
        }

        return "/axpi/index";
    }


    @RequestMapping(value = "/db", method = RequestMethod.GET)
    public String db() {
        return "/axpi/db";
    }

    @RequestMapping(value = "/download", method = RequestMethod.GET)
    public ResponseEntity<byte[]> download(
            @RequestParam(defaultValue = "") String tableName,
            @RequestParam(defaultValue = "") String className,
            @RequestParam(required = false, defaultValue = "") String apiPath,
            @RequestParam(defaultValue = "") String templateType) throws IOException {

        TemplateCode templateCode = modelExtractService.getTemplateCode(templateType, tableName, className, apiPath);

        HttpHeaders respHeaders = new HttpHeaders();
        respHeaders.setContentType(MediaType.APPLICATION_OCTET_STREAM);
        respHeaders.setContentLength(templateCode.code().length());
        respHeaders.setContentDispositionFormData("attachment", templateCode.name());

        return new ResponseEntity<>(templateCode.code().getBytes(), respHeaders, HttpStatus.OK);
    }

    @RequestMapping(value = "/makeFiles", method = RequestMethod.GET)
    @ResponseBody
    public ApiResponse copy(
            @RequestParam(defaultValue = "") String packageName,
            @RequestParam(defaultValue = "") String tableName,
            @RequestParam(defaultValue = "") String className,
            @RequestParam(defaultValue = "") List<String> templateTypes) throws IOException {

        modelExtractService.generateFiles(templateTypes, tableName, className, packageName);

        return ok();
    }
}

package io.manasobi.controller;

import com.google.common.collect.Maps;
import io.manasobi.core.domain.code.CommonCode;
import io.manasobi.core.model.JPAMvcModelExtractedCode;
import io.manasobi.core.model.extract.service.JdbcMetadataService;
import io.manasobi.core.model.extract.service.ModelExtractService;
import io.manasobi.utils.CommonCodeUtils;
import io.manasobi.utils.JsonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

import static java.util.stream.Collectors.*;

/**
 * Created by tw.jang on 2017-01-10.
 */
@Controller
public class ViewRouter extends BaseController {

    @Autowired
    private ModelExtractService modelExtractService;

    @Autowired
    private JdbcMetadataService jdbcMetadataService;

    private static final String CORE_PATH = "/core";

    /* ===== [ SYSTEM ] =====*/
    @GetMapping(URL.SYSTEM.CONFIG.PROGRAM)
    public String program() { return CORE_PATH + URL.SYSTEM.CONFIG.PROGRAM; }

    @GetMapping(URL.SYSTEM.CONFIG.COMMON_CODE)
    public String commonCode(ModelMap model) {

        List<CommonCode> commonCodes =
                CommonCodeUtils.getAllByMap().entrySet().stream()
                        .map(entry -> entry.getValue())
                        .map(list -> list.get(0))
                        .map(e -> {
                            CommonCode commonCode = new CommonCode();
                            commonCode.setCode(e.getGroupCd());
                            commonCode.setName(e.getGroupNm());
                            return commonCode;
                        })
                        .sorted(Comparator.comparing(CommonCode::getName))
                        .collect(toList());

        model.addAttribute("commonCodeGroup", commonCodes);

        return CORE_PATH + URL.SYSTEM.CONFIG.COMMON_CODE;
    }

    @GetMapping(URL.SYSTEM.CONFIG.MENU)
    public String menu(ModelMap model) {

        model.addAttribute("menuGroup", CommonCodeUtils.get("MENU_GROUP"));

        return CORE_PATH + URL.SYSTEM.CONFIG.MENU;
    }

    @GetMapping(URL.SYSTEM.AUTH_USER)
    public String authUser(ModelMap model) {

        /*model.addAttribute("userStatus", CommonCodeUtils.get("USER_STATUS"));
        */

        model.addAttribute("jisaCodeGroup", CommonCodeUtils.get("JISA_CODE"));
        model.addAttribute("deptNoGroup", CommonCodeUtils.get("DEPT_CODE"));
        model.addAttribute("menuGroup", CommonCodeUtils.get("MENU_GROUP"));
        model.addAttribute("authGroup", CommonCodeUtils.get("AUTH_GROUP"));

        return CORE_PATH + URL.SYSTEM.AUTH_USER;
    }

    @GetMapping(URL.SYSTEM.OPERATION_LOG)
    public String operationLog() {
        return CORE_PATH + URL.SYSTEM.OPERATION_LOG;
    }

    /* ===== [ SAMPLE ] =====*/
    @GetMapping(URL.SAMPLE.VERTICAL_LAYOUT)
    public String sampleVerticalLayout() {
        return CORE_PATH + URL.SAMPLE.VERTICAL_LAYOUT;
    }

    @GetMapping(URL.SAMPLE.HORIZONTAL_LAYOUT)
    public String sampleHorizontalLayout() {
        return CORE_PATH + URL.SAMPLE.HORIZONTAL_LAYOUT;
    }

    @GetMapping(URL.SAMPLE.TAB_LAYOUT)
    public String sampleTabLayout() {
        return CORE_PATH + URL.SAMPLE.TAB_LAYOUT;
    }

    @GetMapping(URL.SAMPLE.AX5UI)
    public String sampleAx5ui() {
        return CORE_PATH + URL.SAMPLE.AX5UI;
    }

    @PostMapping(URL.SAMPLE.AX5UI_MODAL)
    public String sampleAx5uiModal(HttpServletRequest req, Map<String, Object> params) {
        return CORE_PATH + URL.SAMPLE.AX5UI_MODAL;
    }

    @GetMapping(URL.SAMPLE.BASIC)
    public String sampleBasic() {
        return CORE_PATH + URL.SAMPLE.BASIC;
    }

    @GetMapping(URL.SAMPLE.GRID_MODAL)
    public String sampleGridModal() { return CORE_PATH + URL.SAMPLE.GRID_MODAL; }

    @GetMapping(URL.SAMPLE.GRID_FORM)
    public String sampleGridForm(ModelMap model) {
        model.addAttribute("userStatus", CommonCodeUtils.get("USER_STATUS"));
        return CORE_PATH + URL.SAMPLE.GRID_FORM;
    }

    @GetMapping(URL.SAMPLE.GRID_TAB_FORM)
    public String sampleGridTabForm(ModelMap model) {
        model.addAttribute("userStatus", CommonCodeUtils.get("USER_STATUS"));
        return CORE_PATH + URL.SAMPLE.GRID_TAB_FORM;
    }

    /* ===== [ COMMON ] =====*/
    @PostMapping(URL.COMMON.ZIPCODE)
    public String zipcode() {
        return CORE_PATH + URL.COMMON.ZIPCODE;
    }


    /* ===== [ DEV-TOOLS ] =====*/
    @PostMapping(URL.DEV_TOOLS.PAGE_MODEL_GEN)
    public String generatePageAndModel(String templateCode, ModelMap model) {

        List<String> tableNames = jdbcMetadataService.getTableNames();

        List<Map<String, String>> tableNameList =
                tableNames.stream().map(tableName -> {
                    Map<String, String> map = Maps.newHashMap();
                    map.put("optionValue", tableName);
                    map.put("optionText", tableName);
                    return map;
                }).collect(toList());

        model.addAttribute("tableNameList", JsonUtils.toJson(tableNameList));
        model.addAttribute("templateCode", templateCode);

        return CORE_PATH + URL.DEV_TOOLS.PAGE_MODEL_GEN;
    }

    @GetMapping(URL.DEV_TOOLS.MODEL_EXTRACTOR)
    public String modelExtractor() {
        return CORE_PATH + URL.DEV_TOOLS.MODEL_EXTRACTOR;
    }

    @GetMapping(URL.DEV_TOOLS.MODEL_EXTRACTOR_DETAIL)
    public String modelExtractorDetail(
            @RequestParam String tableName,
            @RequestParam String className,
            @RequestParam(required = false, defaultValue = "") String apiPath,
            ModelMap model) {

        try {
            JPAMvcModelExtractedCode jpaMvcModelExtractedCode = modelExtractService.getJpaMvcModel(tableName, className, apiPath);
            model.addAttribute("jpaMvcModel", jpaMvcModelExtractedCode);
            model.addAttribute("tableName", tableName);
            model.addAttribute("className", className);
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("error", e.getMessage());
        }

        return CORE_PATH + URL.DEV_TOOLS.MODEL_EXTRACTOR_DETAIL;
    }

    /* ===== [ TEMPLATES ] =====*/
    @GetMapping(URL.TEMPLATES.TYPE_001)
    public String templateType001(ModelMap model) {
        model.addAttribute("fn2Label", "페이지+모델 작성");
        return CORE_PATH + URL.TEMPLATES.TYPE_001;
    }
    @GetMapping(URL.TEMPLATES.TYPE_002)
    public String templateType002(ModelMap model) {
        model.addAttribute("userStatus", CommonCodeUtils.get("USER_STATUS"));
        model.addAttribute("fn2Label", "페이지+모델 작성");
        return CORE_PATH + URL.TEMPLATES.TYPE_002;
    }
    @GetMapping(URL.TEMPLATES.TYPE_003)
    public String templateType003(ModelMap model) {
        model.addAttribute("userStatus", CommonCodeUtils.get("USER_STATUS"));
        model.addAttribute("fn2Label", "페이지+모델 작성");
        return CORE_PATH + URL.TEMPLATES.TYPE_003;
    }

    public interface URL {
        interface SYSTEM {
            String AUTH_USER = "/system/system-auth-user";
            String OPERATION_LOG = "/system/system-operation-log";
            interface CONFIG {
                String MENU = "/system/system-config-menu";
                String PROGRAM = "/system/system-config-program";
                String COMMON_CODE = "/system/system-config-common-code";
            }
        }
        interface SAMPLE {
            String VERTICAL_LAYOUT = "/samples/vertical-layout";
            String HORIZONTAL_LAYOUT = "/samples/horizontal-layout";
            String TAB_LAYOUT = "/samples/tab-layout";
            String AX5UI = "/samples/ax5ui-sample";
            String AX5UI_MODAL = "/samples/ax5ui-sample-modal";
            String BASIC = "/samples/basic";
            String GRID_FORM = "/samples/grid-form";
            String GRID_TAB_FORM = "/samples/grid-tabform";
            String GRID_MODAL = "/samples/grid-modal";
        }
        interface COMMON {
            String ZIPCODE = "/common/zipcode";
        }
        interface DEV_TOOLS {
            String MODEL_EXTRACTOR = "/devtools/model-extractor";
            String MODEL_EXTRACTOR_DETAIL = "/devtools/model-extractor-detail";
            String PAGE_MODEL_GEN = "/devtools/page-model-gen";
        }
        interface TEMPLATES {
            String TYPE_001 = "/templates/template-type-001";
            String TYPE_002 = "/templates/template-type-002";
            String TYPE_003 = "/templates/template-type-003";
        }

    }
}


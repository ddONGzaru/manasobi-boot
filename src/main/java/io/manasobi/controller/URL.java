package io.manasobi.controller;

/**
 * Created by manasobi on 2017-01-15.
 */
interface URL {
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

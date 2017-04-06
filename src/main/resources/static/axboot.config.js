(function () {

    if (axboot && axboot.def) {

        axboot.def["DEFAULT_TAB_LIST"] = [
            {
                menuId: "00-dashboard",
                id: "dashboard",
                progNm: '홈',
                menuNm: '홈',
                //progPh: '/jsp/dashboard.jsp',
                //url: '/jsp/dashboard.jsp?progCd=dashboard',
                progPh: '/system/system-config-program.html',
                url: '/api/v1/program',
                status: "on",
                fixed: true
            }
        ];

        axboot.def["API"] = {
            "users":          "/api/v1/user",
            "commonCodes":    "/api/v1/common-code",
            "programs":       "/api/v1/program",
            "menu":           "/api/v1/menu",
            "manual":         "/api/v1/manual",
            "errorLogs":      "/api/v1/error-log",
            "files":          "/api/v1/file",
            "samples":        "/api/v1/sample",
            "modelExtractor": "/api/v1/model-extractor",
            "pageGenerator": "/api/v1/page-gen",
        };

        axboot.def["MODAL"] = {
            "ZIPCODE": {
                width: 600,
                height: 560,
                iframe: {
                    url: "/common/zipcode"
                },
                header: {
                    title: "우편번호 찾기"
                }
            },
            "PAGE_MODEL_GEN": {
                width: 420,
                height: 220,
                iframe: {
                    url: "/devtools/page-model-gen"
                },
                header: {
                    title: "Page & Model :: One Click Generator"
                }
            },
            "SAMPLE_MODAL": {
                width: 500,
                height: 500,
                iframe: {
                    url: "/samples/ax5ui-sample-modal"
                },
                header: {
                    title: "우편번호 찾기"
                }
            },
            "COMMON_CODE_MODAL": {
                width: 600,
                height: 400,
                iframe: {
                    url: "/jsp/system/system-config-common-code-modal.jsp"
                },
                header: false
            }
        };
    }

    var preDefineUrls = {
        "manual_downloadForm": "/api/v1/manual/excel/downloadForm",
        "manual_viewer": "/jsp/system/system-help-manual-view.jsp"
    };
    axboot.getURL = function (url) {
        if (ax5.util.isArray(url)) {
            if (url[0] in preDefineUrls) {
                url[0] = preDefineUrls[url[0]];
            }
            return url.join('/');

        } else {
            return url;
        }
    }

    var convertJsonObj = function (jsonStr) {
        return jsonStr == null || jsonStr == '' ? null : JSON.parse(jsonStr.replace(/&quot;/gi, '"'));
    }

})();

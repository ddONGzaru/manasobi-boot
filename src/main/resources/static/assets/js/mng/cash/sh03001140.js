var fnObj = {};
var ACTIONS = axboot.actionExtend(fnObj, {
    PAGE_SEARCH: function (caller, act, data) {
        axboot.ajax({
            type: "GET",
            url: "/api/v1//mng/cash/sh03001140",
            data: $.extend({}, this.searchView.getData(), this.gridView01.getPageData()),
            callback: function (res) {
                caller.gridView01.setData(res);
                $("#formView01 input").attr('disabled',false);
                $("#formView01 select").attr('disabled',false);
                $("#formView01 textarea").attr('disabled',false);
                $("#formView01 span").css("pointer-events", "auto");
                $("#formView01 .cqc-calendar").unbind('click', false);
                axDialog.close();
                caller.formView01.clear();
                caller.formView01.setSingleData("closeDate", getFormattedDate(new Date()));
            },
            options: {
                onError: viewError
            }
        });
        return false;
    },
    PAGE_SAVE: function (caller, act, data) {
        if (caller.formView01.validate()) {
            var parentData = caller.formView01.getData();
            axboot
                .call({
                    type: "PUT",
                    url: "/api/v1//mng/cash/sh03001140",
                    data: JSON.stringify(parentData),
                    callback: function (res) {
                    }
                })
                .done(function () {
                    ACTIONS.dispatch(ACTIONS.PAGE_SEARCH);
                    axToast.push("저장 작업이 완료되었습니다.");
                });
        }
    },
    MODAL_OPEN: function (caller, act, data) {
        axboot.modal.open({
            modalType: "SEARCH_TERMINAL_MODAL",
            param: "",
            sendData: function () {
                return {
                    "jisa":  $("#jisaCode").val()
                };
            },
            callback: function (data) {
                $("#jisaCode").val(data.jisaCode);
                $("#branchName").val(data.branchName);
                $("#branchCode").val(data.branchCode);
                $("#cornerName").val(data.cornerName);
                $("#terminalNo").val(data.terminalNo);

                this.close();
            }
        });
    },
    FORM_MODAL_OPEN: function (caller, act, data) {
        axboot.modal.open({
            modalType: "SEARCH_TERMINAL_MODAL",
            param: "",
            sendData: function () {
                return {
                    "jisa":  $("#jisaCodeForm").val()
                };
            },
            callback: function (data) {
                $("#jisaCodeForm").val(data.jisaCode);
                $("#branchNameForm").val(data.branchName);
                $("#branchCodeForm").val(data.branchCode);
                $("#cornerNameForm").val(data.cornerName);
                $("#terminalNoForm").val(data.terminalNo);
                this.close();
            }
        });
    },
    FORM_CLEAR: function (caller, act, data) {
        axDialog.confirm({
            msg: "정말 양식을 초기화 하시겠습니까?"
        }, function () {
            if (this.key == "ok") {
                $("#formView01 input").attr('disabled',false);
                $("#formView01 select").attr('disabled',false);
                $("#formView01 textarea").attr('disabled',false);
                $("#formView01 span").css("pointer-events", "auto");
                $("#formView01 .cqc-calendar").unbind('click', false);
                axDialog.close();
                caller.formView01.clear();
                caller.formView01.setSingleData("closeDate", getFormattedDate(new Date()));
            }
        });
    },
    ITEM_CLICK: function (caller, act, data) {
        caller.formView01.setData(data);
        caller.formView01.setSingleData("branchName", parent.COMMON_CODE["BRANCH_CODE"].map[data.branchCode]);
        caller.formView01.setSingleData("cornerName", parent.COMMON_CODE["CORNER_TERMINAL_CODE"].map[data.terminalNo]);

        $("#formView01 input").attr('disabled',true);
        $("#formView01 select").attr('disabled',true);
        $("#formView01 textarea").attr('disabled',true);
        $("#formView01 span").css("pointer-events", "none");
        $("#formView01 .cqc-calendar").bind('click', false);
    },
    EXCEL_DOWNLOAD: function (caller, act, data) {
        var params = buildParams($.extend({}, this.searchView.getData()));
        console.log(params);
        window.location = CONTEXT_PATH + "/api/v1//mng/cash/sh03001140/download?" + params;
        return false;
    },
    dispatch: function (caller, act, data) {
        var result = ACTIONS.exec(caller, act, data);
        if (result != "error") {
            return result;
        } else {
            // 직접코딩
            return false;
        }
    }
});

var CODE = {};

// fnObj 기본 함수 스타트와 리사이즈
fnObj.pageStart = function () {
    var _this = this;

    CODE = this; // this는 call을 통해 수집된 데이터들.

    _this.pageButtonView.initView();
    _this.searchView.initView();
    _this.gridView01.initView();
    _this.formView01.initView();

    ACTIONS.dispatch(ACTIONS.PAGE_SEARCH);
};

fnObj.pageResize = function () {
};

fnObj.pageButtonView = axboot.viewExtend({
    initView: function () {
        axboot.buttonClick(this, "data-page-btn", {
            "search": function () {
                ACTIONS.dispatch(ACTIONS.PAGE_SEARCH);
            },
            "excel": function () {
                fnObj.gridView01.excel("회수자금결과통보-"+getFormattedDate(new Date())+".xls");
                // ACTIONS.dispatch(ACTIONS.EXCEL_DOWNLOAD);
            },
            "search-view-clear": function () {
                $("#filter").val("");
                $("#jisaCode").val("");
                $("#branchName").val("");
                $("#branchCode").val("");
                $("#cornerName").val("");
                $("#terminalNo").val("");
                $("#startDate").val(getFormattedDate(new Date(),true));
                $("#endDate").val(getFormattedDate(new Date(),false));
                ACTIONS.dispatch(ACTIONS.PAGE_SEARCH);
            }
        });
    }
});

//== view 시작
/**
 * searchView
 */
fnObj.searchView = axboot.viewExtend(axboot.searchView, {
    initView: function () {
        this.target = $(document["searchView0"]);
        this.target.attr("onsubmit", "return ACTIONS.dispatch(ACTIONS.PAGE_SEARCH);");
        this.filter = $("#filter");
        this.jisaCode = $("#jisaCode");
        this.branchCode = $("#branchCode");
        this.terminalNo = $("#terminalNo");
        this.target.find('[data-ax5picker="date"]').ax5picker({
            direction: "auto",
            content: {
                type: 'date'
            }
        });

        $("#startDate").val(getFormattedDate(new Date(),true));
        $("#endDate").val(getFormattedDate(new Date(),false));

        axboot.buttonClick(this, "data-searchview-btn", {
            "modal": function () {
                ACTIONS.dispatch(ACTIONS.MODAL_OPEN)
            },
            "form_modal": function () {
                ACTIONS.dispatch(ACTIONS.FORM_MODAL_OPEN)
            }
        });

        $('#jisaCode').change(
            function(){
                $("#branchName").val("");
                $("#branchCode").val("");
                $("#cornerName").val("");
                $("#terminalNo").val("");
            });

        $('#branchCode').change(
            function(){
                $("#branchName").val("");
            });

        $('#terminalNo').change(
            function(){
                $("#cornerName").val("");
            });
    },
    getData: function () {
        return {
            filter: this.filter.val(),
            jisaCode: $("#jisaCode").val(),
            branchName: $("#branchName").val(),
            branchCode: $("#branchCode").val(),
            cornerName: $("#cornerName").val(),
            terminalNo: $("#terminalNo").val(),
            startDate: $("#startDate").val(),
            endDate: $("#endDate").val()
        }
    }
});

/**
 * gridView
 */
fnObj.gridView01 = axboot.viewExtend(axboot.gridView, {
    page: {
        pageNumber: 0,
        pageSize: 100
    },
    initView: function () {
        var _this = this;

        this.target = axboot.gridBuilder({
            showRowSelector: true,
            frozenColumnIndex: 0,
            target: $('[data-ax5grid="grid-view-01"]'),
            columns: [
                {key: 'jisaCode', label: '지사명', width: 70, align: 'center',
                    formatter: function formatter() {
                        return parent.COMMON_CODE["JISA_CODE"].map[this.value];
                    }
                },
                {key: 'branchCode', label: '지점명', width: 150, align: 'left',
                    formatter: function formatter() {
                        return parent.COMMON_CODE["BRANCH_CODE"].map[this.value];
                    }
                },
                {key: 'terminalNo', label: '코너명', width: 150, align: 'left',
                    formatter: function formatter() {
                        return parent.COMMON_CODE["CORNER_TERMINAL_CODE"].map[this.value];
                    }
                },
                {key: 'terminalNo', label: '단말번호', width: 70, align: 'center'},
                {key: 'closeDate', label: '마감일자', width: 100, align: 'center'},
                {key: 'prevDayCashSendingAmt', label: '전일현송액', width: 130, align: 'right', formatter: "money"},
                {key: 'depositAmt', label: '입금금액', width: 130, align: 'right', formatter: "money"},
                {key: 'giveAmt', label: '지급금액', width: 130, align: 'right', formatter: "money"},
                {key: 'closeAmt', label: '마감금액', width: 130, align: 'right', formatter: "money"},
                {key: 'noneProcessAmt', label: '미처리금액', width: 130, align: 'right', formatter: "money"},
                {key: 'rtrvlFund', label: '회수자금', width: 130, align: 'right', formatter: "money"},
                {key: 'noneProcessAt', label: '미처리건 유무', width: 90, align: 'center',
                    formatter: function formatter() {
                        return parent.COMMON_CODE["NONE_PROCESS_AT"].map[this.value];
                    }
                },
                {key: 'mngOffice', label: '관리사무소', width: 150, align: 'center'},
                {key: 'adjustLackAmtCount', label: '과여금조정건수', width: 100, align: 'center', formatter: "money"},
                {key: 'adjustLackAmt', label: '과여금조정금액', width: 130, align: 'right', formatter: "money"}
            ],
            body: {
                onClick: function () {
                    this.self.select(this.dindex);
                    ACTIONS.dispatch(ACTIONS.ITEM_CLICK, this.item);
                }
            },
            onPageChange: function (pageNumber) {
                _this.setPageData({pageNumber: pageNumber});
                ACTIONS.dispatch(ACTIONS.PAGE_SEARCH);
            }
        });

        axboot.buttonClick(this, "data-grid-view-01-btn", {
            "add": function () {
                ACTIONS.dispatch(ACTIONS.ITEM_ADD);
            },
            "delete": function () {
                ACTIONS.dispatch(ACTIONS.ITEM_DEL);
            }
        });
    },
    getData: function (_type) {
        var list = [];
        var _list = this.target.getList(_type);

        if (_type == "modified" || _type == "deleted") {
            list = ax5.util.filter(_list, function () {
                return this.branchCode && this.terminalNo && this.closeDate;
            });
        } else {
            list = _list;
        }
        return list;
    },
    addRow: function () {
        this.target.addRow({__created__: true}, "last");
    },
    excel: function (file) {
        this.target.exportExcel(file);
    }
});

/**
 * formView01
 */
fnObj.formView01 = axboot.viewExtend(axboot.formView, {
    getDefaultData: function () {
        return $.extend({}, axboot.formView.defaultData, {});
    },
    initView: function () {
        this.target = $("#formView01");
        this.model = new ax5.ui.binder();
        this.model.setModel(this.getDefaultData(), this.target);
        this.modelFormatter = new axboot.modelFormatter(this.model); // 모델 포메터 시작
        this.initEvent();
        this.target.find('[data-ax5picker="date"]').ax5picker({
            direction: "auto",
            content: {
                type: 'date'
            }
        });
        this.target.find('[data-ax5picker="date"]').ax5picker("setValue",0, getFormattedDate(new Date()));
        
        axboot.buttonClick(this, "data-form-view-01-btn", {
            "form-clear": function () {
                ACTIONS.dispatch(ACTIONS.FORM_CLEAR);
            },
            "add": function () {
                ACTIONS.dispatch(ACTIONS.PAGE_SAVE);
            }
        });

        $('#jisaCodeForm').change(
            function(){
                $("#branchNameForm").val("");
                $("#branchCodeForm").val("");
                $("#cornerNameForm").val("");
                $("#terminalNoForm").val("");
            });
    },
    initEvent: function () {
        var _this = this;
    },
    getData: function () {
        return {
            jisaCode: $("#jisaCodeForm").val(),
            branchCode: $("#branchCodeForm").val(),
            terminalNo: $("#terminalNoForm").val(),
            closeDate: $("#closeDate").val(),
            prevDayCashSendingAmt: $("#prevDayCashSendingAmt").val(),
            depositAmt: $("#depositAmt").val(),
            giveAmt: $("#giveAmt").val(),
            closeAmt: $("#closeAmt").val(),
            noneProcessAmt: $("#noneProcessAmt").val(),
            noneProcessAt: $("#noneProcessAt").val(),
            mngOffice: $("#mngOffice").val(),
            rtrvlFund: $("#rtrvlFund").val(),
            adjustLackAmtCount: $("#adjustLackAmtCount").val(),
            adjustLackAmt: $("#adjustLackAmt").val()
        };
    },
    setData: function (data) {

        if (typeof data === "undefined") data = this.getDefaultData();
        data = $.extend({}, data);

        this.target.find('[data-ax-path="key"]').attr("readonly", "readonly");

        this.model.setModel(data);
        this.modelFormatter.formatting(); // 입력된 값을 포메팅 된 값으로 변경
    },
    setSingleData: function (dataPath, value) {
        this.model.set(dataPath, value);
    },
    validate: function () {
        var rs = this.model.validate();
        var title;
        var message;

        if($("#jisaCodeForm").val()=="") {
            message = '\n' + '지사는 필수 입력조건입니다.\n' + '지사를 선택하세요.';
            $("#jisaCodeForm").focus();
            formError(message);
            return false;
        } else if($("#branchCodeForm").val()=="") {
            message = '\n' + '지점은 필수 입력조건입니다.\n' + '지점을 선택하세요.';
            $("#branchCodeForm").focus();
            formError(message);
            return false;
        } else if($("#terminalNoForm").val()=="") {
            message = '\n' + '단말번호는 필수 입력조건입니다.\n' + '단말번호를 선택하세요.';
            $("#terminalNoForm").focus();
            formError(message);
            return false;
        } else if (rs.error) {
            title = rs.error[0].jquery.attr("title");
            message = '\n' + title + '는 필수 검색조건입니다.\n' + title + '를 입력하세요.';
            rs.error[0].jquery.focus();
            formError(message);
            return false;
        }
        return true;
    },
    clear: function () {
        this.model.setModel(this.getDefaultData());
        this.target.find('[data-ax-path="key"]').removeAttr("readonly");
        this.target.find('[data-ax5picker="date"]').ax5picker("setValue",0, getFormattedDate(new Date()));
    }
});

var buildParams = function (json) {

    var params = JSON.stringify(json);

    params=params.replace(/{/g, "");
    params=params.replace(/}/g, "");
    params=params.replace(/:/g, "=")
    params=params.replace(/,/g, "&");
    params=params.replace(/"/g, "");

    return params;

}

var formError = function (message) {
    axToast.confirm({
        theme: "danger",
        width: 300,
        lang: {
            "ok": "닫기"
        },
        icon: '<i class="cqc-new"></i>',
        msg: '[에러] ' + message
    });
}

var viewError = function (err) {
    axToast.confirm({
        theme: "danger",
        width: 300,
        lang: {
            "ok": "닫기"
        },
        icon: '<i class="cqc-new"></i>',
        msg: '[에러] ' + err.message
    });
}
// 단말번호는 필수 검색조건입니다.
//     단말번호를 입력하세요.
var pageSearchAndviewError = function (err) {
    ACTIONS.dispatch(ACTIONS.PAGE_SEARCH);
    viewError(err);
}

function getFormattedDate(date, isStart) {
    var day;
    var tempDate;
    if(isStart){
        date.setDate(date.getDate() - 7);
        tempDate = date.getDate();
    }else{
        tempDate = date.getDate();
    }
    day = tempDate.toString();

    var year = date.getFullYear();
    var month = (1 + date.getMonth()).toString();
    month = month.length > 1 ? month : '0' + month;
    day = day.length > 1 ? day : '0' + day;
    return year + '-' + month + '-' + day;
}
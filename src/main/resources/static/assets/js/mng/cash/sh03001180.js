var fnObj = {};
var ACTIONS = axboot.actionExtend(fnObj, {
    PAGE_SEARCH: function (caller, act, data) {
        axboot.ajax({
            type: "GET",
            url: "/api/v1//mng/cash/sh03001180",
            data: $.extend({findAll: true}, this.searchView.getData(), this.gridView01.getPageData()),
            callback: function (res) {
                caller.gridView01.setData(res);
            },
            options: {
                onError: viewError
            }
        });
        return false;
    },
    ITEM_CLICK: function (caller, act, data) {
        caller.formView01.setData(data);
        caller.formView01.setSingleData("branchName", parent.COMMON_CODE["BRANCH_CODE"].map[data.branchCode]);
        caller.formView01.setSingleData("cornerName", parent.COMMON_CODE["CORNER_TERMINAL_CODE"].map[data.terminalNo]);

        caller.formView02.setData(data);

        caller.formView03.setData(data);
        caller.formView03.setSingleData("branchName", parent.COMMON_CODE["BRANCH_CODE"].map[data.branchCode]);
        caller.formView03.setSingleData("cornerName", parent.COMMON_CODE["CORNER_TERMINAL_CODE"].map[data.terminalNo]);
        caller.formView03.setSingleData("cashSendingStndDate", data.cashSendingDate);
        caller.formView03.setSingleData("cashSendingStndDate", data.cashSendingDate);
        caller.formView03.setSingleData("billingExpectDate", data.cashSendingDate);

        ACTIONS.dispatch(ACTIONS.FORM_PAGE_SEARCH_3);
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
    FORM_MODAL_01_OPEN: function (caller, act, data) {
        axboot.modal.open({
            modalType: "SEARCH_TERMINAL_MODAL",
            param: "",
            sendData: function () {
                return {
                    "jisa":  $("#jisaCodeForm").val()
                };
            },
            callback: function (data) {
                caller.formView01.setSingleData("jisaCode", data.jisaCode);
                caller.formView01.setSingleData("branchName", parent.COMMON_CODE["BRANCH_CODE"].map[data.branchCode]);
                caller.formView01.setSingleData("branchCode", data.branchCode);
                caller.formView01.setSingleData("cornerName", parent.COMMON_CODE["CORNER_TERMINAL_CODE"].map[data.terminalNo]);
                caller.formView01.setSingleData("terminalNo", data.terminalNo);
                ACTIONS.dispatch(ACTIONS.FORM_PAGE_SEARCH_2);
                this.close();
            }
        });
    },
    FORM_VIEW_01_SAVE: function (caller, act, data) {
        if (caller.formView01.validate()) {
            axDialog.confirm({
                msg: "현송계획을 전송하시겠습니까?"
            }, function () {
                if (this.key == "ok") {
                    var parentData = caller.formView01.getData();
                    parentData.cashSendingAmt = parentData.cashSendingAmt || '0';
                    parentData.cash50kSendingAmt = parentData.cash50kSendingAmt || '0';
                    axboot
                        .call({
                            type: "PUT",
                            url: "/api/v1//mng/cash/sh03001180",
                            data: JSON.stringify(parentData),
                            callback: function (res) {
                                ACTIONS.dispatch(ACTIONS.PAGE_SEARCH);
                                axToast.push("현송계획이 전송되었습니다.");
                                if(weekSendChange) {
                                    ACTIONS.dispatch(ACTIONS.FORM_VIEW_02_SAVE);
                                }
                            }
                        })
                        .done(function () {
                        });
                }
            });
        }
    },
    FORM_VIEW_01_CLEAR: function (caller, act, data) {
        axDialog.confirm({
            msg: "정말 양식을 초기화 하시겠습니까?"
        }, function () {
            if (this.key == "ok") {
                axDialog.close();
                caller.formView01.clear();
                caller.formView01.setSingleData("cashSendingDate", getFormattedDate(new Date()));
                ACTIONS.dispatch(ACTIONS.FORM_VIEW_02_CLEAR);
            }
        });
    },
    FORM_PAGE_SEARCH_2: function (caller, act, data) {
        var parentData = caller.formView01.getData();
        axboot
            .call({
                type: "GET",
                url: "/api/v1//mng/cash/sh03001200",
                data: {
                    findOne: true,
                    jisaCode: parentData.jisaCode,
                    branchCode: parentData.branchCode,
                    terminalNo: parentData.terminalNo,
                },
                callback: function (res) {
                    caller.formView02.setData(res);
                    weekSendChange = false;
                }
            })
            .done(function () {

            });
    },
    FORM_VIEW_02_CLEAR: function (caller, act, data) {
        caller.formView02.clear();
    },
    FORM_VIEW_02_SAVE: function (caller, act, data) {
        axDialog.confirm({
            msg: "현송주기를 전송하시겠습니까?"
        }, function () {
            if (this.key == "ok") {
                if (caller.formView02.validate()) {
                    var parentData = caller.formView02.getData();
                    parentData.jisaCode = $("#jisaCodeForm").val();
                    parentData.branchCode = $("#branchCodeForm").val();
                    parentData.terminalNo = $("#terminalNoForm").val();

                    axboot
                        .call({
                            type: "PUT",
                            url: "/api/v1//mng/cash/sh03001200",
                            data: JSON.stringify(parentData),
                            callback: function (res) {
                                weekSendChange = false;
                                ACTIONS.dispatch(ACTIONS.PAGE_SEARCH);
                                axToast.push("현송주기가 전송되었습니다.");
                            }
                        })
                        .done(function () {
                        });
                }
            }
        });
    },
    FORM_PAGE_SEARCH_3: function (caller, act, data) {
        axboot.ajax({
            type: "GET",
            url: "/api/v1//mng/cash/sh03001160",
            data: $.extend({}, this.formView03.getData(), this.gridView02.getPageData()),
            callback: function (res) {
                caller.gridView02.setData(res);
            },
            options: {
                onError: viewError
            }
        });
        return false;
    },
    FORM_MODAL_03_OPEN: function (caller, act, data) {
        axboot.modal.open({
            modalType: "SEARCH_TERMINAL_MODAL",
            param: "",
            sendData: function () {
                return {
                    "jisa":  $("#jisaCodeForm3").val()
                };
            },
            callback: function (data) {
                caller.formView03.setSingleData("jisaCode", data.jisaCode);
                caller.formView03.setSingleData("branchName", parent.COMMON_CODE["BRANCH_CODE"].map[data.branchCode]);
                caller.formView03.setSingleData("branchCode", data.branchCode);
                caller.formView03.setSingleData("cornerName", parent.COMMON_CODE["CORNER_TERMINAL_CODE"].map[data.terminalNo]);
                caller.formView03.setSingleData("terminalNo", data.terminalNo);
                ACTIONS.dispatch(ACTIONS.FORM_PAGE_SEARCH_3);
                this.close();
            }
        });
    },
    FORM_VIEW_03_SAVE: function (caller, act, data) {
        if (caller.formView03.validate()) {
            axDialog.confirm({
                msg: "추가현송계획을 전송하시겠습니까?"
            }, function () {
                if (this.key == "ok") {
                    var parentData = caller.formView03.getData();
                    axboot
                        .call({
                            type: "GET",
                            url: "/api/v1//mng/cash/sh03001160",
                            data: {
                                nextSeqNo: true,
                                jisaCode: parentData.jisaCode,
                                branchCode: parentData.branchCode,
                                terminalNo: parentData.terminalNo,
                                cashSendingDate: $("#cashSendingDateForm3").val()
                            },
                            callback: function (res) {
                                if(res.addCashSendingSeqNo == undefined) {
                                    parentData.addCashSendingSeqNo = '001';
                                } else {
                                    parentData.addCashSendingSeqNo = res.addCashSendingSeqNo;
                                }
                                parentData.addCashSendingAmt = parentData.addCashSendingAmt || '0';
                                parentData.addCash50kSendingAmt = parentData.addCash50kSendingAmt || '0';
                                parentData.mngOffice = parentData.mngOffice || '';
                                axboot
                                    .call({
                                        type: "PUT",
                                        url: "/api/v1//mng/cash/sh03001160",
                                        data: JSON.stringify(parentData),
                                        callback: function (res) {
                                            ACTIONS.dispatch(ACTIONS.FORM_PAGE_SEARCH_3);
                                            axToast.push("추가현송계획이 전송되었습니다.");
                                        }
                                    })
                                    .done(function () {

                                    });
                            }
                        })
                        .done(function () {

                        });
                }
            });
        }
    },
    FORM_VIEW_03_CLEAR: function (caller, act, data) {
        axDialog.confirm({
            msg: "정말 양식을 초기화 하시겠습니까?"
        }, function () {
            if (this.key == "ok") {
                axDialog.close();
                caller.formView03.clear();
                caller.formView03.setSingleData("cashSendingDate", getFormattedDate(new Date()));
                caller.formView03.setSingleData("cashSendingStndDate", getFormattedDate(new Date()));
                caller.formView03.setSingleData("billingExpectDate", getFormattedDate(new Date()));

                fnObj.gridView02.initView();
            }
        });
    },
    EXCEL_01_DOWNLOAD: function (caller, act, data) {
        var params = buildParams($.extend({}, this.searchView.getData()));
        console.log(params);
        window.location = CONTEXT_PATH + "/api/v1//mng/cash/sh03001180/download?" + params;
        return false;
    },
    EXCEL_02_DOWNLOAD: function (caller, act, data) {
        var params = buildParams($.extend({}, this.searchView.getData()));
        console.log(params);
        window.location = CONTEXT_PATH + "/api/v1//mng/cash/sh03001160/download?" + params;
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
    _this.gridView02.initView();
    _this.formView01.initView();
    _this.formView02.initView();
    _this.formView03.initView();

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
                fnObj.gridView01.excel("현송계획-"+getFormattedDate(new Date())+".xls");
                // ACTIONS.dispatch(ACTIONS.EXCEL_01_DOWNLOAD);
            },
            "excel2": function () {
                fnObj.gridView02.excel("추가현송계획-"+getFormattedDate(new Date())+".xls");
                // ACTIONS.dispatch(ACTIONS.EXCEL_02_DOWNLOAD);
            },
            "search-view-clear": function () {
                $("#filter").val("");
                $("#jisaCode").val("");
                $("#branchName").val("");
                $("#branchCode").val("");
                $("#cornerName").val("");
                $("#terminalNo").val("");
                $("#startDate").val(getFormattedDate(new Date()));
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
        this.jisaCode = $("#jisaCode");
        this.branchCode = $("#branchCode");
        this.terminalNo = $("#terminalNo");
        this.target.find('[data-ax5picker="date"]').ax5picker({
            direction: "auto",
            content: {
                type: 'date'
            }
        });

        $("#startDate").val(getFormattedDate(new Date()));

        axboot.buttonClick(this, "data-searchview-btn", {
            "modal": function () {
                ACTIONS.dispatch(ACTIONS.MODAL_OPEN)
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
            jisaCode: $("#jisaCode").val(),
            branchCode: $("#branchCode").val(),
            terminalNo: $("#terminalNo").val(),
            startDate: $("#startDate").val(),
        }
    }
});

/**
 * gridView01
 */
fnObj.gridView01 = axboot.viewExtend(axboot.gridView, {
    page: {
        pageNumber: 0,
        pageSize: 150
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
                {key: 'cashSendingDate',   label: '현송일자', width: 100, align: 'center'},
                {key: 'txId',   label: '통보일시', width: 115, align: 'center',
                    formatter: function formatter() {
                        if(this.value) {
                            return this.value;
                        } else {
                            return '-';
                        }
                    }
                },
                {key: 'acceptEnable',      label: '수용여부', width: 70, align: 'center',
                    formatter: function formatter() {
                        if(this.value) {
                            return parent.COMMON_CODE["ACCEPT_ENABLE"].map[this.value];
                        } else {
                            return '-';
                        }
                    }
                },
                {key: undefined, label: '현송금액', align: 'center',
                    columns: [
                        {key: 'cashSendingAmt',    label: '만원권', width: 130, align: 'right',  formatter: "money", editor: 'number'},
                        {key: 'cash50kSendingAmt', label: '5만원권', width: 130, align: 'right',  formatter: "money", editor: 'number'},
                        {key: 'cashSendingSumAmt', label: '합계', width: 130, align: 'right',  formatter: "money", editor: 'number'}
                    ]
                },
                {key: undefined, label: '현송주기', align: 'center',
                    columns: [
                        {key: 'monCashSendingEnable', label: '월요일', width: 92, align: 'center',
                            formatter: function formatter() {
                                if(this.value) {
                                    return parent.COMMON_CODE["MON_CASH_SENDING_ENABLE"].map[this.value];
                                } else {
                                    return '-';
                                }
                            }
                        },
                        {key: 'tueCashSendingEnable', label: '화요일', width: 92, align: 'center',
                            formatter: function formatter() {
                                if(this.value) {
                                    return parent.COMMON_CODE["TUE_CASH_SENDING_ENABLE"].map[this.value];
                                } else {
                                    return '-';
                                }
                            }
                        },
                        {key: 'wedCashSendingEnable', label: '수요일', width: 92, align: 'center',
                            formatter: function formatter() {
                                if(this.value) {
                                    return parent.COMMON_CODE["WED_CASH_SENDING_ENABLE"].map[this.value];
                                } else {
                                    return '-';
                                }
                            }
                        },
                        {key: 'thuCashSendingEnable', label: '목요일', width: 92, align: 'center',
                            formatter: function formatter() {
                                if(this.value) {
                                    return parent.COMMON_CODE["THU_CASH_SENDING_ENABLE"].map[this.value];
                                } else {
                                    return '-';
                                }
                            }
                        },
                        {key: 'friCashSendingEnable', label: '금요일', width: 92, align: 'center',
                            formatter: function formatter() {
                                if(this.value) {
                                    return parent.COMMON_CODE["FRI_CASH_SENDING_ENABLE"].map[this.value];
                                } else {
                                    return '-';
                                }
                            }
                        }
                    ]
                }
            ],
            footSum: [
                [
                    {label: "", colspan: 3, align: "center"},
                    {label: "합계", colspan: 2, align: "center"},
                    {label: "", colspan: 2, align: "center"},
                    {key: "cashSendingAmt", collector: "sum", formatter: "money", align: "right"},
                    {key: "cash50kSendingAmt", collector: "sum", formatter: "money", align: "right"},
                    {key: "cashSendingSumAmt", collector: "sum", formatter: "money", align: "right"}
                ]
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
                return this.txId && this.branchCode && this.terminalNo && this.cashSendingDate;
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

        this.setSingleData("cashSendingDate", getFormattedDate(new Date()));

        axboot.buttonClick(this, "data-form-view-01-btn", {
            "modal": function () {
                ACTIONS.dispatch(ACTIONS.FORM_MODAL_01_OPEN)
            },
            "form-clear": function () {
                ACTIONS.dispatch(ACTIONS.FORM_VIEW_01_CLEAR);
            },
            "save": function () {
                ACTIONS.dispatch(ACTIONS.FORM_VIEW_01_SAVE);
            }
        });

        $('#jisaCodeForm').change(
            function(){
                $("#branchNameForm").val("");
                $("#branchCodeForm").val("");
                $("#cornerNameForm").val("");
                $("#terminalNoForm").val("");
                $("#cashSendingAmt").val("");
                $("#cash50kSendingAmt").val("");
                $("#acceptEnable").val("");
                $("#txId").val("");
            });

    },
    initEvent: function () {
        var _this = this;
    },
    getData: function () {
        var data = this.modelFormatter.getClearData(this.model.get()); // 모델의 값을 포멧팅 전 값으로 치환.
        return $.extend({}, data);
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
            $("#branchNameForm").focus();
            formError(message);
            return false;
        } else if($("#terminalNoForm").val()=="") {
            message = '\n' + '단말번호는 필수 입력조건입니다.\n' + '단말번호를 선택하세요.';
            $("#cornerNameForm").focus();
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
    }
});

/**
 * formView02
 */
fnObj.formView02 = axboot.viewExtend(axboot.formView, {
    getDefaultData: function () {
        return $.extend({}, axboot.formView.defaultData, {});
    },
    initView: function () {
        this.target = $("#formView02");
        this.model = new ax5.ui.binder();
        this.model.setModel(this.getDefaultData(), this.target);
        this.modelFormatter = new axboot.modelFormatter(this.model); // 모델 포메터 시작
        this.initEvent();

        weekSendChange = false;

        axboot.buttonClick(this, "data-form-view-02-btn", {
            "save": function () {
                ACTIONS.dispatch(ACTIONS.FORM_VIEW_02_SAVE);
            }
        });

        $('#monCashSendingEnable').change(
            function(){
                weekSendChange = true;
            });
        $('#tueCashSendingEnable').change(
            function(){
                weekSendChange = true;
            });
        $('#wedCashSendingEnable').change(
            function(){
                weekSendChange = true;
            });
        $('#thuCashSendingEnable').change(
            function(){
                weekSendChange = true;
            });
        $('#friCashSendingEnable').change(
            function(){
                weekSendChange = true;
            });
    },
    initEvent: function () {
        var _this = this;
    },
    getData: function () {
        var data = this.modelFormatter.getClearData(this.model.get()); // 모델의 값을 포멧팅 전 값으로 치환.
        return $.extend({}, data);
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
            $("#branchNameForm").focus();
            formError(message);
            return false;
        } else if($("#terminalNoForm").val()=="") {
            message = '\n' + '단말번호는 필수 입력조건입니다.\n' + '단말번호를 선택하세요.';
            $("#cornerNameForm").focus();
            formError(message);
            return false;
        } else if (rs.error) {
            title = rs.error[0].jquery.attr("title");
            message = '현송주기의 모든항목은 필수 검색조건입니다.\n' + '요일별 현송여부를 선택하세요.';
            rs.error[0].jquery.focus();
            formError(message);
            return false;
        }

        return true;
    },
    clear: function () {
        this.model.setModel(this.getDefaultData());
        this.target.find('[data-ax-path="key"]').removeAttr("readonly");
    }
});

/**
 * formView03
 */
fnObj.formView03 = axboot.viewExtend(axboot.formView, {
    getDefaultData: function () {
        return $.extend({}, axboot.formView.defaultData, {});
    },
    initView: function () {
        this.target = $("#formView03");
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

        this.setSingleData("cashSendingDate", getFormattedDate(new Date()));
        this.setSingleData("cashSendingStndDate", getFormattedDate(new Date()));
        this.setSingleData("billingExpectDate", getFormattedDate(new Date()));

        $('#jisaCodeForm3').change(
            function(){
                $("#branchNameForm3").val("");
                $("#branchCodeForm3").val("");
                $("#cornerNameForm3").val("");
                $("#terminalNoForm3").val("");
                $("#addCashSendingAmt").val("");
                $("#addCash50kSendingAmt").val("");
                $("#mngOffice").val("");
                $("#closeGubun").val("");

                $('[data-ax5grid="grid-view-01"]').setData(null);
            });

        axboot.buttonClick(this, "data-form-view-03-btn", {
            "modal": function () {
                ACTIONS.dispatch(ACTIONS.FORM_MODAL_03_OPEN)
            },
            "form-clear": function () {
                ACTIONS.dispatch(ACTIONS.FORM_VIEW_03_CLEAR);
            },
            "save": function () {
                ACTIONS.dispatch(ACTIONS.FORM_VIEW_03_SAVE);
            }
        });

        // ACTIONS.dispatch(ACTIONS.PAGE_SEARCH_2);
    },
    initEvent: function () {
        var _this = this;
    },
    getData: function () {
        var data = this.modelFormatter.getClearData(this.model.get()); // 모델의 값을 포멧팅 전 값으로 치환.
        return $.extend({}, data);
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

        if($("#jisaCodeForm3").val()=="") {
            message = '\n' + '지사는 필수 입력조건입니다.\n' + '지사를 선택하세요.';
            $("#jisaCodeForm3").focus();
            formError(message);
            return false;
        } else if($("#branchCodeForm3").val()=="") {
            message = '\n' + '지점은 필수 입력조건입니다.\n' + '지점을 선택하세요.';
            $("#branchNameForm3").focus();
            formError(message);
            return false;
        } else if($("#terminalNoForm3").val()=="") {
            message = '\n' + '단말번호는 필수 입력조건입니다.\n' + '단말번호를 선택하세요.';
            $("#cornerNameForm3").focus();
            formError(message);
            return false;
        } else if($("#closeGubun").val()=="") {
            message = '\n' + '마감구분은 필수 입력조건입니다.\n' + '마감구분을 선택하세요.';
            $("#closeGubun").focus();
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
    }
});

/**
 * gridView02
 */
fnObj.gridView02 = axboot.viewExtend(axboot.gridView, {
    page: {
        pageNumber: 0,
        pageSize: 100
    },
    initView: function () {
        var _this = this;

        this.target = axboot.gridBuilder({
            showLineNumber: true,
            showRowSelector: false,
            frozenColumnIndex: 0,
            target: $('[data-ax5grid="grid-view-02"]'),
            columns: [
                // {key: 'addCashSendingSeqNo', label: '일련번호', width: 100, align: 'center', editor: 'text'},
                {key: 'cashSendingDate', label: '현송일자', width: 95, align: 'center', editor: 'text'},
                {key: 'cashSendingStndDate', label: '현송기준일자', width: 95, align: 'center', editor: 'text'},
                {key: 'billingExpectDate',   label: '청구예상일자', width: 95, align: 'center', editor: 'text'},
                {key: undefined, label: '추가현송금액', align: 'center',
                    columns: [
                        {key: 'addCashSendingAmt',    label: '만원권', width: 130, align: 'right',  formatter: "money", editor: 'number'},
                        {key: 'addCash50kSendingAmt', label: '5만원권', width: 130, align: 'right',  formatter: "money", editor: 'number'},
                        {key: 'addCashSendingSumAmt', label: '합계', width: 130, align: 'right',  formatter: "money", editor: 'number'}
                    ]
                },
                {key: 'closeGubun', label: '마감구분', width: 70, align: 'center', editor: 'text',
                    formatter: function formatter() {
                        return parent.COMMON_CODE["CASH_SENDING_CLOSE_GUBUN"].map[this.value];
                    }
                },
                {key: 'mngOffice', label: '관리사무소', width: 92, align: 'center', editor: 'text'}
            ],
            footSum: [
                [
                    {label: "합계", colspan: 3, align: "center"},
                    {key: "addCashSendingAmt", collector: "sum", formatter: "money", align: "right"},
                    {key: "addCash50kSendingAmt", collector: "sum", formatter: "money", align: "right"},
                    {key: "addCashSendingSumAmt", collector: "sum", formatter: "money", align: "right"}
                ]
            ],
            body: {
                onClick: function () {
                    this.self.select(this.dindex);
                    // ACTIONS.dispatch(ACTIONS.ITEM_CLICK, this.item);
                }
            },
            onPageChange: function (pageNumber) {
                _this.setPageData({pageNumber: pageNumber});
                ACTIONS.dispatch(ACTIONS.PAGE_SEARCH);
            }
        });

        axboot.buttonClick(this, "data-grid-view-02-btn", {
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
                return this.branchCode && this.terminalNo && this.addCashSendingSeqNo && this.cashSendingDate;
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

var pageSearchAndviewError = function (err) {
    ACTIONS.dispatch(ACTIONS.PAGE_SEARCH);
    viewError(err);
}

function getFormattedDate(date) {
    var year = date.getFullYear();
    var month = (1 + date.getMonth()).toString();
    month = month.length > 1 ? month : '0' + month;
    var day = date.getDate().toString();
    day = day.length > 1 ? day : '0' + day;
    return year + '-' + month + '-' + day;
}

var weekSendChange;
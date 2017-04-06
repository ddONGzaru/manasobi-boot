var fnObj = {};
var ACTIONS = axboot.actionExtend(fnObj, {
    PAGE_SEARCH: function (caller, act, data) {
        axboot.ajax({
            type: "GET",
            url: "/api/v1//mng/cash/sh03001110",
            data: $.extend({findPage: true}, this.searchView.getData(), this.gridView01.getPageData()),
            callback: function (res) {
                caller.gridView01.setData(res);
            },
            options: {
                onError: viewError
            }
        });
        return false;
    },
    FIND_ONE: function (caller, act, data) {
        var selectedGridData = fnObj.gridView01.getData("selected");
        if(selectedGridData.length > 0) {
            axboot.modal.open({
                modalType: "Sh03001110_M01",
                param: selectedGridData,
                callback: function () {
                    axToast.push("단건조회가 완료되었습니다.");
                    ACTIONS.dispatch(ACTIONS.PAGE_SEARCH);
                }
            });
        } else {
            axToast.push("단건조회할 대상을 선택해주세요.");
        }
    },
    FIND_ALL: function (caller, act, data) {
        axboot.ajax({
            type: "GET",
            url: "/api/v1//mng/cash/sh03001110",
            data: $.extend({findAll: true}, this.searchView.getData()),
            callback: function () {
                axToast.push("전체조회가 완료되었습니다.");
                ACTIONS.dispatch(ACTIONS.PAGE_SEARCH);
            },
            options: {
                onError: viewError
            }
        });
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
    EXCEL_DOWNLOAD: function (caller, act, data) {
        var params = buildParams($.extend({}, this.searchView.getData()));
        console.log(params);
        window.location = CONTEXT_PATH + "/api/v1//mng/cash/sh03001110/download?" + params;
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
var PARAMS = {};
// fnObj 기본 함수 스타트와 리사이즈
fnObj.pageStart = function () {
    var _this = this;

    CODE = this; // this는 call을 통해 수집된 데이터들.

    _this.pageButtonView.initView();
    _this.searchView.initView();
    _this.gridView01.initView();

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
                fnObj.gridView01.excel("시재조회-"+getFormattedDate(new Date())+".xls");
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
        pageSize: 150
    },
    initView: function () {
        var _this = this;

        this.target = axboot.gridBuilder({
            showRowSelector: true,
            frozenColumnIndex: 0,
            showLineNumber: true,
            showRowSelector: true,
            sortable: true,
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
                {key: 'referDate', label: '조회일자', width: 100, align: 'center',
                    formatter: function formatter() {
                        if(this.value) {
                            return this.value;
                        } else {
                            return '-';
                        }
                    }
                },
                {key: undefined, label: '현금', align: 'center',
                    columns: [
                        {key: 'cashDepositAmt', label: '입금액', width: 100, align: 'right', formatter: "money"},
                        {key: 'cashWithdrawAmt', label: '출금액', width: 100, align: 'right', formatter: "money"},
                        {key: 'cashAmt', label: '잔액', width: 100, align: 'right', formatter: "money"}
                    ]
                },
                {key: undefined, label: '수표', align: 'center',
                    columns: [
                        {key: 'checkDepositAmt', label: '입금액', width: 100, align: 'right', formatter: "money"},
                        {key: 'checkWithdrawAmt', label: '출금액', width: 100, align: 'right', formatter: "money"},
                        {key: 'checkAmt', label: '잔액', width: 100, align: 'right', formatter: "money"}
                    ]
                },
                {key: undefined, label: '지급가능매수', align: 'center',
                    columns: [
                        {key: 'cash10kGiveEnableCount', label: '1만원권', width: 100, align: 'right', formatter: "money"},
                        {key: 'cash50kGiveEnableCount', label: '5만원권', width: 100, align: 'right', formatter: "money"},
                        {key: 'checkGiveEnableCount', label: '수표', width: 100, align: 'right', formatter: "money"}
                    ]
                },
                {key: 'sijeConfirm', label: '확정여부', width: 70, align: 'center',
                    formatter: function formatter() {
                        if(this.value) {
                            return this.value;
                        } else {
                            return '-';
                        }
                    }
                },
                {key: 'txId', label: '업데이트일시', width: 130, align: 'center',
                    formatter: function formatter() {
                        if(this.value) {
                            return this.value;
                        } else {
                            return '-';
                        }
                    }
                }
            ],
            footSum: [
                [
                    {label: "", colspan: 3, align: "center"},
                    {label: "합계", colspan: 2, align: "center"},
                    {key: "cashDepositAmt", collector: "sum", formatter: "money", align: "right"},
                    {key: "cashWithdrawAmt", collector: "sum", formatter: "money", align: "right"},
                    {key: "cashAmt", collector: "sum", formatter: "money", align: "right"},
                    {key: "checkDepositAmt", collector: "sum", formatter: "money", align: "right"},
                    {key: "checkWithdrawAmt", collector: "sum", formatter: "money", align: "right"},
                    {key: "checkAmt", collector: "sum", formatter: "money", align: "right"},
                    {key: "cash10kGiveEnableCount", collector: "sum", formatter: "money", align: "right"},
                    {key: "cash50kGiveEnableCount", collector: "sum", formatter: "money", align: "right"},
                    {key: "checkGiveEnableCount", collector: "sum", formatter: "money", align: "right"}
                ]
            ],
            body: {
                onClick: function () {
                    this.self.select(this.dindex);
                    PARAMS = this.item;
                }
            },
            onPageChange: function (pageNumber) {
                _this.setPageData({pageNumber: pageNumber});
                ACTIONS.dispatch(ACTIONS.PAGE_SEARCH);
            }
        });

        axboot.buttonClick(this, "data-grid-view-01-btn", {
            "findOne": function () {
                ACTIONS.dispatch(ACTIONS.FIND_ONE);
            },
            "findAll": function () {
                ACTIONS.dispatch(ACTIONS.FIND_ALL);
            }
        });
    },
    getData: function (_type) {
        var list = [];
        var _list = this.target.getList(_type);

        if (_type == "selected") {
            list = ax5.util.filter(_list, function () {
                return this.branchCode && this.terminalNo;
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

var buildParams = function (json) {

    var params = JSON.stringify(json);

    params=params.replace(/{/g, "");
    params=params.replace(/}/g, "");
    params=params.replace(/:/g, "=")
    params=params.replace(/,/g, "&");
    params=params.replace(/"/g, "");

    return params;

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
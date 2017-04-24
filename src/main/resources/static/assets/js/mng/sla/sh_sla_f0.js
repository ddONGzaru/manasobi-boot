var fnObj = {};
var ACTIONS = axboot.actionExtend(fnObj, {
    PAGE_SEARCH: function (caller, act, data) {
        axboot.ajax({
            type: "GET",
            url: "/api/v1//mng/sla/sh_sla_f0",
            data: $.extend({}, this.searchView.getData(), this.gridView01.getPageData()),
            callback: function (res) {
                caller.gridView01.setData(res);
            },
            options: {
                onError: viewError
            }
        });
        return false;
    },
    PAGE_SAVE: function (caller, act, data) {
        var saveList = [].concat(caller.gridView01.getData("modified"));
        axboot.ajax({
            type: "PUT",
            url: "/api/v1//mng/sla/sh_sla_f0",
            data: JSON.stringify(saveList),
            callback: function (res) {
                ACTIONS.dispatch(ACTIONS.PAGE_SEARCH);
                axToast.push("저장 작업이 완료되었습니다.");
            },
            options: {
                onError: viewError
            }
        });
    },
    PAGE_DELETE: function (caller, act, data) {
        caller.gridView01.delRow("selected");
        var saveList = [].concat(caller.gridView01.getData("deleted"));
        axboot.ajax({
            type: "PUT",
            url: "/api/v1//mng/sla/sh_sla_f0",
            data: JSON.stringify(saveList),
            callback: function (res) {
                ACTIONS.dispatch(ACTIONS.PAGE_SEARCH);
                axToast.push("삭제 작업이 완료되었습니다.");
            },
            options: {
                onError: pageSearchAndViewError
            }
        });
    },
    ITEM_ADD: function (caller, act, data) {
        caller.gridView01.addRow();
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

// fnObj 기본 함수 스타트와 리사이즈
fnObj.pageStart = function () {
    this.pageButtonView.initView();
    this.searchView.initView();
    this.gridView01.initView();

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
            "save": function () {
                ACTIONS.dispatch(ACTIONS.PAGE_SAVE);
            },
            "delete": function () {
                ACTIONS.dispatch(ACTIONS.PAGE_DELETE);
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
    },
    getData: function () {
        return {
            filter: this.filter.val()
        }
    }
});

/**
 * gridView
 */
fnObj.gridView01 = axboot.viewExtend(axboot.gridView, {
    page: {
        pageNumber: 0,
        pageSize: 20
    },
    initView: function () {
        var _this = this;

        this.target = axboot.gridBuilder({
            showRowSelector: true,
            frozenColumnIndex: 0,
            multipleSelect: true,
            target: $('[data-ax5grid="grid-view-01"]'),
            columns: [
                {key: 'txId', label: '기기번호', width: 100, align: 'left', editor: 'text'},
                {key: 'errorDatetime', label: '장애발생일시', width: 100, align: 'left', editor: 'text'},
                {key: 'calleeChasu', label: '출동차수', width: 100, align: 'left', editor: 'text'},
                {key: 'corpCode', label: '업체', width: 100, align: 'left', editor: 'text'},
                {key: 'jisaCode', label: '지사명', width: 100, align: 'left', editor: 'text'},
                {key: 'branchCode', label: '지점코드', width: 100, align: 'left', editor: 'text'},
                {key: 'branchName', label: '지점명', width: 100, align: 'left', editor: 'text'},
                {key: 'cornerCode', label: '코너코드', width: 100, align: 'left', editor: 'text'},
                {key: 'cornerName', label: '코너명', width: 100, align: 'left', editor: 'text'},
                {key: 'location', label: '위치구분', width: 100, align: 'left', editor: 'text'},
                {key: 'area', label: '지역구분', width: 100, align: 'left', editor: 'text'},
                {key: 'terminalNo', label: '단말번호', width: 100, align: 'left', editor: 'text'},
                {key: 'calleeGubun', label: '출동구분', width: 100, align: 'left', editor: 'text'},
                {key: 'calleeResult', label: '결과', width: 100, align: 'left', editor: 'text'},
                {key: 'calleeReqDatetime', label: '출동요청일시', width: 100, align: 'left', editor: 'text'},
                {key: 'arrivalDatetime', label: '도착일시', width: 100, align: 'left', editor: 'text'},
                {key: 'handleDatetime', label: '조치일시', width: 100, align: 'left', editor: 'text'},
                {key: 'recoverDatetime', label: '복구일시', width: 100, align: 'left', editor: 'text'},
                {key: 'elapsedTime', label: '경과시간', width: 100, align: 'left', editor: 'text'},
                {key: 'elapsedSeconds', label: '경과시간(초)', width: 100, align: 'left', editor: 'text'},
                {key: 'errorContent', label: '장애내용', width: 100, align: 'left', editor: 'text'},
                {key: 'modelName', label: '기종', width: 100, align: 'left', editor: 'text'},
                {key: 'accept', label: '인정유무', width: 100, align: 'left', editor: 'text'},
                {key: 'refuseReason', label: '불인정사유', width: 100, align: 'left', editor: 'text'}
            ],
            body: {
                onClick: function () {
                    this.self.select(this.dindex, {selectedClear: true});
                }
            },
            onPageChange: function (pageNumber) {
                _this.setPageData({
                    pageNumber: pageNumber
                });
                ACTIONS.dispatch(ACTIONS.PAGE_SEARCH);
            }
        });

        axboot.buttonClick(this, "data-grid-view-01-btn", {
            "add": function () {
                ACTIONS.dispatch(ACTIONS.ITEM_ADD);
            }
        });
    },
    getData: function (_type) {
        var list = [];
        var _list = this.target.getList(_type);

        if (_type == "modified" || _type == "deleted") {
            list = ax5.util.filter(_list, function () {
                return this.txId && this.errorDatetime && this.calleeChasu;
            });
        } else {
            list = _list;
        }
        return list;
    },
    addRow: function () {
        this.target.addRow({__created__: true}, "last");
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

var pageSearchAndViewError = function (err) {
    ACTIONS.dispatch(ACTIONS.PAGE_SEARCH);
    confirmToast(err);
}
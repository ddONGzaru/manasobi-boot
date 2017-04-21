var fnObj = {};
var ACTIONS = axboot.actionExtend(fnObj, {
    PAGE_SEARCH: function (caller, act, data) {
        axboot.ajax({
            type: "GET",
            url: "/api/v1//mng/sla/sh_sla_a0",
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
            url: "/api/v1//mng/sla/sh_sla_a0",
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
            url: "/api/v1//mng/sla/sh_sla_a0",
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
                {key: 'regDatetime', label: '등록일시', width: 100, align: 'left', editor: 'text'},
                {key: 'jisaCode', label: '지사명', width: 100, align: 'left', editor: 'text'},
                {key: 'branchCode', label: '지점코드', width: 100, align: 'left', editor: 'text'},
                {key: 'cornerCode', label: '코너코드', width: 100, align: 'left', editor: 'text'},
                {key: 'overhaulDate', label: '점검일', width: 100, align: 'left', editor: 'text'},
                {key: 'branchName', label: '지점명', width: 100, align: 'left', editor: 'text'},
                {key: 'cornerName', label: '코너명', width: 100, align: 'left', editor: 'text'},
                {key: 'operDate', label: '운영일', width: 100, align: 'left', editor: 'text'},
                {key: 'branchGubun', label: '코너형태', width: 100, align: 'left', editor: 'text'},
                {key: 'corpCode', label: '업체', width: 100, align: 'left', editor: 'text'},
                {key: 'takePhotoEnable', label: '사진촬영유무', width: 100, align: 'left', editor: 'text'},
                {key: 'successCount', label: '정상건수', width: 100, align: 'left', editor: 'text'},
                {key: 'overhaulCount', label: '점검건수', width: 100, align: 'left', editor: 'text'},
                {key: 'overhaulResult', label: '점검결과', width: 100, align: 'left', editor: 'text'},
                {key: 'overhaulUnusl', label: '특이사항', width: 100, align: 'left', editor: 'text'},
                {key: 'submitTargetCount', label: '제출대상건수', width: 100, align: 'left', editor: 'text'},
                {key: 'submitCount', label: '제출건수', width: 100, align: 'left', editor: 'text'},
                {key: 'productCondt', label: '상품안내장', width: 100, align: 'left', editor: 'text'},
                {key: 'terminalCondt', label: '자동화기기', width: 100, align: 'left', editor: 'text'},
                {key: 'groundCondt', label: '바닥', width: 100, align: 'left', editor: 'text'},
                {key: 'garbageCondt', label: '휴지통', width: 100, align: 'left', editor: 'text'},
                {key: 'cashEnvelopeCondt', label: '현금봉투', width: 100, align: 'left', editor: 'text'},
                {key: 'posterCondt', label: '포스트', width: 100, align: 'left', editor: 'text'}
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
                return this.regDatetime && this.branchCode && this.cornerCode;
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
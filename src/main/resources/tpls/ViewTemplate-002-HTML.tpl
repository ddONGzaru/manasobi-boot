<!DOCTYPE HTML>
<html xmlns:th="http://www.thymeleaf.org"
      xmlns:layout="http://www.ultraq.net.nz/thymeleaf/layout"
      layout:decorate="~{/layout/base}">

<!-- ===== [ script ] ===== -->
<script layout:fragment="script" type="text/javascript" th:src="@{/assets/js@{JSPath}.js}"></script>
<!-- ===== [ script ] _END_ ===== -->

<!-- ===== [ base-title ] ===== -->
<div layout:fragment="base-title" class="ax-base-title" role="page-title">
    <h1 class="title"><i class="cqc-browser"></i> <span th:text="${pageName}"/></h1>
    <p class="desc" th:text="${pageRemark}"/>
</div>
<!-- ===== [ base-title ] _END_ ===== -->

<!-- ===== [ base-content ] ===== -->
<div layout:fragment="base-content" class="ax-base-content">
    <th:block layout:insert="~{/fragments/page-buttons :: buttons}"/>
    <th:block layout:insert="~{/fragments/page-header  :: search-t(id='searchView0', label='검색조건')}"/>
    <th:block layout:insert="~{/fragments/page-content :: content-panels}" th:with="orientation='vertical',
        attr1='{width: \'640\'}', style1='padding-right: 10px',
        attr2='{width: \'*\'}',   style2='padding: 0px 10px'">

        <!-- ===== [ left-panel ] ===== -->
        <div layout:fragment="panel-1">

            <div class="ax-button-group" data-fit-height-aside="grid-view-01">
                <div class="left">
                    <h2><i class="cqc-list"></i> Parent List</h2>
                </div>
                <div class="right"></div>
            </div>
            <div data-ax5grid="grid-view-01" data-fit-height-content="grid-view-01" style="height: 300px;"></div>

        </div>
        <!-- ===== [ left-panel _END_ ] ===== -->

        <!-- ===== [ right-panel ] ===== -->
        <div layout:fragment="panel-2">

            <div class="ax-button-group" role="panel-header">
                <div class="left">
                    <h2><i class="cqc-news"></i> Parent Info</h2>
                </div>
                <div class="right">
                    <button type="button" class="btn btn-default" data-form-view-01-btn="form-clear">
                        <i class="cqc-erase"></i> 신규
                    </button>
                </div>
            </div>

            <form name="formView01" id="formView01" method="post" onsubmit="return false">
                <div data-ax-tbl class="ax-search-tbl" minWidth="500px">
                    <th:block layout:insert="~{/fragments/table :: tr-td(text='키(KEY) *', style='width: 300px')}">
                        <div layout:fragment="wrap">
                            <input type="text" data-ax-path="key" title="키(KEY)" class="form-control" data-ax-validate="required"/>
                        </div>
                    </th:block>
                    <th:block layout:insert="~{/fragments/table :: tr-td(text='값(VALUE)', style='width: 300px')}">
                        <div layout:fragment="wrap">
                            <input type="text" data-ax-path="value" class="form-control"/>
                        </div>
                    </th:block>
                    <th:block layout:insert="~{/fragments/table :: tr-td2(text1='ETC1', style1='width: 300px', text2='ETC2', style2='width: 300px')}">
                        <div layout:fragment="wrap-1">
                            <input type="text" data-ax-path="etc1" class="form-control"/>
                        </div>
                        <div layout:fragment="wrap-2">
                            <select data-ax-path="etc2" class="form-control W100">
                                <option value="ko_KR">대한민국</option>
                                <option value="en_US">미국</option>
                            </select>
                        </div>
                    </th:block>
                    <th:block layout:insert="~{/fragments/table :: tr-td2(text1='ETC3', style1='width: 300px', text2='계정상태', style2='width: 220px')}">
                        <div layout:fragment="wrap-1">
                            <select data-ax-path="etc3" class="form-control W100">
                                <option value="Y">사용</option>
                                <option value="N">사용안함</option>
                            </select>
                        </div>
                        <div layout:fragment="wrap-2">
                            <th:block layout:insert="~{/fragments/common-code :: select(codeType='USER_STATUS', dataPath='userStatus')}"/>
                        </div>
                    </th:block>
                    <th:block layout:insert="~{/fragments/table :: tr-td(text='ETC4', style='width: 100%')}">
                        <div layout:fragment="wrap">
                            <textarea data-ax-path="etc4" class="form-control"></textarea>
                        </div>
                    </th:block>

                </div>
            </form>

            <div class="H5"></div>
            <div class="ax-button-group">
                <div class="left">
                    <h3><i class="cqc-list"></i> Child List</h3>
                </div>
                <div class="right">
                    <button type="button" class="btn btn-default" data-grid-view-02-btn="item-add">
                        <i class="cqc-plus"></i> 추가
                    </button>
                    <button type="button" class="btn btn-default" data-grid-view-02-btn="item-remove">
                        <i class="cqc-minus"></i> 삭제
                    </button>
                </div>
            </div>

            <div data-ax5grid="grid-view-02" style="height: 300px;"></div>

        </div>
        <!-- ===== [ right-panel ] _END_ ===== -->
    </th:block>
</div>
<!-- ===== [ base-content ] _END_ ===== -->
</html>
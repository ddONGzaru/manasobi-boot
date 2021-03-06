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
    <th:block layout:insert="~{/fragments/page-header  :: search-t(id='searchView0', label='검색')}"/>
    <th:block layout:insert="~{/fragments/page-content :: content(orientation='horizontal', attr='{width: *}')}">

        <!-- ===== [ page-content ] ===== -->
        <div layout:fragment="content-detail">
            <div class="ax-button-group" data-fit-height-aside="grid-view-01">
                <div class="left">
                    <h2><i class="cqc-list"></i> 프로그램 목록</h2>
                </div>
                <div class="right">
                    <button type="button" class="btn btn-default" data-grid-view-01-btn="add"><i class="cqc-circle-with-plus"></i> 추가</button>
                </div>
            </div>
            <div data-ax5grid="grid-view-01" data-fit-height-content="grid-view-01" style="height: 300px;"></div>
            <div class="H10"></div>
        </div>
        <!-- ===== [ page-content ] _END_ ===== -->
    </th:block>
</div>
<!-- ===== [ base-content ] _END_ ===== -->
</html>
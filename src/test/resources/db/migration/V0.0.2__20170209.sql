/**
######################################################################
##
## BGF 신한은행 위탁관리 :: Flyway 스크립트
##
######################################################################
**/

/**
[초기데이터 생성]
## 01. 장애/민원 관리 관련 데이터 생성
##   - 장애 모니터링
##   - 장애 이력
**/

/*___ atms_auth_group_map ___*/
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 36, 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-07 16:36:59.042000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-07 16:37:22.761000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 37, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-08 17:52:24.841000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-08 17:52:24.841000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');

/*___ atms_menu ___*/
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (35, 'SYSTEM_MANAGER', '장애/민원 관리', null, 0, null, 3, TO_TIMESTAMP('2017-02-07 16:36:44.381000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-07 16:37:23.553000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
/*INSERT INTO MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (36, 'SYSTEM_MANAGER', '장애 모니터링', 'error_status', 1, 35, 0, TO_TIMESTAMP('2017-02-07 16:36:45.897000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-07 16:37:23.557000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');*/
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (37, 'SYSTEM_MANAGER', '장애통보 이력 및 관리', 'sh01001110', 1, 35, 1, TO_TIMESTAMP('2017-02-08 17:52:03.579000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-08 17:52:24.985000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');

/*___ atms_program ___*/
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('error_status', '[장애/민원 관리] 장애 모니터링', '/mng/error/error_status', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-07 16:34:44.063000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-07 16:37:13.662000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh01001110', '[장애/민원 관리] 장애통보 이력 및 관리', '/mng/error/sh01001110', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-08 17:49:14.779000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-08 17:50:08.843000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
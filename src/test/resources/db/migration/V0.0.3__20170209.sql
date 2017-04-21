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
##   - 출동요청 이력
##   - 도착예정 이력
##   - 도착통보 이력
##   - 조치결과 이력
**/

/*___ atms_auth_group_map ___*/
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 38, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-09 17:54:28', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 17:54:28', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 39, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-09 17:56:27', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 17:56:27', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 40, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-09 17:58:10', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 17:58:10', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 41, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-09 18:00:18', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 18:00:18', '%Y/%m/%d %H:%i:%s'), 'system');

/*___ atms_menu ___*/
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (38, 'SYSTEM_MANAGER', '출동요청 이력', 'sh01001120', 1, 35, 2, date_format('2017-02-09 17:54:15', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 18:00:18', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (39, 'SYSTEM_MANAGER', '도착예정 이력', 'sh01001130', 1, 35, 3, date_format('2017-02-09 17:56:11', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 18:00:18', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (40, 'SYSTEM_MANAGER', '도착통보 이력', 'sh01001140', 1, 35, 4, date_format('2017-02-09 17:57:59', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 18:00:18', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (41, 'SYSTEM_MANAGER', '조치결과 이력', 'sh01001150', 1, 35, 5, date_format('2017-02-09 18:00:06', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 18:00:18', '%Y/%m/%d %H:%i:%s'), 'system');

/*___ atms_program ___*/
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh01001120', '[장애/민원 관리] 출동요청 이력', '/mng/error/sh01001120', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-09 17:52:55', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 17:53:26', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh01001130', '[장애/민원 관리] 도착예정 이력', '/mng/error/sh01001130', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-09 17:55:28', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 17:55:55', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh01001140', '[장애/민원 관리] 도착통보 이력', '/mng/error/sh01001140', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-09 17:57:26', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 17:57:37', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh01001150', '[장애/민원 관리] 조치결과 이력', '/mng/error/sh01001150', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-09 17:59:27', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 17:59:52', '%Y/%m/%d %H:%i:%s'), 'system');
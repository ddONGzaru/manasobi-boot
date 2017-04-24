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
##   - 출동취소 이력
##   - 민원관리
**/

/*___ atms_auth_group_map ___*/
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 93, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-09 18:00:18', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 18:00:18', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 95, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-09 18:00:18', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 18:00:18', '%Y/%m/%d %H:%i:%s'), 'system');


/*___ atms_menu ___*/
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (93, 'SYSTEM_MANAGER', '출동취소 이력', 'sh01001160', 1, 35, 6, date_format('2017-02-28 14:41:37', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 14:41:51', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (95, 'SYSTEM_MANAGER', '민원관리', 'minwon_mng', 1, 35, 11, date_format('2017-02-28 14:41:37', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 14:41:51', '%Y/%m/%d %H:%i:%s'), 'system');

/*___ atms_program ___*/
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh01001160', '[장애/민원 관리] 출동취소 이력', '/mng/error/sh01001160', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-09 17:52:55', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 17:53:26', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('minwon_mng', '[장애/민원 관리] 민원관리', '/mng/error/minwon_mng', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-09 17:52:55', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 17:53:26', '%Y/%m/%d %H:%i:%s'), 'system');

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
**/

/*___ atms_auth_group_map ___*/
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY) 
VALUES ('S0001', 94, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-03-24 14:56:50', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-24 14:56:50', '%Y/%m/%d %H:%i:%s'), 'system');

/*___ atms_menu ___*/
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (94, 'SYSTEM_MANAGER', '환경/시설물 관리', 'corner_manage', 1, 42, 20, date_format('2017-03-24 14:56:03', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-24 14:56:51', '%Y/%m/%d %H:%i:%s'), 'system');

/*___ atms_program ___*/
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('corner_manage', '[자산관리] 환경/시설물관리', '/mng/equip/corner_manage', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-03-24 14:55:01', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-24 14:56:38', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh05001110', '[자산관리] 코너일일점검결과', '/mng/equip/sh05001110', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-03-24 14:58:19', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-24 14:58:19', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh05001120', '[자산관리] 코너일일점검사진정보', '/mng/equip/sh05001120', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-03-24 14:58:45', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-24 14:58:45', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh05001130', '[자산관리] 코너환경관리결과', '/mng/equip/sh05001130', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-03-24 14:59:01', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-24 14:59:01', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh05001140', '[자산관리] 코너환경관리사진정보', '/mng/equip/sh05001140', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-03-24 14:59:19', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-24 14:59:19', '%Y/%m/%d %H:%i:%s'), 'system');
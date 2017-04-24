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
VALUES ('S0002', 97, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 98, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 99, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 100, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 101, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 103, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 105, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 106, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 107, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 109, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 110, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 111, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 112, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 113, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 114, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 115, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 116, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 117, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 118, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 119, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 120, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 121, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 122, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 123, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 124, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 125, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 126, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 127, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 128, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 129, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 130, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 131, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 132, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 133, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 134, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 135, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 136, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');


/*___ atms_menu ___*/
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (96, 'USER', '장애/민원 관리', null, 0, null, 3, date_format('2017-02-07 16:36:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-07 16:37:23', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (97, 'USER', '장애통보 이력 및 관리', 'sh01001110', 1, 96, 1, date_format('2017-02-08 17:52:03', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-08 17:52:24', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (98, 'USER', '출동요청 이력', 'sh01001120', 1, 96, 2, date_format('2017-02-09 17:54:15', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 18:00:18', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (99, 'USER', '도착예정 이력', 'sh01001130', 1, 96, 3, date_format('2017-02-09 17:56:11', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 18:00:18', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (100, 'USER', '도착통보 이력', 'sh01001140', 1, 96, 4, date_format('2017-02-09 17:57:59', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 18:00:18', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (101, 'USER', '조치결과 이력', 'sh01001150', 1, 96, 5, date_format('2017-02-09 18:00:06', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 18:00:18', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (102, 'USER', '자산관리', null, 0, null, 4, date_format('2017-02-15 13:46:33', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 13:47:37', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (103, 'USER', '작업일정통보 조회', 'sh02001100', 1, 102, 0, date_format('2017-02-15 13:46:33', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 13:47:37', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (104, 'USER', '기타관리', null, 0, null, 6, date_format('2017-02-15 14:25:50', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 14:26:50', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (105, 'USER', '결번요청', 'sh04001110', 1, 104, 0, date_format('2017-02-15 14:26:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 14:26:50', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (106, 'USER', '기타작업정보', 'sh02001280', 1, 102, 18, date_format('2017-02-15 15:24:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 15:25:21', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (107, 'USER', '일회성비용청구', 'sh02001290', 1, 102, 19, date_format('2017-02-15 15:40:22', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 15:40:56', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (108, 'USER', '시재 / 현송 관리', null, 0, null, 5, date_format('2017-02-15 15:56:04', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 15:56:26', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (109, 'USER', '은행현송예측통보이력조회', 'sh03001170', 1, 108, 0, date_format('2017-02-15 15:56:14', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 15:56:26', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (110, 'USER', '시재조회', 'sh03001110', 1, 108, 1, date_format('2017-02-15 16:13:54', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 16:14:33', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (111, 'USER', '마감조회', 'sh03001130', 1, 108, 3, date_format('2017-02-15 16:22:21', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 16:22:41', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (112, 'USER', '회수자금결과통보', 'sh03001140', 1, 108, 4, date_format('2017-02-15 16:30:19', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 16:30:33', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (113, 'USER', '미처리금액보고서', 'sh03001150', 1, 108, 5, date_format('2017-02-15 16:41:55', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 16:47:30', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (114, 'USER', '현송계획보고', 'sh03001180', 1, 108, 6, date_format('2017-02-15 17:08:35', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:08:49', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (115, 'USER', '운영자금청구서통보', 'sh03001190', 1, 108, 8, date_format('2017-02-15 17:23:35', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:24:03', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (116, 'USER', '운영자금인수정보통보', 'sh03001220', 1, 108, 11, date_format('2017-02-15 17:48:29', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:48:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (117, 'USER', '출납과잉금반환내역서', 'sh03001230', 1, 108, 12, date_format('2017-02-15 17:53:29', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:53:45', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (118, 'USER', '용역료관리', 'sh04001130', 1, 104, 2, date_format('2017-02-15 18:42:52', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 18:43:03', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (119, 'USER', '기기점검결과', 'sh04001140', 1, 104, 3, date_format('2017-02-15 18:50:27', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 18:50:39', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (120, 'USER', '페널티적용명세통보', 'sh04001150', 1, 104, 4, date_format('2017-02-15 18:54:51', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 18:55:02', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (121, 'USER', '기기정보전문', 'sh04001170', 1, 104, 5, date_format('2017-02-15 18:59:50', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 19:00:02', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (122, 'USER', 'CRT번호등록/변경', 'sh04001180', 1, 104, 6, date_format('2017-02-15 19:06:55', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 19:07:04', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (123, 'USER', '관리자메시지', 'sh04001190', 1, 104, 7, date_format('2017-02-15 19:12:56', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 19:13:06', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (124, 'USER', '코너입퇴실시간정보', 'sh04001200', 1, 104, 8, date_format('2017-02-15 19:18:08', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 19:18:20', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (125, 'USER', '코너현황', 'corner_status', 1, 102, 1, date_format('2017-02-16 17:00:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:45', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (126, 'USER', '기기현황', 'terminal_status', 1, 102, 6, date_format('2017-02-16 17:13:03', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:45', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (127, 'USER', '시설물관리', 'facility_status', 1, 102, 11, date_format('2017-02-16 17:18:33', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:45', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (128, 'USER', '지사별 마감일지', 'jisa_sije_close', 1, 108, 13, date_format('2017-02-15 17:53:29', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:53:45', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (129, 'USER', '거래내역조회', 'sh03001120', 1, 108, 2, date_format('2017-02-23 17:12:56', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 17:12:56', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (130, 'USER', '요원정보조회', 'sh04001120', 1, 104, 1, date_format('2017-02-28 13:46:07', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 13:46:20', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (131, 'USER', '동시다발장애 관리', 'sh01001180', 1, 96, 7, date_format('2017-02-28 14:05:46', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 14:06:06', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (132, 'USER', '후처리내역 관리', 'sh01001230', 1, 96, 9, date_format('2017-02-28 14:34:02', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 14:34:33', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (133, 'USER', '요원정보관리', 'agent_mng', 1, 108, 9, date_format('2017-02-28 17:02:49', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 17:03:03', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (134, 'USER', '출동취소 이력', 'sh01001160', 1, 96, 6, date_format('2017-02-28 14:41:37', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 14:41:51', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (135, 'USER', '민원관리', 'minwon_mng', 1, 96, 11, date_format('2017-02-28 14:41:37', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 14:41:51', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (136, 'USER', '환경/시설물 관리', 'corner_manage', 1, 102, 20, date_format('2017-03-24 14:56:03', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-24 14:56:51', '%Y/%m/%d %H:%i:%s'), 'system');

/*___ atms_program ___*/

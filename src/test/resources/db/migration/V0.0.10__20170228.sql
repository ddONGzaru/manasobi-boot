/**
######################################################################
##
## BGF 신한은행 위탁관리 :: Flyway 스크립트
##
######################################################################
**/

/**
[초기데이터 생성]
## 01. 공통코드 입력 - 출동구분
**/

/*___ atms_auth_group_map ___*/
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 86, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-28 13:21:20', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 13:21:20', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 87, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-28 13:46:19', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 13:46:19', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 88, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-28 14:06:04', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 14:06:04', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 89, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-28 14:19:58', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 14:19:58', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 90, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-28 14:34:32', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 14:34:32', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 91, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-28 14:41:50', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 14:41:50', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 92, 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-28 17:03:02', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 17:03:02', '%Y/%m/%d %H:%i:%s'), 'system');

/*___ atms_menu ___*/
-- INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
-- VALUES (86, 'SYSTEM_MANAGER', '시설물 교체/변경 조회', 'sh02001220', 1, 42, 16, date_format('2017-02-28 13:21:06.056000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 13:21:21.375000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (87, 'SYSTEM_MANAGER', '요원정보조회', 'sh04001120', 1, 44, 1, date_format('2017-02-28 13:46:07', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 13:46:20', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (88, 'SYSTEM_MANAGER', '동시다발장애 관리', 'sh01001180', 1, 35, 7, date_format('2017-02-28 14:05:46', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 14:06:06', '%Y/%m/%d %H:%i:%s'), 'system');
/*INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (89, 'SYSTEM_MANAGER', '동시다발장애 조치결과', 'sh01001190', 1, 35, 8, date_format('2017-02-28 14:19:40.840000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 14:19:59.398000', '%Y/%m/%d %H:%i:%s'), 'system');*/
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (90, 'SYSTEM_MANAGER', '후처리내역 관리', 'sh01001230', 1, 35, 9, date_format('2017-02-28 14:34:02', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 14:34:33', '%Y/%m/%d %H:%i:%s'), 'system');
/*INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (91, 'SYSTEM_MANAGER', '후처리내역 조치예정/완료', 'sh01001240', 1, 35, 10, date_format('2017-02-28 14:41:37.681000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 14:41:51.608000', '%Y/%m/%d %H:%i:%s'), 'system');*/
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (92, 'SYSTEM_MANAGER', '요원정보관리', 'agent_mng', 1, 44, 9, date_format('2017-02-28 17:02:49', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 17:03:03', '%Y/%m/%d %H:%i:%s'), 'system');

/*___ atms_program ___*/
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh02001220', '[자산관리] 시설물 교체/변경 조회', '/mng/equip/sh02001220', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-28 13:20:19.129000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 13:20:35', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh04001120', '[기타 전문] 요원정보조회', '/mng/etc/sh04001120', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-28 13:45:30.336000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 13:45:39', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh01001180', '[장애/민원 관리] 동시다발장애 관리', '/mng/error/sh01001180', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-28 14:05:15.309000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 14:05:29', '%Y/%m/%d %H:%i:%s'), 'system');
/*INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh01001190', '[장애/민원 관리] 동시다발장애 조치결과', '/mng/error/sh01001190', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-28 14:05:15.309000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 14:05:29.520000', '%Y/%m/%d %H:%i:%s'), 'system');*/
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh01001230', '[장애/민원 관리] 후처리내역 관리', '/mng/error/sh01001230', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-28 14:33:36.961000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 14:33:49', '%Y/%m/%d %H:%i:%s'), 'system');
/*INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh01001240', '[장애/민원 관리] 후처리내역 조치예정/완료', '/mng/error/sh01001240', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-28 14:41:14.213000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 14:41:23.011000', '%Y/%m/%d %H:%i:%s'), 'system');*/
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('agent_mng', '[기타관리] 요원정보관리', '/mng/etc/agent_mng', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-28 17:02:13.019000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 17:02:28', '%Y/%m/%d %H:%i:%s'), 'system');

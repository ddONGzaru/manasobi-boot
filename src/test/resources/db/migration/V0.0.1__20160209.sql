/**
######################################################################
##
## BGF 신한은행 위탁관리 :: Flyway 스크립트
##
######################################################################
**/

/**
[초기데이터 생성]
## 01. atms_auth_group_map
## 02. atms_common_code
## 03. atms_menu
## 04. atms_program
## 05. atms_user
## 06. atms_user_auth
## 07. atms_user_role
## 08. parent_sample
## 09. child_sample
**/

/*___ atms_auth_group_map ___*/
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 1, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 14:17:59.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2016-12-21 14:17:59.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 2, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 14:57:38.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2016-12-21 14:57:38.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'test');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 3, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 14:17:59.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2016-12-21 14:17:59.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 4, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 14:54:55.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2016-12-21 14:54:55.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 5, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 14:18:00.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2016-12-21 14:18:00.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 6, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 14:18:00.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2016-12-21 14:18:00.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 7, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 14:18:00.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2016-12-21 14:18:00.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 9, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 14:18:01.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2016-12-21 14:18:01.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 10, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 14:18:01.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2016-12-21 14:18:01.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 11, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 16:19:01.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2016-12-21 16:19:01.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 12, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 14:18:01.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-09 17:53:26.280000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 13, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 14:18:02.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2016-12-21 14:18:02.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 14, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 14:18:02.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2016-12-21 14:18:02.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 15, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 14:18:02.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2016-12-21 14:18:02.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 16, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 15:26:06.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2016-12-21 15:26:06.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'test');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 19, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 16:40:21.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2016-12-21 16:40:21.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 25, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 16:46:05.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2016-12-21 16:46:05.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 26, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 17:03:02.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2016-12-21 17:03:02.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 27, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 17:05:08.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2016-12-21 17:05:08.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 29, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-01-19 11:21:33.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-01-19 11:21:33.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 30, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-01-23 10:55:36.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-01-23 10:55:36.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 32, 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'N', TO_TIMESTAMP('2017-01-23 12:46:44.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-01-23 12:46:44.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 33, 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'N', 'N', TO_TIMESTAMP('2017-01-23 17:37:31.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-01-23 17:37:31.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 4, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 14:54:55.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2016-12-21 14:54:55.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 16, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 15:26:06.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'test', TO_TIMESTAMP('2016-12-21 15:26:06.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'test');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 18, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 16:07:12.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2016-12-21 16:07:12.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 19, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 16:40:21.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2016-12-21 16:40:21.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 21, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 16:24:09.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2016-12-21 16:24:09.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0002', 25, 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2016-12-21 16:46:05.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2016-12-21 16:46:05.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 34, 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'N', 'N', 'N', TO_TIMESTAMP('2017-01-23 17:37:31.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-01-23 17:37:31.000000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');

/*___ atms_menu ___*/
INSERT INTO ATMS_MENU ("MENU_ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "LEVEL_M", "MENU_GRP_CD", "MENU_NM", "PARENT_ID", "PROG_CD", "SORT")
VALUES (1, '2017-01-23 16:53:03', 'system', '2017-01-23 16:53:03', 'system', 0, 'SYSTEM_MANAGER', '시스템관리', NULL, NULL, 0);
INSERT INTO ATMS_MENU ("MENU_ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "LEVEL_M", "MENU_GRP_CD", "MENU_NM", "PARENT_ID", "PROG_CD", "SORT")
VALUES (2, '2017-01-23 16:53:03', 'system', '2017-01-23 16:53:03', 'system', 1, 'SYSTEM_MANAGER', '공통코드 관리', 1, 'system-config-common-code', 0);
INSERT INTO ATMS_MENU ("MENU_ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "LEVEL_M", "MENU_GRP_CD", "MENU_NM", "PARENT_ID", "PROG_CD", "SORT")
VALUES (3, '2017-01-23 16:53:03', 'system', '2017-01-23 16:53:03', 'system', 1, 'SYSTEM_MANAGER', '프로그램 관리', 1, 'system-config-program', 1);
INSERT INTO ATMS_MENU ("MENU_ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "LEVEL_M", "MENU_GRP_CD", "MENU_NM", "PARENT_ID", "PROG_CD", "SORT")
VALUES (4, '2017-01-23 16:53:03', 'system', '2017-01-23 16:53:03', 'system', 1, 'SYSTEM_MANAGER', '메뉴관리', 1, 'system-config-menu', 2);
INSERT INTO ATMS_MENU ("MENU_ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "LEVEL_M", "MENU_GRP_CD", "MENU_NM", "PARENT_ID", "PROG_CD", "SORT")
VALUES (5, '2017-01-23 16:53:03', 'system', '2017-01-23 16:53:03', 'system', 1, 'SYSTEM_MANAGER', '사용자 관리', 1, 'system-auth-user', 3);
INSERT INTO ATMS_MENU ("MENU_ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "LEVEL_M", "MENU_GRP_CD", "MENU_NM", "PARENT_ID", "PROG_CD", "SORT")
VALUES (6, '2017-01-23 16:53:03', 'system', '2017-01-23 16:53:03', 'system', 1, 'SYSTEM_MANAGER', '에러로그 조회', 1, 'system-operation-log', 4);
INSERT INTO ATMS_MENU ("MENU_ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "LEVEL_M", "MENU_GRP_CD", "MENU_NM", "PARENT_ID", "PROG_CD", "SORT")
VALUES (7, '2017-01-23 16:53:03', 'system', '2017-01-23 16:53:03', 'system', 0, 'SYSTEM_MANAGER', '레이아웃 샘플', NULL, NULL, 1);
INSERT INTO ATMS_MENU ("MENU_ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "LEVEL_M", "MENU_GRP_CD", "MENU_NM", "PARENT_ID", "PROG_CD", "SORT")
VALUES (8, '2017-01-23 16:53:03', 'system', '2017-01-23 16:53:03', 'system', 1, 'SYSTEM_MANAGER', '기본템플릿', 7, NULL, 0);
INSERT INTO ATMS_MENU ("MENU_ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "LEVEL_M", "MENU_GRP_CD", "MENU_NM", "PARENT_ID", "PROG_CD", "SORT")
VALUES (9, '2017-01-23 16:53:03', 'system', '2017-01-23 16:53:03', 'system', 1, 'SYSTEM_MANAGER', '좌우레이아웃', 7, 'vertical-layout', 1);
INSERT INTO ATMS_MENU ("MENU_ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "LEVEL_M", "MENU_GRP_CD", "MENU_NM", "PARENT_ID", "PROG_CD", "SORT")
VALUES (10, '2017-01-23 16:53:03', 'system', '2017-01-23 16:53:03', 'system', 1, 'SYSTEM_MANAGER', '상하레이아웃', 7, 'horizontal-layout', 2);
INSERT INTO ATMS_MENU ("MENU_ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "LEVEL_M", "MENU_GRP_CD", "MENU_NM", "PARENT_ID", "PROG_CD", "SORT")
VALUES (11, '2017-01-23 16:53:03', 'system', '2017-01-23 16:53:03', 'system', 1, 'SYSTEM_MANAGER', '탭레이아웃', 7, 'tab-layout', 3);
INSERT INTO ATMS_MENU ("MENU_ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "LEVEL_M", "MENU_GRP_CD", "MENU_NM", "PARENT_ID", "PROG_CD", "SORT")
VALUES (12, '2017-01-23 16:53:03', 'system', '2017-01-23 16:53:03', 'system', 1, 'SYSTEM_MANAGER', '그리드 - 폼 템플릿', 7, 'grid-form', 4);
INSERT INTO ATMS_MENU ("MENU_ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "LEVEL_M", "MENU_GRP_CD", "MENU_NM", "PARENT_ID", "PROG_CD", "SORT")
VALUES (13, '2017-01-23 16:53:03', 'system', '2017-01-23 16:53:03', 'system', 1, 'SYSTEM_MANAGER', '그리드 - 탭폼 템플릿', 7, 'grid-tabform', 5);
INSERT INTO ATMS_MENU ("MENU_ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "LEVEL_M", "MENU_GRP_CD", "MENU_NM", "PARENT_ID", "PROG_CD", "SORT")
VALUES (14, '2017-01-23 16:53:03', 'system', '2017-01-23 16:53:03', 'system', 1, 'SYSTEM_MANAGER', '그리드 - 모달 템플릿', 7, 'grid-modal', 6);
INSERT INTO ATMS_MENU ("MENU_ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "LEVEL_M", "MENU_GRP_CD", "MENU_NM", "PARENT_ID", "PROG_CD", "SORT")
VALUES (15, '2017-01-23 16:53:03', 'system', '2017-01-23 16:53:03', 'system', 1, 'SYSTEM_MANAGER', 'AX5UI샘플', 7, 'ax5ui-sample', 7);
INSERT INTO ATMS_MENU ("MENU_ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "LEVEL_M", "MENU_GRP_CD", "MENU_NM", "PARENT_ID", "PROG_CD", "SORT")
VALUES (28, '2017-01-23 16:53:03', 'system', '2017-01-23 16:53:03', 'system', 0, 'SYSTEM_MANAGER', '개발자도구', NULL, NULL, 2);
INSERT INTO ATMS_MENU ("MENU_ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "LEVEL_M", "MENU_GRP_CD", "MENU_NM", "PARENT_ID", "PROG_CD", "SORT")
VALUES (29, '2017-01-23 16:53:03', 'system', '2017-01-23 16:53:03', 'system', 1, 'SYSTEM_MANAGER', 'Model Extractor', 28, 'model-extractor', 0);
INSERT INTO ATMS_MENU ("MENU_ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "LEVEL_M", "MENU_GRP_CD", "MENU_NM", "PARENT_ID", "PROG_CD", "SORT")
VALUES (31, '2017-01-23 16:53:03', 'system', '2017-01-23 16:53:03', 'system', 1, 'SYSTEM_MANAGER', '페이지 + 모델 작성', 28, NULL, 1);
INSERT INTO ATMS_MENU ("MENU_ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "LEVEL_M", "MENU_GRP_CD", "MENU_NM", "PARENT_ID", "PROG_CD", "SORT")
VALUES (32, '2017-01-23 16:53:03', 'system', '2017-01-23 16:53:03', 'system', 2, 'SYSTEM_MANAGER', '템플릿-001', 31, 'template-type-001', 0);
INSERT INTO ATMS_MENU ("MENU_ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "LEVEL_M", "MENU_GRP_CD", "MENU_NM", "PARENT_ID", "PROG_CD", "SORT")
VALUES (33, '2017-01-23 16:53:03', 'system', '2017-01-23 16:53:03', 'system', 2, 'SYSTEM_MANAGER', '템플릿-002', 31, 'template-type-002', 1);
INSERT INTO ATMS_MENU ("MENU_ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "LEVEL_M", "MENU_GRP_CD", "MENU_NM", "PARENT_ID", "PROG_CD", "SORT")
VALUES (34, '2017-01-23 16:53:03', 'system', '2017-01-23 16:53:03', 'system', 2, 'SYSTEM_MANAGER', '템플릿-003', 31, 'template-type-003', 2);

/*___ atms_program ___*/
INSERT INTO ATMS_PROGRAM ("PROG_CD", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "AUTH_CHECK", "DEL_AH", "EXL_AH", "FN1_AH", "FN2_AH", "FN3_AH", "FN4_AH", "FN5_AH", "PROG_NM", "PROG_PH", "REMARK", "SAV_AH", "SCH_AH", "TARGET")
VALUES ('ax5ui-sample', '2017-01-23 12:45:35', 'system', '2016-12-21 14:17:47', 'system', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '[샘플] AX5UI', '/samples/ax5ui-sample', NULL, 'Y', 'Y', '_self');
INSERT INTO ATMS_PROGRAM ("PROG_CD", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "AUTH_CHECK", "DEL_AH", "EXL_AH", "FN1_AH", "FN2_AH", "FN3_AH", "FN4_AH", "FN5_AH", "PROG_NM", "PROG_PH", "REMARK", "SAV_AH", "SCH_AH", "TARGET")
VALUES ('vertical-layout', '2017-01-23 12:45:29', 'system', '2016-12-21 14:17:51', 'system', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '[샘플] 좌우레이아웃', '/samples/vertical-layout', NULL, 'N', 'N', '_self');
INSERT INTO ATMS_PROGRAM ("PROG_CD", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "AUTH_CHECK", "DEL_AH", "EXL_AH", "FN1_AH", "FN2_AH", "FN3_AH", "FN4_AH", "FN5_AH", "PROG_NM", "PROG_PH", "REMARK", "SAV_AH", "SCH_AH", "TARGET")
VALUES ('grid-form', '2017-01-23 12:45:38', 'system', '2016-12-21 14:17:48', 'system', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '[샘플] 그리드&폼 템플릿', '/samples/grid-form', NULL, 'Y', 'Y', '_self');
INSERT INTO ATMS_PROGRAM ("PROG_CD", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "AUTH_CHECK", "DEL_AH", "EXL_AH", "FN1_AH", "FN2_AH", "FN3_AH", "FN4_AH", "FN5_AH", "PROG_NM", "PROG_PH", "REMARK", "SAV_AH", "SCH_AH", "TARGET")
VALUES ('grid-modal', '2017-01-23 12:45:41', 'system', '2016-12-21 14:17:48', 'system', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '[샘플] 모달 템플릿', '/samples/grid-modal', NULL, 'Y', 'Y', '_self');
INSERT INTO ATMS_PROGRAM ("PROG_CD", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "AUTH_CHECK", "DEL_AH", "EXL_AH", "FN1_AH", "FN2_AH", "FN3_AH", "FN4_AH", "FN5_AH", "PROG_NM", "PROG_PH", "REMARK", "SAV_AH", "SCH_AH", "TARGET")
VALUES ('grid-tabform', '2017-01-23 12:45:43', 'system', '2016-12-21 14:17:48', 'system', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '[샘플] 그리드&탭폼 템플릿', '/samples/grid-tabform', NULL, 'Y', 'Y', '_self');
INSERT INTO ATMS_PROGRAM ("PROG_CD", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "AUTH_CHECK", "DEL_AH", "EXL_AH", "FN1_AH", "FN2_AH", "FN3_AH", "FN4_AH", "FN5_AH", "PROG_NM", "PROG_PH", "REMARK", "SAV_AH", "SCH_AH", "TARGET")
VALUES ('horizontal-layout', '2017-01-23 12:45:46', 'system', '2016-12-21 14:17:48', 'system', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '[샘플] 상하레이아웃', '/samples/horizontal-layout', NULL, 'N', 'N', '_self');
INSERT INTO ATMS_PROGRAM ("PROG_CD", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "AUTH_CHECK", "DEL_AH", "EXL_AH", "FN1_AH", "FN2_AH", "FN3_AH", "FN4_AH", "FN5_AH", "PROG_NM", "PROG_PH", "REMARK", "SAV_AH", "SCH_AH", "TARGET")
VALUES ('model-extractor', '2017-01-19 14:42:15', 'system', '2017-01-19 14:42:15', 'system', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '[개발자 도구] Model Extractor', '/devtools/model-extractor', NULL, 'N', 'Y', '_self');
INSERT INTO ATMS_PROGRAM ("PROG_CD", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "AUTH_CHECK", "DEL_AH", "EXL_AH", "FN1_AH", "FN2_AH", "FN3_AH", "FN4_AH", "FN5_AH", "PROG_NM", "PROG_PH", "REMARK", "SAV_AH", "SCH_AH", "TARGET")
VALUES ('system-auth-user', '2017-01-19 14:42:15', 'system', '2017-01-19 14:42:15', 'system', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '[시스템] 사용자관리', '/system/system-auth-user', NULL, 'Y', 'Y', '_self');
INSERT INTO ATMS_PROGRAM ("PROG_CD", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "AUTH_CHECK", "DEL_AH", "EXL_AH", "FN1_AH", "FN2_AH", "FN3_AH", "FN4_AH", "FN5_AH", "PROG_NM", "PROG_PH", "REMARK", "SAV_AH", "SCH_AH", "TARGET")
VALUES ('system-config-common-code', '2017-01-19 14:42:15', 'system', '2017-01-19 14:42:15', 'system', 'Y', 'N', 'Y', 'N', 'N', 'N', 'N', 'N', '[시스템] 공통코드관리', '/system/system-config-common-code', NULL, 'Y', 'Y', '_self');
INSERT INTO ATMS_PROGRAM ("PROG_CD", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "AUTH_CHECK", "DEL_AH", "EXL_AH", "FN1_AH", "FN2_AH", "FN3_AH", "FN4_AH", "FN5_AH", "PROG_NM", "PROG_PH", "REMARK", "SAV_AH", "SCH_AH", "TARGET")
VALUES ('system-config-menu', '2017-01-19 14:42:15', 'system', '2017-01-19 14:42:15', 'system', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '[시스템] 메뉴관리', '/system/system-config-menu', '메뉴 관리', 'Y', 'Y', '_self');
INSERT INTO ATMS_PROGRAM ("PROG_CD", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "AUTH_CHECK", "DEL_AH", "EXL_AH", "FN1_AH", "FN2_AH", "FN3_AH", "FN4_AH", "FN5_AH", "PROG_NM", "PROG_PH", "REMARK", "SAV_AH", "SCH_AH", "TARGET")
VALUES ('system-config-program', '2017-01-19 14:42:15', 'system', '2017-01-19 14:42:15', 'system', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', '[시스템] 프로그램관리', '/system/system-config-program', NULL, 'Y', 'Y', '_self');
INSERT INTO ATMS_PROGRAM ("PROG_CD", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "AUTH_CHECK", "DEL_AH", "EXL_AH", "FN1_AH", "FN2_AH", "FN3_AH", "FN4_AH", "FN5_AH", "PROG_NM", "PROG_PH", "REMARK", "SAV_AH", "SCH_AH", "TARGET")
VALUES ('system-operation-log', '2017-01-19 14:42:15', 'system', '2017-01-19 14:42:15', 'system', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '[시스템] 에러로그 조회', '/system/system-operation-log', NULL, 'N', 'Y', '_self');
INSERT INTO ATMS_PROGRAM ("PROG_CD", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "AUTH_CHECK", "DEL_AH", "EXL_AH", "FN1_AH", "FN2_AH", "FN3_AH", "FN4_AH", "FN5_AH", "PROG_NM", "PROG_PH", "REMARK", "SAV_AH", "SCH_AH", "TARGET")
VALUES ('tab-layout', '2017-01-23 12:45:25', 'system', '2016-12-21 14:17:50', 'system', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '[샘플] 탭레이아웃', '/samples/tab-layout', NULL, 'N', 'N', '_self');
INSERT INTO ATMS_PROGRAM ("PROG_CD", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "AUTH_CHECK", "DEL_AH", "EXL_AH", "FN1_AH", "FN2_AH", "FN3_AH", "FN4_AH", "FN5_AH", "PROG_NM", "PROG_PH", "REMARK", "SAV_AH", "SCH_AH", "TARGET")
VALUES ('template-type-001', '2017-01-23 12:46:25', 'system', '2017-01-23 12:46:25', 'system', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'N', '[템플릿] template-001', '/templates/template-type-001', NULL, 'Y', 'Y', '_self');
INSERT INTO ATMS_PROGRAM ("PROG_CD", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "AUTH_CHECK", "DEL_AH", "EXL_AH", "FN1_AH", "FN2_AH", "FN3_AH", "FN4_AH", "FN5_AH", "PROG_NM", "PROG_PH", "REMARK", "SAV_AH", "SCH_AH", "TARGET")
VALUES ('template-type-002', '2017-01-23 12:46:25', 'system', '2017-01-23 12:46:25', 'system', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'N', '[템플릿] template-002', '/templates/template-type-002', NULL, 'Y', 'Y', '_self');
INSERT INTO ATMS_PROGRAM ("PROG_CD", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "AUTH_CHECK", "DEL_AH", "EXL_AH", "FN1_AH", "FN2_AH", "FN3_AH", "FN4_AH", "FN5_AH", "PROG_NM", "PROG_PH", "REMARK", "SAV_AH", "SCH_AH", "TARGET")
VALUES ('template-type-003', '2017-01-23 12:46:25', 'system', '2017-01-23 12:46:25', 'system', 'Y', 'Y', 'Y', 'N', 'Y', 'N', 'N', 'N', '[템플릿] template-003', '/templates/template-type-003', NULL, 'Y', 'Y', '_self');

/*___ atms_user ___*/
INSERT INTO ATMS_USER ("USER_CD", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "DEL_YN", "EMAIL", "HP_NO", "IP", "LAST_LOGIN_DATE", "LOCALE", "MENU_GRP_CD", "PASSWORD_UPDATE_DATE", "REMARK", "USE_YN", "USER_NM", "USER_PS", "USER_STATUS")
VALUES ('system', '2016-12-21 14:17:42', 'system', '2016-12-21 14:17:42', 'system', 'N', NULL, NULL, NULL, '2017-01-01 00:00:00', 'ko_KR', 'SYSTEM_MANAGER', '2017-01-01 00:00:00', NULL, 'Y', '시스템 관리자', '$2a$11$ruVkoieCPghNOA6mtKzWReZ5Ee66hbeqwvlBT1z.W4VMYckBld6uC', 'NORMAL');
INSERT INTO ATMS_USER ("USER_CD", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "DEL_YN", "EMAIL", "HP_NO", "IP", "LAST_LOGIN_DATE", "LOCALE", "MENU_GRP_CD", "PASSWORD_UPDATE_DATE", "REMARK", "USE_YN", "USER_NM", "USER_PS", "USER_STATUS")
VALUES('test', '2016-12-21 15:24:26', 'system', '2016-12-21 15:24:26', 'test', 'N', NULL, NULL, NULL, '2017-01-01 00:00:00', 'ko_KR', 'USER', '2016-12-21 14:20:28', NULL, 'Y', '홍길동', '$2a$11$XXPPIheqn5tXvgrqHe6XUexim9p46cIfCPtLVrn5HOxwajNvsEjb2', 'NORMAL');

/*___ atms_user_auth ___*/
INSERT INTO ATMS_USER_AUTH ("ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "GRP_AUTH_CD", "USER_CD")
VALUES (1, '2016-12-21 14:17:46', 'system', '2016-12-21 14:17:46', 'system', 'S0001', 'system');
INSERT INTO ATMS_USER_AUTH ("ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "GRP_AUTH_CD", "USER_CD")
VALUES (2, '2016-12-21 16:39:32', 'system', '2016-12-21 16:39:32', 'system', 'S0002', 'test');

/*___ atms_user_role ___*/
INSERT INTO ATMS_USER_ROLE ("ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "ROLE_CD", "USER_CD")
VALUES (1, '2016-12-21 14:17:45', 'system', '2016-12-21 14:17:45', 'system', 'ASP_ACCESS', 'system');
INSERT INTO ATMS_USER_ROLE ("ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "ROLE_CD", "USER_CD")
VALUES (2, '2016-12-21 14:17:45', 'system', '2016-12-21 14:17:45', 'system', 'SYSTEM_MANAGER', 'system');
INSERT INTO ATMS_USER_ROLE ("ID", "CREATED_AT", "CREATED_BY", "UPDATED_AT", "UPDATED_BY", "ROLE_CD", "USER_CD")
VALUES (3, '2016-12-21 16:39:32', 'system', '2016-12-21 16:39:32', 'system', 'ASP_ACCESS', 'test');

/*___ parent_sample ___*/
INSERT INTO parent_sample ("SAMPLE_KEY", "ETC1", "ETC2", "ETC3", "ETC4", "SAMPLE_VALUE")
VALUES ('parent-key-001', 'etc1-001', 'ko_KR', 'Y', 'etc4-001', 'parent-value-001');
INSERT INTO parent_sample ("SAMPLE_KEY", "ETC1", "ETC2", "ETC3", "ETC4", "SAMPLE_VALUE")
VALUES ('parent-key-002', 'etc1-002', 'en_US', 'Y', 'etc4-002', 'parent-value-002');
INSERT INTO parent_sample ("SAMPLE_KEY", "ETC1", "ETC2", "ETC3", "ETC4", "SAMPLE_VALUE")
VALUES ('parent-key-003', 'etc1-003', 'ko_KR', 'Y', 'etc4-003', 'parent-value-003');
INSERT INTO parent_sample ("SAMPLE_KEY", "ETC1", "ETC2", "ETC3", "ETC4", "SAMPLE_VALUE")
VALUES ('parent-key-004', 'etc1-004', 'ko_KR', 'N', 'etc4-004', 'parent-value-004');
INSERT INTO parent_sample ("SAMPLE_KEY", "ETC1", "ETC2", "ETC3", "ETC4", "SAMPLE_VALUE")
VALUES ('parent-key-005', 'etc1-005', 'ko_KR', 'N', 'etc4-005', 'parent-value-005');
INSERT INTO parent_sample ("SAMPLE_KEY", "ETC1", "ETC2", "ETC3", "ETC4", "SAMPLE_VALUE")
VALUES ('parent-key-006', 'etc1-006', 'en_US', 'Y', 'etc4-006', 'parent-value-006');
INSERT INTO parent_sample ("SAMPLE_KEY", "ETC1", "ETC2", "ETC3", "ETC4", "SAMPLE_VALUE")
VALUES ('parent-key-007', 'etc1-007', 'ko_KR', 'N', 'etc4-007', 'parent-value-007');
INSERT INTO parent_sample ("SAMPLE_KEY", "ETC1", "ETC2", "ETC3", "ETC4", "SAMPLE_VALUE")
VALUES ('parent-key-008', 'etc1-008', 'en_US', 'N', 'etc4-008', 'parent-value-008');
INSERT INTO parent_sample ("SAMPLE_KEY", "ETC1", "ETC2", "ETC3", "ETC4", "SAMPLE_VALUE")
VALUES ('parent-key-009', 'etc1-009', 'en_US', 'Y', 'etc4-009', 'parent-value-009');
INSERT INTO parent_sample ("SAMPLE_KEY", "ETC1", "ETC2", "ETC3", "ETC4", "SAMPLE_VALUE")
VALUES ('parent-key-010', 'etc1-010', 'ko_KR', 'Y', 'etc4-010', 'parent-value-010');
INSERT INTO parent_sample ("SAMPLE_KEY", "ETC1", "ETC2", "ETC3", "ETC4", "SAMPLE_VALUE")
VALUES ('parent-key-011', 'etc1-011', 'ko_KR', 'N', 'etc4-011', 'parent-value-011');

/*___ child_sample ___*/
INSERT INTO child_sample ("SAMPLE_KEY", "ETC1", "ETC2", "ETC3", "SAMPLE_PARENT_KEY", "SAMPLE_VALUE")
VALUES ('child-key-001', 'etc1-001', 'etc2-001', 'etc3-001', 'parent-key-001', 'child-value-001');
INSERT INTO child_sample ("SAMPLE_KEY", "ETC1", "ETC2", "ETC3", "SAMPLE_PARENT_KEY", "SAMPLE_VALUE")
VALUES ('child-key-002', 'etc1-002', 'etc2-002', 'etc3-002', 'parent-key-001', 'child-value-002');
INSERT INTO child_sample ("SAMPLE_KEY", "ETC1", "ETC2", "ETC3", "SAMPLE_PARENT_KEY", "SAMPLE_VALUE")
VALUES ('child-key-003', 'etc1-003', 'etc2-003', 'etc3-003', 'parent-key-002', 'child-value-003');
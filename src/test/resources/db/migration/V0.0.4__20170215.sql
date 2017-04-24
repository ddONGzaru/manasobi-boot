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
VALUES ('S0001', 43, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-15 13:46:52', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 13:47:37', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 45, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-15 14:26:13', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 14:26:50', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 46, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-15 15:25:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 15:25:20', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 47, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-15 15:40:33', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 15:40:56', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 50, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-15 15:56:26', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 15:56:26', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 51, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-15 16:14:12', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 16:14:32', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 52, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-15 16:22:40', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 16:22:40', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 53, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-15 16:30:33', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 16:30:33', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 54, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-15 16:42:07', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 16:42:07', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 55, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-15 17:08:48', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:08:48', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 56, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-15 17:18:27', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:18:27', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 57, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-15 17:24:02', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:24:02', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 58, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-15 17:36:51', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:36:51', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 59, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-15 17:43:17', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:43:17', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 60, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-15 17:48:43', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:48:43', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 61, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-15 17:53:45', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:53:45', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 62, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-15 18:43:02', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 18:43:02', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 63, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-15 18:50:38', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 18:50:38', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 64, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-15 18:55:01', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 18:55:01', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 65, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-15 19:00:01', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 19:00:01', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 66, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-15 19:07:03', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 19:07:03', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 67, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-15 19:13:05', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 19:13:05', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 68, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-15 19:18:20', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 19:18:20', '%Y/%m/%d %H:%i:%s'), 'system');

/*___ atms_menu ___*/
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (42, 'SYSTEM_MANAGER', '자산관리', null, 0, null, 4, date_format('2017-02-15 13:46:33', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 13:47:37', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (43, 'SYSTEM_MANAGER', '작업일정통보 조회', 'sh02001100', 1, 42, 0, date_format('2017-02-15 13:46:33', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 13:47:37', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (44, 'SYSTEM_MANAGER', '기타관리', null, 0, null, 6, date_format('2017-02-15 14:25:50', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 14:26:50', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (45, 'SYSTEM_MANAGER', '결번요청', 'sh04001110', 1, 44, 0, date_format('2017-02-15 14:26:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 14:26:50', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (46, 'SYSTEM_MANAGER', '기타작업정보', 'sh02001280', 1, 42, 18, date_format('2017-02-15 15:24:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 15:25:21', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (47, 'SYSTEM_MANAGER', '일회성비용청구', 'sh02001290', 1, 42, 19, date_format('2017-02-15 15:40:22', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 15:40:56', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (49, 'SYSTEM_MANAGER', '시재 / 현송 관리', null, 0, null, 5, date_format('2017-02-15 15:56:04', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 15:56:26', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (50, 'SYSTEM_MANAGER', '은행현송예측통보이력조회', 'sh03001170', 1, 49, 0, date_format('2017-02-15 15:56:14', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 15:56:26', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (51, 'SYSTEM_MANAGER', '시재조회', 'sh03001110', 1, 49, 1, date_format('2017-02-15 16:13:54', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 16:14:33', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (52, 'SYSTEM_MANAGER', '마감조회', 'sh03001130', 1, 49, 3, date_format('2017-02-15 16:22:21', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 16:22:41', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (53, 'SYSTEM_MANAGER', '회수자금결과통보', 'sh03001140', 1, 49, 4, date_format('2017-02-15 16:30:19', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 16:30:33', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (54, 'SYSTEM_MANAGER', '미처리금액보고서', 'sh03001150', 1, 49, 5, date_format('2017-02-15 16:41:55', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 16:47:30', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (55, 'SYSTEM_MANAGER', '현송계획보고', 'sh03001180', 1, 49, 6, date_format('2017-02-15 17:08:35.654000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:08:49', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (57, 'SYSTEM_MANAGER', '운영자금청구서통보', 'sh03001190', 1, 49, 8, date_format('2017-02-15 17:23:35', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:24:03', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (60, 'SYSTEM_MANAGER', '운영자금인수정보통보', 'sh03001220', 1, 49, 11, date_format('2017-02-15 17:48:29', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:48:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (61, 'SYSTEM_MANAGER', '출납과잉금반환내역서', 'sh03001230', 1, 49, 12, date_format('2017-02-15 17:53:29', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:53:45', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (62, 'SYSTEM_MANAGER', '용역료관리', 'sh04001130', 1, 44, 2, date_format('2017-02-15 18:42:52', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 18:43:03', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (63, 'SYSTEM_MANAGER', '기기점검결과', 'sh04001140', 1, 44, 3, date_format('2017-02-15 18:50:27', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 18:50:39', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (64, 'SYSTEM_MANAGER', '페널티적용명세통보', 'sh04001150', 1, 44, 4, date_format('2017-02-15 18:54:51', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 18:55:02', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (65, 'SYSTEM_MANAGER', '기기정보전문', 'sh04001170', 1, 44, 5, date_format('2017-02-15 18:59:50', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 19:00:02', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (66, 'SYSTEM_MANAGER', 'CRT번호등록/변경', 'sh04001180', 1, 44, 6, date_format('2017-02-15 19:06:55', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 19:07:04', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (67, 'SYSTEM_MANAGER', '관리자메시지', 'sh04001190', 1, 44, 7, date_format('2017-02-15 19:12:56', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 19:13:06', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (68, 'SYSTEM_MANAGER', '코너입퇴실시간정보', 'sh04001200', 1, 44, 8, date_format('2017-02-15 19:18:08', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 19:18:20', '%Y/%m/%d %H:%i:%s'), 'system');

/*___ atms_program ___*/
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh02001100', '[자산관리] 작업일정통보 조회', '/mng/equip/sh02001100', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-15 13:46:11', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 13:47:24', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh04001110', '[기타관리] 결번요청', '/mng/etc/sh04001110', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-15 14:25:41', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 14:26:35', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh02001280', '[자산관리] 기타작업정보', '/mng/equip/sh02001280', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-15 15:24:21', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 15:25:11', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh02001290', '[자산관리] 일회성비용청구', '/mng/equip/sh02001290', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-15 15:39:59', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 15:40:45', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001170', '[시재 / 현송관리] 은행현송예측통보이력조회', '/mng/cash/sh03001170', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-15 15:54:29', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 15:55:32', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001110', '[시재 / 현송관리] 시재조회', '/mng/cash/sh03001110', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-15 16:13:31', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 16:14:23', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001130', '[시재 / 현송관리] 마감조회', '/mng/cash/sh03001130', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-15 16:21:58', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 16:22:10', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001140', '[시재 / 현송관리] 회수자금결과통보', '/mng/cash/sh03001140', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-15 16:29:58', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 16:30:09', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001150', '[시재 / 현송관리] 미처리금액보고서', '/mng/cash/sh03001150', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-15 16:41:36', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 16:41:45', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001180', '[시재 / 현송관리] 현송계획보고', '/mng/cash/sh03001180', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-15 17:08:16', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:08:25', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001160', '[시재 / 현송관리] 추가현송보고', '/mng/cash/sh03001160', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-15 17:17:56', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:18:06', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001190', '[시재 / 현송관리] 운영자금청구서통보', '/mng/cash/sh03001190', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-15 17:23:15', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:23:56', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001200', '[시재 / 현송관리] 현송주기통보', '/mng/cash/sh03001200', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-15 17:36:16', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:36:29', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001210', '[시재 / 현송관리] 시재미확정내역', '/mng/cash/sh03001210', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-15 17:42:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:42:54', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001220', '[시재 / 현송관리] 운영자금인수정보통보', '/mng/cash/sh03001220', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-15 17:48:02', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:48:12', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001230', '[시재 / 현송관리] 출납과잉금반환내역서', '/mng/cash/sh03001230', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-15 17:53:09', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:53:20', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh04001130', '[기타관리] 용역료관리', '/mng/etc/sh04001130', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-15 18:42:35', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 18:42:43', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh04001140', '[기타관리] 기기점검결과', '/mng/etc/sh04001140', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-15 18:50:12', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 18:50:18', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh04001150', '[기타관리] 페널티적용명세통보', '/mng/etc/sh04001150', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-15 18:54:32', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 18:54:38', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh04001170', '[기타관리] 기기정보전문', '/mng/etc/sh04001170', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-15 18:59:35', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 18:59:41', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh04001180', '[기타관리] CRT번호등록/변경', '/mng/etc/sh04001180', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-15 19:06:34', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 19:06:46', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh04001190', '[기타관리] 관리자메시지', '/mng/etc/sh04001190', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-15 19:12:40', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 19:12:47', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh04001200', '[기타관리] 코너입퇴실시간정보', '/mng/etc/sh04001200', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-15 19:17:53', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 19:17:59', '%Y/%m/%d %H:%i:%s'), 'system');

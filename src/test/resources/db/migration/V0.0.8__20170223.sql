/**
######################################################################
##
## BGF 신한은행 위탁관리 :: Flyway 스크립트
##
######################################################################
**/

/**
[초기데이터 생성]
## 01. 공통코드 입력 - 부서코드 입력
## 02. 공통코드 입력 - 지사 + 지점코드 입력(지점코드로 지사코드를 찾기 위함)

**/

/*___ atms_auth_group_map ___*/

INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 72, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-23 15:54:30', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 16:00:43', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 73, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-23 15:55:04', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 15:55:04', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 74, 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-23 15:55:33', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 15:55:33', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 75, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-23 15:56:03', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 15:56:03', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 76, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-23 15:56:34', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 15:56:34', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 77, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-23 15:56:58', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 15:56:58', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 78, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-23 15:57:19', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 15:57:19', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 79, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-23 15:57:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 15:57:44', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 80, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-23 16:29:06', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 16:29:06', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 81, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-23 15:58:24', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 15:58:24', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 82, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-23 15:58:47', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 15:58:47', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 83, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-23 15:59:30', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 15:59:30', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 84, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-23 16:00:05', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 16:00:05', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 85, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-23 17:13:23', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 17:13:23', '%Y/%m/%d %H:%i:%s'), 'system');

/*___ atms_menu ___*/
-- INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
-- VALUES (72, 'SYSTEM_MANAGER', '코너신규등록통보이력', 'sh02001110', 1, 42, 2, date_format('2017-02-23 15:54:13.991000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 16:00:44.185000', '%Y/%m/%d %H:%i:%s'), 'system');
-- INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
-- VALUES (73, 'SYSTEM_MANAGER', '코너정보변경통보이력', 'sh02001200', 1, 42, 3, date_format('2017-02-23 15:54:51.336000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 16:00:44.185000', '%Y/%m/%d %H:%i:%s'), 'system');
-- INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
-- VALUES (74, 'SYSTEM_MANAGER', '코너폐쇄통보이력', 'sh02001120', 1, 42, 4, date_format('2017-02-23 15:55:21.154000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 16:00:44.185000', '%Y/%m/%d %H:%i:%s'), 'system');
-- INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
-- VALUES (75, 'SYSTEM_MANAGER', '코너상태변경통보이력', 'sh02001270', 1, 42, 5, date_format('2017-02-23 15:55:53.107000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 16:00:44.185000', '%Y/%m/%d %H:%i:%s'), 'system');
-- INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
-- VALUES (76, 'SYSTEM_MANAGER', '기기신규등록통보이력', 'sh02001130', 1, 42, 7, date_format('2017-02-23 15:56:19.296000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 16:00:44.185000', '%Y/%m/%d %H:%i:%s'), 'system');
-- INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
-- VALUES (77, 'SYSTEM_MANAGER', '기기변경통보이력', 'sh02001210', 1, 42, 8, date_format('2017-02-23 15:56:47.130000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 16:00:44.185000', '%Y/%m/%d %H:%i:%s'), 'system');
-- INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
-- VALUES (78, 'SYSTEM_MANAGER', '기기철수통보이력', 'sh02001140', 1, 42, 9, date_format('2017-02-23 15:57:09.646000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 16:00:44.185000', '%Y/%m/%d %H:%i:%s'), 'system');
-- INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
-- VALUES (79, 'SYSTEM_MANAGER', '기기설치/철수결과전송이력', 'sh02001150', 1, 42, 10, date_format('2017-02-23 15:57:32.526000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 16:00:44.185000', '%Y/%m/%d %H:%i:%s'), 'system');
-- INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
-- VALUES (80, 'SYSTEM_MANAGER', '시설물신규등록통보이력', 'sh02001160', 1, 42, 12, date_format('2017-02-23 15:57:56.941000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 16:00:44.186000', '%Y/%m/%d %H:%i:%s'), 'system');
-- INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
-- VALUES (81, 'SYSTEM_MANAGER', '시설물변경통보이력', 'sh02001190', 1, 42, 13, date_format('2017-02-23 15:58:13.788000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 16:00:44.186000', '%Y/%m/%d %H:%i:%s'), 'system');
-- INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
-- VALUES (82, 'SYSTEM_MANAGER', '시설물철수통보이력', 'sh02001170', 1, 42, 14, date_format('2017-02-23 15:58:35.719000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 16:00:44.186000', '%Y/%m/%d %H:%i:%s'), 'system');
-- INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
-- VALUES (83, 'SYSTEM_MANAGER', '시설물설치/철수결과전송이력', 'sh02001180', 1, 42, 15, date_format('2017-02-23 15:59:20.426000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 16:00:44.186000', '%Y/%m/%d %H:%i:%s'), 'system');
-- INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
-- VALUES (84, 'SYSTEM_MANAGER', '시설물일련번호변경 전송이력', 'sh02001230', 1, 42, 17, date_format('2017-02-23 15:59:45.745000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 16:00:44.186000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (85, 'SYSTEM_MANAGER', '거래내역조회', 'sh03001120', 1, 49, 2, date_format('2017-02-23 17:12:56', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 17:12:56', '%Y/%m/%d %H:%i:%s'), 'system');
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
VALUES ('S0001', 69, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:00:24', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:00:24', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 70, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:13:16', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:13:16', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_auth_group_map (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 71, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:44', '%Y/%m/%d %H:%i:%s'), 'system');

/*___ atms_menu ___*/
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (69, 'SYSTEM_MANAGER', '코너현황', 'corner_status', 1, 42, 1, date_format('2017-02-16 17:00:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:45', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (70, 'SYSTEM_MANAGER', '기기현황', 'terminal_status', 1, 42, 6, date_format('2017-02-16 17:13:03', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:45', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (71, 'SYSTEM_MANAGER', '시설물관리', 'facility_status', 1, 42, 11, date_format('2017-02-16 17:18:33', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:45', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_menu (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (86, 'SYSTEM_MANAGER', '지사별 마감일지', 'jisa_sije_close', 1, 49, 13, date_format('2017-02-15 17:53:29', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 17:53:45', '%Y/%m/%d %H:%i:%s'), 'system');

/*___ atms_program ___*/
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('corner_status', '[자산관리] 코너현황', '/mng/equip/corner_status', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-16 16:58:19', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 16:59:48', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('terminal_status', '[자산관리] 기기현황', '/mng/equip/terminal_status', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-16 17:12:36', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:12:49', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('facility_status', '[자산관리] 시설물관리', '/mng/equip/facility_status', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-16 17:18:08', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 17:18:17', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh02001110', '[자산관리] 코너신규등록통보이력', '/mng/equip/sh02001110', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-16 18:11:36', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 18:12:03', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh02001200', '[자산관리] 코너정보변경통보이력', '/mng/equip/sh02001200', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-16 18:13:16', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 18:13:25', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh02001120', '[자산관리] 코너폐쇄통보이력', '/mng/equip/sh02001120', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-16 18:14:30', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 18:17:54', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh02001270', '[자산관리] 코너상태변경통보이력', '/mng/equip/sh02001270', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-16 18:15:07', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 18:18:09', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh02001130', '[자산관리] 기기신규등록통보이력', '/mng/equip/sh02001130', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-16 18:15:36', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 18:17:32', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh02001210', '[자산관리] 기기변경통보이력', '/mng/equip/sh02001210', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-16 18:16:25', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 18:17:32', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh02001140', '[자산관리] 기기철수통보이력', '/mng/equip/sh02001140', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-16 18:19:04', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 18:22:58', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh02001150', '[자산관리] 기기설치/철수결과전송이력', '/mng/equip/sh02001150', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-16 18:19:43', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 18:22:58', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh02001160', '[자산관리] 시설물신규등록통보이력', '/mng/equip/sh02001160', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-16 18:20:16', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 18:22:58', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh02001190', '[자산관리] 시설물변경통보이력', '/mng/equip/sh02001190', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-16 18:20:46', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 18:22:58', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh02001170', '[자산관리] 시설물철수통보이력', '/mng/equip/sh02001170', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-16 18:21:23', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 18:22:58', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh02001180', '[자산관리] 시설물설치/철수결과전송이력', '/mng/equip/sh02001180', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-16 18:21:53', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 18:22:58', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh02001230', '[자산관리] 시설물일련번호변경 전송이력', '/mng/equip/sh02001230', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-16 18:22:27', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 18:22:58', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001120', '[시재 / 현송관리] 거래내역조회', '/mng/cash/sh03001120', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-23 17:11:59', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 17:11:59', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_program (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('jisa_sije_close', '[시재 / 현송관리] 지사별 마감일지', '/mng/cash/jisa_sije_close', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', date_format('2017-02-23 17:11:59', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 17:11:59', '%Y/%m/%d %H:%i:%s'), 'system');
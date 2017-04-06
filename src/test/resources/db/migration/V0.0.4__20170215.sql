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
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 43, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-15 13:46:52.846000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 13:47:37.042000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 45, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-15 14:26:13.757000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 14:26:50.589000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 46, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-15 15:25:00.779000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 15:25:20.925000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 47, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-15 15:40:33.881000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 15:40:56.203000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 50, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-15 15:56:26.115000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 15:56:26.115000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 51, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-15 16:14:12.444000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 16:14:32.870000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 52, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-15 16:22:40.724000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 16:22:40.724000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 53, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-15 16:30:33.230000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 16:30:33.230000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 54, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-15 16:42:07.252000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 16:42:07.252000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 55, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-15 17:08:48.758000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 17:08:48.758000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 56, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-15 17:18:27.790000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 17:18:27.790000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 57, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-15 17:24:02.977000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 17:24:02.977000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 58, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-15 17:36:51.009000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 17:36:51.009000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 59, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-15 17:43:17.629000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 17:43:17.629000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 60, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-15 17:48:43.690000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 17:48:43.690000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 61, 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-15 17:53:45.039000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 17:53:45.039000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 62, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-15 18:43:02.334000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 18:43:02.334000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 63, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-15 18:50:38.844000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 18:50:38.844000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 64, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-15 18:55:01.700000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 18:55:01.700000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 65, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-15 19:00:01.724000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 19:00:01.724000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 66, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-15 19:07:03.887000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 19:07:03.887000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 67, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-15 19:13:05.271000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 19:13:05.271000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_AUTH_GROUP_MAP (GRP_AUTH_CD, MENU_ID, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S0001', 68, 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', TO_TIMESTAMP('2017-02-15 19:18:20.181000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 19:18:20.181000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');

/*___ atms_menu ___*/
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (42, 'SYSTEM_MANAGER', '자산관리', null, 0, null, 4, TO_TIMESTAMP('2017-02-15 13:46:33.191000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 13:47:37.307000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (43, 'SYSTEM_MANAGER', '작업일정통보 조회', 'sh02001100', 1, 42, 0, TO_TIMESTAMP('2017-02-15 13:46:33.448000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 13:47:37.311000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (44, 'SYSTEM_MANAGER', '기타관리', null, 0, null, 6, TO_TIMESTAMP('2017-02-15 14:25:50.955000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 14:26:50.754000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (45, 'SYSTEM_MANAGER', '결번요청', 'sh04001110', 1, 44, 0, TO_TIMESTAMP('2017-02-15 14:26:00.955000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 14:26:50.755000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (46, 'SYSTEM_MANAGER', '기타작업정보', 'sh02001280', 1, 42, 18, TO_TIMESTAMP('2017-02-15 15:24:44.933000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 15:25:21.302000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (47, 'SYSTEM_MANAGER', '일회성비용청구', 'sh02001290', 1, 42, 19, TO_TIMESTAMP('2017-02-15 15:40:22.782000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 15:40:56.608000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (49, 'SYSTEM_MANAGER', '시재 / 현송 관리', null, 0, null, 5, TO_TIMESTAMP('2017-02-15 15:56:04.643000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 15:56:26.740000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (50, 'SYSTEM_MANAGER', '은행현송예측통보이력조회', 'sh03001170', 1, 49, 0, TO_TIMESTAMP('2017-02-15 15:56:14.058000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 15:56:26.752000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (51, 'SYSTEM_MANAGER', '시재조회', 'sh03001110', 1, 49, 1, TO_TIMESTAMP('2017-02-15 16:13:54.941000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 16:14:33.454000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (52, 'SYSTEM_MANAGER', '마감조회', 'sh03001130', 1, 49, 3, TO_TIMESTAMP('2017-02-15 16:22:21.949000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 16:22:41.279000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (53, 'SYSTEM_MANAGER', '회수자금결과통보', 'sh03001140', 1, 49, 4, TO_TIMESTAMP('2017-02-15 16:30:19.722000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 16:30:33.863000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (54, 'SYSTEM_MANAGER', '미처리금액보고서', 'sh03001150', 1, 49, 5, TO_TIMESTAMP('2017-02-15 16:41:55.287000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 16:47:30.066000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (55, 'SYSTEM_MANAGER', '현송계획보고', 'sh03001180', 1, 49, 6, TO_TIMESTAMP('2017-02-15 17:08:35.654000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 17:08:49.522000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (57, 'SYSTEM_MANAGER', '운영자금청구서통보', 'sh03001190', 1, 49, 8, TO_TIMESTAMP('2017-02-15 17:23:35.331000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 17:24:03.730000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (60, 'SYSTEM_MANAGER', '운영자금인수정보통보', 'sh03001220', 1, 49, 11, TO_TIMESTAMP('2017-02-15 17:48:29.927000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 17:48:44.387000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (61, 'SYSTEM_MANAGER', '출납과잉금반환내역서', 'sh03001230', 1, 49, 12, TO_TIMESTAMP('2017-02-15 17:53:29.912000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 17:53:45.746000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (62, 'SYSTEM_MANAGER', '용역료관리', 'sh04001130', 1, 44, 2, TO_TIMESTAMP('2017-02-15 18:42:52.736000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 18:43:03.070000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (63, 'SYSTEM_MANAGER', '기기점검결과', 'sh04001140', 1, 44, 3, TO_TIMESTAMP('2017-02-15 18:50:27.392000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 18:50:39.573000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (64, 'SYSTEM_MANAGER', '페널티적용명세통보', 'sh04001150', 1, 44, 4, TO_TIMESTAMP('2017-02-15 18:54:51.561000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 18:55:02.473000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (65, 'SYSTEM_MANAGER', '기기정보전문', 'sh04001170', 1, 44, 5, TO_TIMESTAMP('2017-02-15 18:59:50.081000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 19:00:02.545000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (66, 'SYSTEM_MANAGER', 'CRT번호등록/변경', 'sh04001180', 1, 44, 6, TO_TIMESTAMP('2017-02-15 19:06:55.138000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 19:07:04.745000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (67, 'SYSTEM_MANAGER', '관리자메시지', 'sh04001190', 1, 44, 7, TO_TIMESTAMP('2017-02-15 19:12:56.038000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 19:13:06.060000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_MENU (MENU_ID, MENU_GRP_CD, MENU_NM, PROG_CD, LEVEL_M, PARENT_ID, SORT, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES (68, 'SYSTEM_MANAGER', '코너입퇴실시간정보', 'sh04001200', 1, 44, 8, TO_TIMESTAMP('2017-02-15 19:18:08.520000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 19:18:20.970000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');

/*___ atms_program ___*/
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh02001100', '[자산관리] 작업일정통보 조회', '/mng/equip/sh02001100', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-15 13:46:11.352000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 13:47:24.917000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh04001110', '[기타관리] 결번요청', '/mng/etc/sh04001110', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-15 14:25:41.119000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 14:26:35.803000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh02001280', '[자산관리] 기타작업정보', '/mng/equip/sh02001280', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-15 15:24:21.954000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 15:25:11.242000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh02001290', '[자산관리] 일회성비용청구', '/mng/equip/sh02001290', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-15 15:39:59.557000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 15:40:45.703000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001170', '[시재 / 현송관리] 은행현송예측통보이력조회', '/mng/cash/sh03001170', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-15 15:54:29.125000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 15:55:32.213000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001110', '[시재 / 현송관리] 시재조회', '/mng/cash/sh03001110', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-15 16:13:31.502000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 16:14:23.887000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001130', '[시재 / 현송관리] 마감조회', '/mng/cash/sh03001130', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-15 16:21:58.286000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 16:22:10.299000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001140', '[시재 / 현송관리] 회수자금결과통보', '/mng/cash/sh03001140', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-15 16:29:58.295000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 16:30:09.789000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001150', '[시재 / 현송관리] 미처리금액보고서', '/mng/cash/sh03001150', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-15 16:41:36.938000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 16:41:45.132000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001180', '[시재 / 현송관리] 현송계획보고', '/mng/cash/sh03001180', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-15 17:08:16.721000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 17:08:25.568000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001160', '[시재 / 현송관리] 추가현송보고', '/mng/cash/sh03001160', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-15 17:17:56.437000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 17:18:06.917000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001190', '[시재 / 현송관리] 운영자금청구서통보', '/mng/cash/sh03001190', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-15 17:23:15.448000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 17:23:56.316000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001200', '[시재 / 현송관리] 현송주기통보', '/mng/cash/sh03001200', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-15 17:36:16.536000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 17:36:29.062000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001210', '[시재 / 현송관리] 시재미확정내역', '/mng/cash/sh03001210', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-15 17:42:44.523000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 17:42:54.608000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001220', '[시재 / 현송관리] 운영자금인수정보통보', '/mng/cash/sh03001220', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-15 17:48:02.985000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 17:48:12.177000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh03001230', '[시재 / 현송관리] 출납과잉금반환내역서', '/mng/cash/sh03001230', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-15 17:53:09.983000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 17:53:20.797000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh04001130', '[기타관리] 용역료관리', '/mng/etc/sh04001130', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-15 18:42:35.416000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 18:42:43.079000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh04001140', '[기타관리] 기기점검결과', '/mng/etc/sh04001140', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-15 18:50:12.282000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 18:50:18.777000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh04001150', '[기타관리] 페널티적용명세통보', '/mng/etc/sh04001150', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-15 18:54:32.413000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 18:54:38.173000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh04001170', '[기타관리] 기기정보전문', '/mng/etc/sh04001170', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-15 18:59:35.969000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 18:59:41.737000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh04001180', '[기타관리] CRT번호등록/변경', '/mng/etc/sh04001180', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-15 19:06:34.984000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 19:06:46.311000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh04001190', '[기타관리] 관리자메시지', '/mng/etc/sh04001190', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-15 19:12:40.283000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 19:12:47.065000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
INSERT INTO ATMS_PROGRAM (PROG_CD, PROG_NM, PROG_PH, AUTH_CHECK, SCH_AH, SAV_AH, DEL_AH, EXL_AH, FN1_AH, FN2_AH, FN3_AH, FN4_AH, FN5_AH, REMARK, TARGET, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('sh04001200', '[기타관리] 코너입퇴실시간정보', '/mng/etc/sh04001200', 'Y', 'Y', 'Y', 'N', 'N', 'N', 'N', 'N', 'N', 'N', null, '_self', TO_TIMESTAMP('2017-02-15 19:17:53.041000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system', TO_TIMESTAMP('2017-02-15 19:17:59.503000', 'YYYY-MM-DD HH24:MI:SS.FF6'), 'system');
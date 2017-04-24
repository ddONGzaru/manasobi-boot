/**
######################################################################
##
## BGF 신한은행 위탁관리 :: Flyway 스크립트
##
######################################################################
**/

/**
[초기데이터 생성]
## 01. 공통코드 코너단말코드 변경
**/

/*___ atms_common_code ___*/
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AUTH_GROUP', '권한그룹', '사용자 권한그룹', 'S0002', null, 2, 'Y', null, null, null, null, null, date_format('2016-12-21 14:17:58', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2016-12-21 14:17:58', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MENU_GROUP', '메뉴그룹', '시스템 관리자 그룹', 'SYSTEM_MANAGER', null, 1, 'Y', null, null, null, null, null, date_format('2016-12-21 14:17:58', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2016-12-21 14:17:58', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('USER_ROLE', '사용자 롤', '시스템 관리자 롤', 'SYSTEM_MANAGER', null, 2, 'Y', null, null, null, null, null, date_format('2016-12-21 14:17:58', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2016-12-21 14:17:58', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MENU_GROUP', '메뉴그룹', '사용자 그룹', 'USER', null, 2, 'Y', null, null, null, null, null, date_format('2016-12-21 14:17:58', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2016-12-21 14:17:58', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEL_YN', '삭제여부', '삭제', 'Y', null, 2, 'Y', null, null, null, null, null, date_format('2016-12-21 14:17:58', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2016-12-21 14:17:58', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('USE_YN', '사용여부', '사용', 'Y', null, 1, 'Y', null, null, null, null, null, date_format('2016-12-21 14:17:59', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2016-12-21 14:17:59', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('LOCALE', '로케일', '미국', 'en_US', null, 2, 'Y', null, null, null, null, null, date_format('2016-12-21 14:17:56', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2016-12-21 14:17:56', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('LOCALE', '로케일', '대한민국', 'ko_KR', null, 1, 'Y', null, null, null, null, null, date_format('2016-12-21 14:17:57', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2016-12-21 14:17:57', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_STEXT_GUBUN', '장애통보 전문구분', '개국', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_STEXT_GUBUN', '장애통보 전문구분', '장애', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_STEXT_GUBUN', '장애통보 전문구분', '상태', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_TYPE', '장애유형', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_TYPE', '장애유형', '보수', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_TYPE', '장애유형', '기기장애', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_TYPE', '장애유형', '고객유발장애', '3', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_TYPE', '장애유형', '운영장애', '4', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CASH_PART_STATUS', '현금부상태', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CASH_PART_STATUS', '현금부상태', '예보', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CASH_PART_STATUS', '현금부상태', '부족', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CASH_PART_STATUS', '현금부상태', 'FULL', '3', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CASH_PART_STATUS', '현금부상태', '미수취', '4', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CASH_PART_STATUS', '현금부상태', '걸림', '5', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CASH_PART_STATUS', '현금부상태', '장애', '6', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CHECK_PART_STATUS', '수표부상태', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CHECK_PART_STATUS', '수표부상태', '예보', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CHECK_PART_STATUS', '수표부상태', '부족', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CHECK_PART_STATUS', '수표부상태', 'FULL', '3', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CHECK_PART_STATUS', '수표부상태', '미수취', '4', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CHECK_PART_STATUS', '수표부상태', '걸림', '5', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CHECK_PART_STATUS', '수표부상태', '장애', '6', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('PORTFOLIO_PART_STATUS', '명세표부상태', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('PORTFOLIO_PART_STATUS', '명세표부상태', '예보', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('PORTFOLIO_PART_STATUS', '명세표부상태', '부족', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('PORTFOLIO_PART_STATUS', '명세표부상태', 'FULL', '3', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('PORTFOLIO_PART_STATUS', '명세표부상태', '미수취', '4', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('PORTFOLIO_PART_STATUS', '명세표부상태', '걸림', '5', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('PORTFOLIO_PART_STATUS', '명세표부상태', '장애', '6', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JRNL_PART_STATUS', '저널부상태', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JRNL_PART_STATUS', '저널부상태', '예보', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JRNL_PART_STATUS', '저널부상태', '부족', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JRNL_PART_STATUS', '저널부상태', 'FULL', '3', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JRNL_PART_STATUS', '저널부상태', '미수취', '4', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JRNL_PART_STATUS', '저널부상태', '걸림', '5', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JRNL_PART_STATUS', '저널부상태', '장애', '6', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('RTRVL_BOX_STATUS', '회수함상태', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('RTRVL_BOX_STATUS', '회수함상태', '예보', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('RTRVL_BOX_STATUS', '회수함상태', '부족', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('RTRVL_BOX_STATUS', '회수함상태', 'FULL', '3', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('RTRVL_BOX_STATUS', '회수함상태', '미수취', '4', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('RTRVL_BOX_STATUS', '회수함상태', '걸림', '5', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('RTRVL_BOX_STATUS', '회수함상태', '장애', '6', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CARD_PART_STATUS', '카드부상태', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CARD_PART_STATUS', '카드부상태', '예보', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CARD_PART_STATUS', '카드부상태', '부족', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CARD_PART_STATUS', '카드부상태', 'FULL', '3', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CARD_PART_STATUS', '카드부상태', '미수취', '4', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CARD_PART_STATUS', '카드부상태', '걸림', '5', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CARD_PART_STATUS', '카드부상태', '장애', '6', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BNKB_PART_STATUS', '통장부상태', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BNKB_PART_STATUS', '통장부상태', '예보', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BNKB_PART_STATUS', '통장부상태', '부족', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BNKB_PART_STATUS', '통장부상태', 'FULL', '3', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BNKB_PART_STATUS', '통장부상태', '미수취', '4', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BNKB_PART_STATUS', '통장부상태', '걸림', '5', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BNKB_PART_STATUS', '통장부상태', '장애', '6', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('GIRO_PART_STATUS', '지로부상태', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('GIRO_PART_STATUS', '지로부상태', '예보', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('GIRO_PART_STATUS', '지로부상태', '부족', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('GIRO_PART_STATUS', '지로부상태', 'FULL', '3', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('GIRO_PART_STATUS', '지로부상태', '미수취', '4', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('GIRO_PART_STATUS', '지로부상태', '걸림', '5', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('GIRO_PART_STATUS', '지로부상태', '장애', '6', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SUSPEND_STATUS', '중단여부', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SUSPEND_STATUS', '중단여부', '비정상', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HW_ERROR_STATUS', 'H/W장애여부', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HW_ERROR_STATUS', 'H/W장애여부', '비정상', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MAINTENANCE_STATUS', '보수모드여부', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MAINTENANCE_STATUS', '보수모드여부', '비정상', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENABLE_DES_BOARD', 'DES보드가능구분', '미지원(미장착) 거래불가', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENABLE_DES_BOARD', 'DES보드가능구분', '지원, 거래불가 (HW 초기화 NG)', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENABLE_DES_BOARD', 'DES보드가능구분', '지원, 거래불가 (HOST와 키교환 이전 상태) or (HOST와 키교환 NG) ', '5', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENABLE_DES_BOARD', 'DES보드가능구분', '통합 신한 Key 수신 (거래가능) ', '6', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENABLE_DES_BOARD', 'DES보드가능구분', '구)조흥 Key 수신 (거래가능)', '7', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENABLE_DES_BOARD', 'DES보드가능구분', '구)신한 Key 수신 (거래가능)', '8', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENABLE_IC_CARD', 'IC카드가능구분', '미지원(미장착)', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENABLE_IC_CARD', 'IC카드가능구분', '지원, 거래불가능', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENABLE_IC_CARD', 'IC카드가능구분', '지원, 거래가능', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENABLE_EMV', 'EMV가능구분', '미지원(미장착)', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENABLE_EMV', 'EMV가능구분', '지원, 거래불가능', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENABLE_EMV', 'EMV가능구분', '지원, 거래가능', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENABLE_IR', 'IR가능구분', '미지원(미장착)', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENABLE_IR', 'IR가능구분', '지원, 거래불가능', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENABLE_IR', 'IR가능구분', '지원, 거래가능', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENABLE_RF', 'RF가능구분', '미지원(미장착)', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENABLE_RF', 'RF가능구분', '지원, 거래불가능', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENABLE_RF', 'RF가능구분', '지원, 거래가능', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENABLE_FINGERPRINT', '지문인식가능구분', '미지원(미장착)', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENABLE_FINGERPRINT', '지문인식가능구분', '지원, 거래불가능', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENABLE_FINGERPRINT', '지문인식가능구분', '지원, 거래가능', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENCRYPTION_STATUS', '암호화 상태', '암호화 안함', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENCRYPTION_STATUS', '암호화 상태', 'SEED 암호화', 'S', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CASH_PART_STATUS_50K_WON', '현금부상태(5만원)', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CASH_PART_STATUS_50K_WON', '현금부상태(5만원)', '예보', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CASH_PART_STATUS_50K_WON', '현금부상태(5만원)', '부족', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CASH_PART_STATUS_50K_WON', '현금부상태(5만원)', 'FULL', '3', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CASH_PART_STATUS_50K_WON', '현금부상태(5만원)', '미수취', '4', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CASH_PART_STATUS_50K_WON', '현금부상태(5만원)', '걸림', '5', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CASH_PART_STATUS_50K_WON', '현금부상태(5만원)', '장애', '6', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CASH_PART_STATUS_50K_WON', '현금부상태(5만원)', '미사용', '9', null, 8, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ATMC_EXCCLC_TERMINAL_ERROR', '자동정산 기기장애', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ATMC_EXCCLC_TERMINAL_ERROR', '자동정산 기기장애', '장애', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ATMC_EXCCLC_EXEC_RESULT', '자동정산 수행결과', '미실행', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ATMC_EXCCLC_EXEC_RESULT', '자동정산 수행결과', '[성공] 정산완료', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ATMC_EXCCLC_EXEC_RESULT', '자동정산 수행결과', '[미실시] 시재없음', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ATMC_EXCCLC_EXEC_RESULT', '자동정산 수행결과', '[미실시] 시재과잉-운영함 FULL', '3', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ATMC_EXCCLC_EXEC_RESULT', '자동정산 수행결과', '[미실시] 회수함 FULL', '4', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ATMC_EXCCLC_EXEC_RESULT', '자동정산 수행결과', '[미실시] 보충함 FULL', '5', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ATMC_EXCCLC_EXEC_RESULT', '자동정산 수행결과', '[장애] 걸림장애', '6', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ATMC_EXCCLC_EXEC_RESULT', '자동정산 수행결과', '[장애] 기타장애', '7', null, 8, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CARD_ISSUED_TERMINAL_STATUS', '카드발급기상태', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CARD_ISSUED_TERMINAL_STATUS', '카드발급기상태', '예보', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CARD_ISSUED_TERMINAL_STATUS', '카드발급기상태', '부족', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CARD_ISSUED_TERMINAL_STATUS', '카드발급기상태', 'FULL', '3', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CARD_ISSUED_TERMINAL_STATUS', '카드발급기상태', '미수취', '4', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CARD_ISSUED_TERMINAL_STATUS', '카드발급기상태', '걸림', '5', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CARD_ISSUED_TERMINAL_STATUS', '카드발급기상태', '장애', '6', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ID_SCANNER_STATUS', '신분증스캐너상태', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ID_SCANNER_STATUS', '신분증스캐너상태', '예보', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ID_SCANNER_STATUS', '신분증스캐너상태', '부족', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ID_SCANNER_STATUS', '신분증스캐너상태', 'FULL', '3', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ID_SCANNER_STATUS', '신분증스캐너상태', '미수취', '4', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ID_SCANNER_STATUS', '신분증스캐너상태', '걸림', '5', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ID_SCANNER_STATUS', '신분증스캐너상태', '장애', '6', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BIO_SCANNER_STATUS', '바이오스캐너상태', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BIO_SCANNER_STATUS', '바이오스캐너상태', '예보', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BIO_SCANNER_STATUS', '바이오스캐너상태', '부족', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BIO_SCANNER_STATUS', '바이오스캐너상태', 'FULL', '3', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BIO_SCANNER_STATUS', '바이오스캐너상태', '미수취', '4', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BIO_SCANNER_STATUS', '바이오스캐너상태', '걸림', '5', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BIO_SCANNER_STATUS', '바이오스캐너상태', '장애', '6', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SCRTY_CARD_HIGHEND_ATM_ONLY', '보안카드(하이엔드ATM전용)', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SCRTY_CARD_HIGHEND_ATM_ONLY', '보안카드(하이엔드ATM전용)', '예보', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SCRTY_CARD_HIGHEND_ATM_ONLY', '보안카드(하이엔드ATM전용)', '부족', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SCRTY_CARD_HIGHEND_ATM_ONLY', '보안카드(하이엔드ATM전용)', '미사용', '9', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CARD_STYLE_OTP', '카드형 OTP', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CARD_STYLE_OTP', '카드형 OTP', '예보', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CARD_STYLE_OTP', '카드형 OTP', '부족', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CARD_STYLE_OTP', '카드형 OTP', '미사용', '9', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S20_GENERAL', 'S20(일반)', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S20_GENERAL', 'S20(일반)', '예보', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S20_GENERAL', 'S20(일반)', '부족', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S20_GENERAL', 'S20(일반)', '미사용', '9', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S20_FRPY', 'S20(후불교통)', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S20_FRPY', 'S20(후불교통)', '예보', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S20_FRPY', 'S20(후불교통)', '부족', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('S20_FRPY', 'S20(후불교통)', '미사용', '9', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SLINE_GENERAL', 'S-Line(일반)', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SLINE_GENERAL', 'S-Line(일반)', '예보', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SLINE_GENERAL', 'S-Line(일반)', '부족', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SLINE_GENERAL', 'S-Line(일반)', '미사용', '9', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SLINE_FRPY', 'S-Line(후불교통)', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SLINE_FRPY', 'S-Line(후불교통)', '예보', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SLINE_FRPY', 'S-Line(후불교통)', '부족', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SLINE_FRPY', 'S-Line(후불교통)', '미사용', '9', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FOURTUNE_GENERAL', '4Tune(일반)', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FOURTUNE_GENERAL', '4Tune(일반)', '예보', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FOURTUNE_GENERAL', '4Tune(일반)', '부족', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FOURTUNE_GENERAL', '4Tune(일반)', '미사용', '9', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FOURTUNE_FRPY', '4Tune(후불교통)', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FOURTUNE_FRPY', '4Tune(후불교통)', '예보', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FOURTUNE_FRPY', '4Tune(후불교통)', '부족', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FOURTUNE_FRPY', '4Tune(후불교통)', '미사용', '9', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('RCPPAY_BNKB', '입출금통장', '정상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('RCPPAY_BNKB', '입출금통장', '예보', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('RCPPAY_BNKB', '입출금통장', '부족', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('RCPPAY_BNKB', '입출금통장', '미사용', '9', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CALLEE_CHASU_GUBUN', '출동차수구분', '1차출동', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CALLEE_CHASU_GUBUN', '출동차수구분', '2차출동', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CALLEE_REQ_GUBUN_CODE', '출동요청구분', '수동', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CALLEE_REQ_GUBUN_CODE', '출동요청구분', '민원', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CALLEE_REQ_GUBUN_CODE', '출동요청구분', '자동', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CALLEE_REQ_GUBUN_CODE', '출동요청구분', '이상개국', '4', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CUSTOMER_WAIT_ENABLE', '고객대기여부', '미대기', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CUSTOMER_WAIT_ENABLE', '고객대기여부', '대기', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('PART_MNG_CALLEE_ENABLE', '부분관리출동여부', '토탈사출동', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('PART_MNG_CALLEE_ENABLE', '부분관리출동여부', '부분관리출동', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HANDLE_RESULT', '조치결과', '미조치', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HANDLE_RESULT', '조치결과', '조치', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CHANGE_GUBUN_CODE', '변경구분', '고객대기', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CHANGE_GUBUN_CODE', '변경구분', '추가특이사항발생', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_METHOD', '장애발생매체', '현금', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_METHOD', '장애발생매체', '수표', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_METHOD', '장애발생매체', '명세표', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_METHOD', '장애발생매체', '저널', '4', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_METHOD', '장애발생매체', '카드', '5', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_METHOD', '장애발생매체', '통장', '6', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_METHOD', '장애발생매체', '지로', '7', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SIMULTANEOUS_BUNDLE_READING_ERROR_GUBUN', '동시다발/읽기장애 구분', '동시다발', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SIMULTANEOUS_BUNDLE_READING_ERROR_GUBUN', '동시다발/읽기장애 구분', '읽기장애', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HANDLE_STATUS', '조치상태', '통보', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HANDLE_STATUS', '조치상태', '업체접수', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HANDLE_STATUS', '조치상태', '조치예정', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HANDLE_STATUS', '조치상태', '조치완료', '3', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SMS_SUBJECT_ENABLE', 'SMS대상여부', '미통보', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SMS_SUBJECT_ENABLE', 'SMS대상여부', '통보', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_GUBUN', '장애구분', '입금', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_GUBUN', '장애구분', '출금', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_GUBUN', '장애구분', '카드', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_GUBUN', '장애구분', '통장', '4', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_GUBUN', '장애구분', '기타', '5', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('PLACE_GUBUN', '장소구분', '점내', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('PLACE_GUBUN', '장소구분', '점두', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('PLACE_GUBUN', '장소구분', '점외', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_GUBUN', '점포구분', '점포형', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_GUBUN', '점포구분', '박스형', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_GUBUN', '점포구분', '단독형', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_GUBUN', '점포구분', '특수형', '4', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_GUBUN', '점포구분', '점내', '5', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('OPER_TIME_GUBUN', '운영시간구분', '평일', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('OPER_TIME_GUBUN', '운영시간구분', '365', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('OPER_TIME_GUBUN', '운영시간구분', '24시', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('OPER_TIME_GUBUN', '운영시간구분', '기타', '4', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CORP_CODE', '기기사', '청호', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CORP_CODE', '기기사', 'LG', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CORP_CODE', '기기사', '효성', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CORP_CODE', '기기사', 'FKM', '4', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CALLEE_REQ_REASON_CODE', '출동요청사유', '장애처리', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CALLEE_REQ_REASON_CODE', '출동요청사유', '예방점검', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CALLEE_REQ_REASON_CODE', '출동요청사유', 'KEY지원출동', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CALLEE_REQ_REASON_CODE', '출동요청사유', '출입문 닫힘', '4', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CALLEE_REQ_REASON_CODE', '출동요청사유', '전등 꺼짐', '5', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CALLEE_REQ_REASON_CODE', '출동요청사유', '에어컨 꺼짐', '6', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CALLEE_REQ_REASON_CODE', '출동요청사유', '부스고장', '7', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CALLEE_REQ_REASON_CODE', '출동요청사유', '카드/서류 걸림', '8', null, 8, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CALLEE_REQ_REASON_CODE', '출동요청사유', '미개국점검', '9', null, 9, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CALLEE_REQ_REASON_CODE', '출동요청사유', '민원', 'A', null, 10, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CALLEE_REQ_REASON_CODE', '출동요청사유', '현금부족', 'B', null, 11, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CALLEE_REQ_REASON_CODE', '출동요청사유', '기타', 'C', null, 12, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HANDLE_FAIL_REASON', '조치불가사유', '조치완료', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HANDLE_FAIL_REASON', '조치불가사유', '기기 A/S', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HANDLE_FAIL_REASON', '조치불가사유', '통신 이상', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HANDLE_FAIL_REASON', '조치불가사유', '전원', '3', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HANDLE_FAIL_REASON', '조치불가사유', '여유비품없음', '4', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HANDLE_FAIL_REASON', '조치불가사유', '장소폐쇄', '5', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HANDLE_FAIL_REASON', '조치불가사유', '기기수리필요', '6', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HANDLE_FAIL_REASON', '조치불가사유', '기타', '7', null, 8, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AS_METHOD', 'A/S 매체', '현금입출금부', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AS_METHOD', 'A/S 매체', '수표입출금부', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AS_METHOD', 'A/S 매체', '카드부', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AS_METHOD', 'A/S 매체', '통장부', '4', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AS_METHOD', 'A/S 매체', '조작부', '5', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AS_METHOD', 'A/S 매체', '본체부', '6', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AS_METHOD', 'A/S 매체', '외부케이스', '7', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_CODE', '지사코드', '본사(서울)', '00', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:36.139000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:36.139000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_CODE', '지사코드', '강남', '01', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:36.139000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:36.139000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_CODE', '지사코드', '강북', '02', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_CODE', '지사코드', '강동', '03', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_CODE', '지사코드', '강서', '04', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_CODE', '지사코드', '수원', '05', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_CODE', '지사코드', '대전', '06', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_CODE', '지사코드', '인천', '07', null, 8, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_CODE', '지사코드', '강릉', '08', null, 9, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_CODE', '지사코드', '경남', '09', null, 10, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_CODE', '지사코드', '부산', '10', null, 11, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_CODE', '지사코드', '대구', '11', null, 12, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_CODE', '지사코드', '광주', '12', null, 13, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_CODE', '지사코드', '제주', '13', null, 14, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_CODE', '지사코드', '전북', '14', null, 15, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_CODE', '지사코드', '충남', '15', null, 16, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_CODE', '지사코드', '원주', '16', null, 17, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '관악신사동', '1147', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-10 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-10 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '화도금융센터', '1796', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-11 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-11 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '영업부', '1100', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-12 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-12 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '성수동금융센터', '1177', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-13 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-13 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '충주연수', '2016', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-14 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-14 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '신평금융센터', '2133', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-15 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-15 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '김포공항', '7020', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-16 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-16 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '김천금융센터', '7008', null, 8, 'Y', null, null, null, null, null, date_format('2017-02-17 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-17 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '평내', '1876', null, 9, 'Y', null, null, null, null, null, date_format('2017-02-18 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-18 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '부산서면', '2116', null, 10, 'Y', null, null, null, null, null, date_format('2017-02-19 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-19 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '대신동', '2304', null, 11, 'Y', null, null, null, null, null, date_format('2017-02-20 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '목포', '2414', null, 12, 'Y', null, null, null, null, null, date_format('2017-02-21 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-21 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '만수동', '1757', null, 13, 'Y', null, null, null, null, null, date_format('2017-02-22 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-22 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '상록수', '1740', null, 14, 'Y', null, null, null, null, null, date_format('2017-02-23 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '이천금융센터', '1805', null, 15, 'Y', null, null, null, null, null, date_format('2017-02-24 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-24 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '건국대학교', '7037', null, 16, 'Y', null, null, null, null, null, date_format('2017-02-25 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-25 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '울산현대', '2150', null, 17, 'Y', null, null, null, null, null, date_format('2017-02-26 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-26 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '역촌동', '1306', null, 18, 'Y', null, null, null, null, null, date_format('2017-02-27 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-27 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '만리동', '1199', null, 19, 'Y', null, null, null, null, null, date_format('2017-02-28 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '워커힐', '1437', null, 20, 'Y', null, null, null, null, null, date_format('2017-03-01 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-01 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '증평', '2006', null, 21, 'Y', null, null, null, null, null, date_format('2017-03-02 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-02 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', 'LG이노텍(출)', '2329', null, 22, 'Y', null, null, null, null, null, date_format('2017-03-03 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-03 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '안산스마트허브금융센터', '1737', null, 23, 'Y', null, null, null, null, null, date_format('2017-03-04 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-04 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '오창금융센터', '2035', null, 24, 'Y', null, null, null, null, null, date_format('2017-03-05 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-05 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '팔탄금융센터', '1868', null, 25, 'Y', null, null, null, null, null, date_format('2017-03-06 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-06 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '효자동', '1174', null, 26, 'Y', null, null, null, null, null, date_format('2017-03-07 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-07 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '김포불노', '1826', null, 27, 'Y', null, null, null, null, null, date_format('2017-03-08 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-08 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '신당동', '1328', null, 28, 'Y', null, null, null, null, null, date_format('2017-03-09 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-09 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '서산금융센터', '2009', null, 29, 'Y', null, null, null, null, null, date_format('2017-03-10 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-10 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '명동역', '1210', null, 30, 'Y', null, null, null, null, null, date_format('2017-03-11 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-11 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '영주', '2302', null, 31, 'Y', null, null, null, null, null, date_format('2017-03-12 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-12 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '새만금금융센터', '5808', null, 32, 'Y', null, null, null, null, null, date_format('2017-03-13 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-13 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '인천국제공항', '7057', null, 33, 'Y', null, null, null, null, null, date_format('2017-03-14 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-14 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '인천금융센터', '1804', null, 34, 'Y', null, null, null, null, null, date_format('2017-03-15 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-15 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '가오동', '2046', null, 35, 'Y', null, null, null, null, null, date_format('2017-03-16 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-16 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '연수동', '1774', null, 36, 'Y', null, null, null, null, null, date_format('2017-03-17 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-17 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '센텀금융센터', '2156', null, 37, 'Y', null, null, null, null, null, date_format('2017-03-18 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-18 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '안양역', '1862', null, 38, 'Y', null, null, null, null, null, date_format('2017-03-19 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-19 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '충북영업부금융센터', '7011', null, 39, 'Y', null, null, null, null, null, date_format('2017-03-20 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-20 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '상봉역', '1133', null, 40, 'Y', null, null, null, null, null, date_format('2017-03-21 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-21 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '나라사랑카드 발급센터', '7141', null, 41, 'Y', null, null, null, null, null, date_format('2017-03-22 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-22 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '강릉금융센터', '7010', null, 42, 'Y', null, null, null, null, null, date_format('2017-03-23 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-23 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '한국기술교육대학교(출)', '7123', null, 43, 'Y', null, null, null, null, null, date_format('2017-03-24 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-24 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '화서동', '1835', null, 44, 'Y', null, null, null, null, null, date_format('2017-03-25 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-25 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '삼척', '1710', null, 45, 'Y', null, null, null, null, null, date_format('2017-03-26 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-26 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '양양', '1764', null, 46, 'Y', null, null, null, null, null, date_format('2017-03-27 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-27 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '순천향대학교', '7092', null, 47, 'Y', null, null, null, null, null, date_format('2017-03-28 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-28 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '암사역', '1297', null, 48, 'Y', null, null, null, null, null, date_format('2017-03-29 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-29 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '송현동금융센터', '1841', null, 49, 'Y', null, null, null, null, null, date_format('2017-03-30 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-30 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '부천역', '1701', null, 50, 'Y', null, null, null, null, null, date_format('2017-03-31 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-31 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '종로중앙금융센터', '1104', null, 51, 'Y', null, null, null, null, null, date_format('2017-04-01 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-01 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '김포한강금융센터', '1961', null, 52, 'Y', null, null, null, null, null, date_format('2017-04-02 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-02 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '강원영업부금융센터', '1705', null, 53, 'Y', null, null, null, null, null, date_format('2017-04-03 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-03 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '대구금융센터', '2307', null, 54, 'Y', null, null, null, null, null, date_format('2017-04-04 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-04 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_CODE', '지점코드', '양천향교역', '1302', null, 55, 'Y', null, null, null, null, null, date_format('2017-04-05 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-05 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '포스트타워_6844', '6844', null, 1, 'Y', null, null, null, null, null, date_format('2017-06-18 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-18 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '남양주현대병원_5460', '5460', null, 2, 'Y', null, null, null, null, null, date_format('2017-06-19 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-19 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '코스트코상봉점_6612', '6612', null, 3, 'Y', null, null, null, null, null, date_format('2017-06-20 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-20 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '신림역_6472', '6472', null, 4, 'Y', null, null, null, null, null, date_format('2017-06-21 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-21 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '신림역_6740', '6740', null, 5, 'Y', null, null, null, null, null, date_format('2017-06-22 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-22 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '신림역_6741', '6741', null, 6, 'Y', null, null, null, null, null, date_format('2017-06-23 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-23 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '88부대_5137', '5137', null, 7, 'Y', null, null, null, null, null, date_format('2017-06-24 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-24 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '영동병원_6868', '6868', null, 8, 'Y', null, null, null, null, null, date_format('2017-06-25 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '만리시장_5476', '5476', null, 9, 'Y', null, null, null, null, null, date_format('2017-06-26 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-26 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '만리시장_5477', '5477', null, 10, 'Y', null, null, null, null, null, date_format('2017-06-27 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-27 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '만리시장_5478', '5478', null, 11, 'Y', null, null, null, null, null, date_format('2017-06-28 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-28 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '만리시장_5479', '5479', null, 12, 'Y', null, null, null, null, null, date_format('2017-06-29 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-29 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '명동역Green365_6289', '6289', null, 13, 'Y', null, null, null, null, null, date_format('2017-06-30 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-30 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '명동역Green365_6290', '6290', null, 14, 'Y', null, null, null, null, null, date_format('2017-07-01 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-01 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '명동역Green365_6291', '6291', null, 15, 'Y', null, null, null, null, null, date_format('2017-07-02 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-02 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '명동역Green365_6292', '6292', null, 16, 'Y', null, null, null, null, null, date_format('2017-07-03 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-03 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '암사역지점점두365_6235', '6235', null, 17, 'Y', null, null, null, null, null, date_format('2017-07-04 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-04 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '암사역지점점두365_6236', '6236', null, 18, 'Y', null, null, null, null, null, date_format('2017-07-05 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-05 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '암사역지점점두365_6237', '6237', null, 19, 'Y', null, null, null, null, null, date_format('2017-07-06 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-06 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '암사역지점점두365_6238', '6238', null, 20, 'Y', null, null, null, null, null, date_format('2017-07-07 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-07 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '암사역지점점두365_6239', '6239', null, 21, 'Y', null, null, null, null, null, date_format('2017-07-08 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-08 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '암사역지점점두365_6240', '6240', null, 22, 'Y', null, null, null, null, null, date_format('2017-07-09 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-09 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '(구)등촌서점두365_5242', '5242', null, 23, 'Y', null, null, null, null, null, date_format('2017-07-10 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-10 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '(구)등촌서점두365_5243', '5243', null, 24, 'Y', null, null, null, null, null, date_format('2017-07-11 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-11 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '(구)등촌서점두365_5244', '5244', null, 25, 'Y', null, null, null, null, null, date_format('2017-07-12 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-12 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '(구)등촌서점두365_5245', '5245', null, 26, 'Y', null, null, null, null, null, date_format('2017-07-13 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-13 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '서부재활체육센터_5417', '5417', null, 27, 'Y', null, null, null, null, null, date_format('2017-07-14 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-14 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '신당6동사무소_5424', '5424', null, 28, 'Y', null, null, null, null, null, date_format('2017-07-15 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-15 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '신당6동사무소_5425', '5425', null, 29, 'Y', null, null, null, null, null, date_format('2017-07-16 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-16 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '신당6동사무소_5426', '5426', null, 30, 'Y', null, null, null, null, null, date_format('2017-07-17 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-17 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '워커힐카지노_6031', '6031', null, 31, 'Y', null, null, null, null, null, date_format('2017-07-18 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-18 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '부천남부_6059', '6059', null, 32, 'Y', null, null, null, null, null, date_format('2017-07-19 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-19 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '부천역지점점두365_6225', '6225', null, 33, 'Y', null, null, null, null, null, date_format('2017-07-20 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-20 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '부천역지점점두365_6226', '6226', null, 34, 'Y', null, null, null, null, null, date_format('2017-07-21 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-21 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '부천역지점점두365_6227', '6227', null, 35, 'Y', null, null, null, null, null, date_format('2017-07-22 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-22 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '부천역지점점두365_6228', '6228', null, 36, 'Y', null, null, null, null, null, date_format('2017-07-23 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-23 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '부천역지점점두365_6229', '6229', null, 37, 'Y', null, null, null, null, null, date_format('2017-07-24 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-24 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '부천역지점점두365_6230', '6230', null, 38, 'Y', null, null, null, null, null, date_format('2017-07-25 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-25 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '부천역지점점두365_6231', '6231', null, 39, 'Y', null, null, null, null, null, date_format('2017-07-26 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-26 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '부천역지점점두365_6232', '6232', null, 40, 'Y', null, null, null, null, null, date_format('2017-07-27 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-27 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '부천역지점점두365_6220', '6220', null, 41, 'Y', null, null, null, null, null, date_format('2017-07-28 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-28 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '(구)춘천중앙지점점두365_6673', '6673', null, 42, 'Y', null, null, null, null, null, date_format('2017-07-29 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-29 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '(구)춘천중앙지점점두365_6674', '6674', null, 43, 'Y', null, null, null, null, null, date_format('2017-07-30 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-30 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '(구)춘천중앙지점점두365_6685', '6685', null, 44, 'Y', null, null, null, null, null, date_format('2017-07-31 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-07-31 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '(구)춘천중앙지점점두365_6686', '6686', null, 45, 'Y', null, null, null, null, null, date_format('2017-08-01 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-01 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '(구)춘천중앙지점점두365_6687', '6687', null, 46, 'Y', null, null, null, null, null, date_format('2017-08-02 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-02 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '태화마트삼척점_6608', '6608', null, 47, 'Y', null, null, null, null, null, date_format('2017-08-03 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-03 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '안산역_5497', '5497', null, 48, 'Y', null, null, null, null, null, date_format('2017-08-04 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-04 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '안산역_5498', '5498', null, 49, 'Y', null, null, null, null, null, date_format('2017-08-05 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-05 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '안산역_5499', '5499', null, 50, 'Y', null, null, null, null, null, date_format('2017-08-06 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-06 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '안산역_5500', '5500', null, 51, 'Y', null, null, null, null, null, date_format('2017-08-07 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-07 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '중국은행안산지점_6129', '6129', null, 52, 'Y', null, null, null, null, null, date_format('2017-08-08 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-08 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '동산교회(사동)_6109', '6109', null, 53, 'Y', null, null, null, null, null, date_format('2017-08-09 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-09 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '동산교회(사동)_6110', '6110', null, 54, 'Y', null, null, null, null, null, date_format('2017-08-10 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-10 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '동산교회(사동)_6111', '6111', null, 55, 'Y', null, null, null, null, null, date_format('2017-08-11 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-11 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '만수금호APT_5558', '5558', null, 56, 'Y', null, null, null, null, null, date_format('2017-08-12 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-12 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '만수금호APT_5559', '5559', null, 57, 'Y', null, null, null, null, null, date_format('2017-08-13 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-13 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '만수금호APT_5560', '5560', null, 58, 'Y', null, null, null, null, null, date_format('2017-08-14 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-14 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '양양솔비치_6978', '6978', null, 59, 'Y', null, null, null, null, null, date_format('2017-08-15 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-15 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '이마트연수점_6395', '6395', null, 60, 'Y', null, null, null, null, null, date_format('2017-08-16 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-16 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '메디칼프라자_6756', '6756', null, 61, 'Y', null, null, null, null, null, date_format('2017-08-17 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-17 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '메디칼프라자_6757', '6757', null, 62, 'Y', null, null, null, null, null, date_format('2017-08-18 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-18 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '남양주해비치_6090', '6090', null, 63, 'Y', null, null, null, null, null, date_format('2017-08-19 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-19 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '간석역지점1층_5408', '5408', null, 64, 'Y', null, null, null, null, null, date_format('2017-08-20 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-20 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '간석역지점1층_5409', '5409', null, 65, 'Y', null, null, null, null, null, date_format('2017-08-21 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-21 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '간석역지점1층_5410', '5410', null, 66, 'Y', null, null, null, null, null, date_format('2017-08-22 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-22 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '간석역지점1층_5411', '5411', null, 67, 'Y', null, null, null, null, null, date_format('2017-08-23 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-23 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '간석역지점1층_5412', '5412', null, 68, 'Y', null, null, null, null, null, date_format('2017-08-24 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-24 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '한국관광대학교휴게실(1층)_5388', '5388', null, 69, 'Y', null, null, null, null, null, date_format('2017-08-25 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-25 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '김포삼성테스코_5666', '5666', null, 70, 'Y', null, null, null, null, null, date_format('2017-08-26 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-26 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '화서동지점1층_6665', '6665', null, 71, 'Y', null, null, null, null, null, date_format('2017-08-27 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-27 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '화서동지점1층_6666', '6666', null, 72, 'Y', null, null, null, null, null, date_format('2017-08-28 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-28 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CODE', '기기코드', '화서동지점1층_6667', '6667', null, 73, 'Y', null, null, null, null, null, date_format('2017-08-29 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-08-29 14:57:52.365000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('USER_STATUS', '계정상태', '잠김', 'ACCOUNT_LOCK', null, 2, 'Y', null, null, null, null, null, date_format('2016-12-21 14:17:55', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2016-12-21 14:17:55', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('USER_ROLE', '사용자 롤', 'API 접근 롤', 'API', null, 6, 'Y', null, null, null, null, null, date_format('2016-12-21 14:17:56', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2016-12-21 14:17:56', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('USER_ROLE', '사용자 롤', '관리시스템 접근 롤', 'ASP_ACCESS', null, 1, 'Y', null, null, null, null, null, date_format('2016-12-21 14:17:56', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2016-12-21 14:17:56', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('USER_ROLE', '사용자 롤', '일반괸리자 롤', 'ASP_MANAGER', null, 3, 'Y', null, null, null, null, null, date_format('2016-12-21 14:17:56', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2016-12-21 14:17:56', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEL_YN', '삭제여부', '미삭제', 'N', null, 1, 'Y', null, null, null, null, null, date_format('2016-12-21 14:17:57', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2016-12-21 14:17:57', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('USE_YN', '사용여부', '사용안함', 'N', null, 2, 'Y', null, null, null, null, null, date_format('2016-12-21 14:17:57', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2016-12-21 14:17:57', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('USER_STATUS', '계정상태', '활성', 'NORMAL', null, 1, 'Y', null, null, null, null, null, date_format('2016-12-21 14:17:57', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2016-12-21 14:17:57', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AUTH_GROUP', '권한그룹', '시스템관리자 그룹', 'S0001', null, 1, 'Y', null, null, null, null, null, date_format('2016-12-21 14:17:57', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2016-12-21 14:17:57', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INSTALL_PLACE_GUBUN', '설치구분', '기타', '16', null, 16, 'Y', null, null, null, null, null, date_format('2017-05-04 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-04 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOOTH_CORP', '부스업체', '인우시스템', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-05-05 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-05 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOOTH_CORP', '부스업체', '인테리어부스', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-05-06 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-06 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOOTH_CORP', '부스업체', '용창', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-05-07 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-07 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOOTH_CORP', '부스업체', '세일정밀공업', '4', null, 4, 'Y', null, null, null, null, null, date_format('2017-05-08 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-08 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOOTH_TYPE', '부스종류', '내부-신형', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-05-09 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-09 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOOTH_TYPE', '부스종류', '내부-파랑', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-05-10 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-10 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOOTH_TYPE', '부스종류', '내부-흰색', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-05-11 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-11 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOOTH_TYPE', '부스종류', '박스', '4', null, 4, 'Y', null, null, null, null, null, date_format('2017-05-12 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-12 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOOTH_TYPE', '부스종류', '박스-LED', '5', null, 5, 'Y', null, null, null, null, null, date_format('2017-05-13 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-13 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOOTH_TYPE', '부스종류', '박스-날개', '6', null, 6, 'Y', null, null, null, null, null, date_format('2017-05-14 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-14 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOOTH_TYPE', '부스종류', '박스-신형', '7', null, 7, 'Y', null, null, null, null, null, date_format('2017-05-15 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-15 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOOTH_TYPE', '부스종류', '인출-신형', '8', null, 8, 'Y', null, null, null, null, null, date_format('2017-05-16 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-16 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOOTH_TYPE', '부스종류', '인출-안내문구-파랑', '9', null, 9, 'Y', null, null, null, null, null, date_format('2017-05-17 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-17 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOOTH_TYPE', '부스종류', '인출-안내문구-흰색', '10', null, 10, 'Y', null, null, null, null, null, date_format('2017-05-18 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-18 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOOTH_TYPE', '부스종류', '인출-파랑', '11', null, 11, 'Y', null, null, null, null, null, date_format('2017-05-19 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-19 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOOTH_TYPE', '부스종류', '인테리어', '12', null, 12, 'Y', null, null, null, null, null, date_format('2017-05-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOOTH_TYPE', '부스종류', '점포-LED', '13', null, 13, 'Y', null, null, null, null, null, date_format('2017-05-21 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-21 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOOTH_TYPE', '부스종류', '점포-구형', '14', null, 14, 'Y', null, null, null, null, null, date_format('2017-05-22 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-22 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOOTH_TYPE', '부스종류', '점포-복도형', '15', null, 15, 'Y', null, null, null, null, null, date_format('2017-05-23 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-23 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOOTH_TYPE', '부스종류', '미확인', '16', null, 16, 'Y', null, null, null, null, null, date_format('2017-05-24 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-24 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INTERCOM_ENABLE', '인터폰 유/무', '미확인', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-05-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INTERCOM_ENABLE', '인터폰 유/무', '무', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-05-26 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-26 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INTERCOM_ENABLE', '인터폰 유/무', '유', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-05-27 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-27 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENVELOPE_ENABLE', '봉투비치대 유/무', '미확인', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-05-28 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-28 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENVELOPE_ENABLE', '봉투비치대 유/무', '무', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-05-29 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-29 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ENVELOPE_ENABLE', '봉투비치대 유/무', '유', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-05-30 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-30 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('GARBAGECAN_ENABLE', '쓰레기통 유/무', '미확인', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-05-31 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-31 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('GARBAGECAN_ENABLE', '쓰레기통 유/무', '무', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-06-01 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-01 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('GARBAGECAN_ENABLE', '쓰레기통 유/무', '원형', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-06-02 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-02 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('GARBAGECAN_ENABLE', '쓰레기통 유/무', '사각', '3', null, 4, 'Y', null, null, null, null, null, date_format('2017-06-03 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-03 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SHREDDER_ENABLE', '세단기 유/무', '미확인', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-06-04 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-04 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SHREDDER_ENABLE', '세단기 유/무', '무', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-06-05 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-05 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SHREDDER_ENABLE', '세단기 유/무', '유', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-06-06 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-06 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('EXTINGUISHER_ENABLE', '소화기 유/무', '미확인', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-06-07 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-07 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('EXTINGUISHER_ENABLE', '소화기 유/무', '무', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-06-08 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-08 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('EXTINGUISHER_ENABLE', '소화기 유/무', '유', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-06-09 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-09 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('POSTER_ENABLE', '포스터액자수', '미확인', '99', null, 1, 'Y', null, null, null, null, null, date_format('2017-06-10 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-10 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('POSTER_ENABLE', '포스터액자수', '무', '0', null, 2, 'Y', null, null, null, null, null, date_format('2017-06-11 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-11 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('POSTER_ENABLE', '포스터액자수', '1', '1', null, 3, 'Y', null, null, null, null, null, date_format('2017-06-12 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-12 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('POSTER_ENABLE', '포스터액자수', '2', '2', null, 4, 'Y', null, null, null, null, null, date_format('2017-06-13 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-13 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('POSTER_ENABLE', '포스터액자수', '3', '3', null, 5, 'Y', null, null, null, null, null, date_format('2017-06-14 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-14 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('POSTER_ENABLE', '포스터액자수', '4', '4', null, 6, 'Y', null, null, null, null, null, date_format('2017-06-15 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-15 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SLOPE_ENABLE', '경사로 설치 유/무', '미확인', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-06-16 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-16 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SLOPE_ENABLE', '경사로 설치 유/무', '무', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-06-17 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-17 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SLOPE_ENABLE', '경사로 설치 유/무', '유', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-06-18 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-18 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('COOLER_HEATER_ENABLE', '냉방기 유/무', '미확인', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-06-19 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-19 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('COOLER_HEATER_ENABLE', '냉방기 유/무', '무', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-06-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('COOLER_HEATER_ENABLE', '냉방기 유/무', '천정형', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-06-21 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-21 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('COOLER_HEATER_ENABLE', '냉방기 유/무', '벽걸이', '3', null, 4, 'Y', null, null, null, null, null, date_format('2017-06-22 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-22 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('COOLER_HEATER_ENABLE', '냉방기 유/무', '스탠드', '4', null, 5, 'Y', null, null, null, null, null, date_format('2017-06-23 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-23 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('WEEKEND_OPER_GUBUN', '주말운영구분', '운영', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-06-24 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-24 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('WEEKEND_OPER_GUBUN', '주말운영구분', '미운영', '0', null, 2, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '한국은행', '001', null, 1, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '산업은행', '002', null, 2, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '기업은행', '003', null, 3, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '국민은행', '004', null, 4, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', 'KEB하나은행', '005', null, 5, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '국민은행', '006', null, 6, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '수협중앙회', '007', null, 7, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '수출입은행', '008', null, 8, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '수협중앙회', '009', null, 9, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '농협은행', '010', null, 10, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '농협은행', '011', null, 11, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '지역 농축협', '012', null, 12, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '지역 농축협', '013', null, 13, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '지역 농축협', '014', null, 14, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '지역 농축협', '015', null, 15, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '농협은행', '016', null, 16, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '지역 농축협', '017', null, 17, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '지역 농축협', '018', null, 18, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '국민은행', '019', null, 19, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '우리은행', '020', null, 20, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '신한은행', '021', null, 21, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '우리은행', '022', null, 22, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', 'SC제일은행', '023', null, 23, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '우리은행', '024', null, 24, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', 'KEB하나은행', '025', null, 25, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '신한은행', '026', null, 26, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '한국씨티은행', '027', null, 27, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '신한은행', '028', null, 28, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '국민은행', '029', null, 29, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '대구은행', '031', null, 30, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '부산은행', '032', null, 31, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', 'KEB하나은행', '033', null, 32, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '광주은행', '034', null, 33, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '제주은행', '035', null, 34, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '한국씨티은행', '036', null, 35, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '전북은행', '037', null, 36, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '경남은행', '039', null, 37, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '삼성선물', '296', null, 126, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '외환선물', '297', null, 127, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '현대선물', '298', null, 128, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', 'BC카드', '361', null, 129, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '광주카드', '364', null, 130, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '삼성카드', '365', null, 131, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '신한카드', '366', null, 132, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '현대카드', '367', null, 133, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '롯데카드', '368', null, 134, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '수협카드', '369', null, 135, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '씨티카드', '370', null, 136, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', 'NH카드', '371', null, 137, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '전북카드', '372', null, 138, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '제주카드', '373', null, 139, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '하나SK카드', '374', null, 140, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', 'KB국민카드', '381', null, 141, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '미래에셋생명', '431', null, 142, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '한화생명', '432', null, 143, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '교보라이프플래닛생명', '433', null, 144, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '현대라이프생명', '434', null, 145, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '라이나생명', '435', null, 146, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '교보생명', '436', null, 147, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '알리안츠생명', '437', null, 148, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '신한생명', '438', null, 149, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', 'KB생명보험', '439', null, 150, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '농협생명', '440', null, 151, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '삼성화재', '441', null, 152, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '현대해상', '442', null, 153, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '동부화재', '443', null, 154, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', 'KB손해보험', '444', null, 155, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '삼성생명', '452', null, 156, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '흥국생명', '453', null, 157, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEPT_CODE', '부서코드', '임원', '01', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:36.139000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:36.139000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEPT_CODE', '부서코드', '경영지원팀', '02', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEPT_CODE', '부서코드', '전략기획팀', '03', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEPT_CODE', '부서코드', '채널1팀', '04', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEPT_CODE', '부서코드', '기기운영팀', '05', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEPT_CODE', '부서코드', 'IT지원팀', '06', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEPT_CODE', '부서코드', '시재센터', '07', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEPT_CODE', '부서코드', 'CS센터', '08', null, 8, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEPT_CODE', '부서코드', '지사/지소', '09', null, 9, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEPT_CODE', '부서코드', '운영지원팀', '10', null, 10, 'Y', null, null, null, null, null, date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-09 14:57:52.367000', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '강남_관악신사동', '011147', null, 1, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '강동_화도금융센터', '031796', null, 2, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '강북_영업부', '021100', null, 3, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '대전_성수동금융센터', '061177', null, 4, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '원주_충주연수', '162016', null, 5, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '부산_신평금융센터', '102133', null, 6, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '광주_김포공항', '127020', null, 7, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '대구_김천금융센터', '117008', null, 8, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '강동_평내', '031876', null, 9, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '부산_부산서면', '102116', null, 10, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '대구_대신동', '112304', null, 11, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '광주_목포', '122414', null, 12, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '인천_만수동', '071757', null, 13, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '인천_상록수', '071740', null, 14, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '원주_이천금융센터', '161805', null, 15, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '강동_건국대학교', '037037', null, 16, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '부산_울산현대', '102150', null, 17, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '강서_역촌동', '041306', null, 18, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '강북_만리동', '021199', null, 19, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '강동_워커힐', '031437', null, 20, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '충남_증평', '152006', null, 21, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '수원_LG이노텍(출)', '052329', null, 22, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '인천_안산스마트허브금융센터', '071737', null, 23, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '충남_오창금융센터', '152035', null, 24, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '수원_팔탄금융센터', '051868', null, 25, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '강북_효자동', '021174', null, 26, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '인천_김포불노', '071826', null, 27, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '강북_신당동', '021328', null, 28, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '대전_서산금융센터', '062009', null, 29, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '강북_명동역', '021210', null, 30, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '대구_영주', '112302', null, 31, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '전북_새만금금융센터', '145808', null, 32, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '인천_인천국제공항', '077057', null, 33, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '인천_인천금융센터', '071804', null, 34, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '대전_가오동', '062046', null, 35, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '인천_연수동', '071774', null, 36, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '부산_센텀금융센터', '102156', null, 37, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '인천_안양역', '071862', null, 38, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '우리카드', '041', null, 38, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '기업은행', '043', null, 39, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '외환카드', '044', null, 40, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '새마을금고중앙회', '045', null, 41, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '새마을금고중앙회', '046', null, 42, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '신협중앙회', '047', null, 43, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '신협중앙회', '048', null, 44, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '신협중앙회', '049', null, 45, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '상호저축은행', '050', null, 46, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '기타 외국계은행(중국 교통은행등)', '051', null, 47, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '모간스탠리은행', '052', null, 48, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '한국씨티은행', '053', null, 49, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', 'HSBC은행', '054', null, 50, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '도이치은행', '055', null, 51, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '알비에스피엘씨은행', '056', null, 52, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '제이피모간체이스은행', '057', null, 53, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '미즈호은행', '058', null, 54, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '미쓰비시도쿄UFJ은행', '059', null, 55, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', 'BOA은행', '060', null, 56, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '비엔피파리바은행', '061', null, 57, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '중국공상은행', '062', null, 58, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '중국은행', '063', null, 59, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '산림조합중앙회', '064', null, 60, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '대화은행', '065', null, 61, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '교통은행', '066', null, 62, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '우체국', '071', null, 63, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '우체국', '072', null, 64, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '우체국', '073', null, 65, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '우체국', '074', null, 66, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '우체국', '075', null, 67, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '신용보증기금', '076', null, 68, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '기술보증기금', '077', null, 69, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '국민은행', '078', null, 70, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '국민은행', '079', null, 71, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', 'KEB하나은행', '080', null, 72, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', 'KEB하나은행', '081', null, 73, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', 'KEB하나은행', '082', null, 74, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '우리은행', '083', null, 75, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '우리은행', '084', null, 76, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '새마을금고중앙회', '085', null, 77, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '새마을금고중앙회', '086', null, 78, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '새마을금고중앙회', '087', null, 79, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '신한은행', '088', null, 80, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '케이뱅크', '089', null, 81, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '카카오뱅크', '090', null, 82, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '한국주택금융공사', '093', null, 83, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '서울보증보험', '094', null, 84, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '경찰청', '095', null, 85, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '한국전자금융(주)', '096', null, 86, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '전자화폐 중계센터,RK', '097', null, 87, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '은행연합회,재정경제부', '098', null, 88, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '금융결제원', '099', null, 89, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '한국신용정보원', '101', null, 90, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '유안타증권', '209', null, 91, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '현대증권', '218', null, 92, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '골든브릿지 투자증권', '221', null, 93, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '한양증권', '222', null, 94, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '리딩투자증권', '223', null, 95, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', 'BNK투자증권', '224', null, 96, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', 'IBK투자증권', '225', null, 97, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', 'KB투자증권', '226', null, 98, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', 'KTB투자증권', '227', null, 99, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '미래에셋대우', '230', null, 100, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '미래에셋대우', '238', null, 101, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '삼성증권', '240', null, 102, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '한국투자증권', '243', null, 103, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', 'NH투자증권', '247', null, 104, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '교보증권', '261', null, 105, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '하이투자증권', '262', null, 106, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', 'HMC투자증권', '263', null, 107, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '키움증권', '264', null, 108, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '이베스트투자증권', '265', null, 109, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '에스케이증권', '266', null, 110, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '대신증권', '267', null, 111, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '메리츠종합금융증권', '268', null, 112, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '한화투자증권', '269', null, 113, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '하나금융투자', '270', null, 114, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '신한금융투자', '278', null, 115, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '동부증권', '279', null, 116, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '유진투자증권', '280', null, 117, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '메리츠종합금융증권', '287', null, 118, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', 'NH투자증권', '289', null, 119, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '부국증권', '290', null, 120, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '신영증권', '291', null, 121, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '케이프투자증권', '292', null, 122, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '한국증권금융', '293', null, 123, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '펀드온라인코리아', '294', null, 124, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BANK_CODE', '은행코드', '우리종합금융', '295', null, 125, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AS_METHOD', 'A/S 매체', '회선장애', '8', null, 8, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AS_METHOD', 'A/S 매체', '조작MISS', '9', null, 9, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AS_METHOD', 'A/S 매체', '타업체장애', 'A', null, 10, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AS_METHOD', 'A/S 매체', '전원관련장애', 'B', null, 11, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AS_METHOD', 'A/S 매체', '기타장애', 'C', null, 12, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '폐국', '14', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '현금 Full', '21', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '수표 Full', '22', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '명세표 Full', '23', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '회수함 Full', '24', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '만원권 부족', '31', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '수표 부족', '32', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '명세표 부족', '33', null, 8, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '저널 부족', '34', null, 9, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '오만원권 부족', '35', null, 10, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', 'A4용지부족', '38', null, 11, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '만원권 예보', '41', null, 12, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '수표 예보', '42', null, 13, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '명세표 예보', '43', null, 14, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '저널 예보', '44', null, 15, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '오만원권 예보', '45', null, 16, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '현금 미수취', '51', null, 17, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '수표 미수취', '52', null, 18, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '명세표 미수취', '53', null, 19, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '카드 미수취', '55', null, 20, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '통장 미수취', '56', null, 21, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '지로 미수취', '57', null, 22, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '현금 매체 걸림', '61', null, 23, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '수표 매체 걸림', '62', null, 24, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '명세표 매체 걸림', '63', null, 25, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '저널 매체 걸림', '64', null, 26, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '카드 매체 걸림', '65', null, 27, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '통장 매체 걸림', '66', null, 28, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '지로 매체 걸림', '67', null, 29, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '현금 모듈 장애', '71', null, 30, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '수표 모듈 장애', '72', null, 31, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '명세표 모듈 장애', '73', null, 32, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '저널 모듈 장애', '74', null, 33, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '카드 모듈 장애', '75', null, 34, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '통장 모듈 장애', '76', null, 35, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '지로 모듈 장애', '77', null, 36, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '카드 읽기 장애', '85', null, 37, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '통장 읽기 장애', '86', null, 38, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '지로 읽기 장애', '87', null, 39, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '미정의', '88', null, 40, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', 'H/W기타장애', '91', null, 41, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '모듈빠짐', '92', null, 42, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', 'S/W장애(통신장애)', '93', null, 43, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '수표정보오류', '94', null, 44, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '수신전문분석오류', '95', null, 45, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', 'DK서버접속장애(Digital Kiosk 서버)', '96', null, 46, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '자동화코너 경계 (스키밍)', '97', null, 47, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', 'ATM 현금박스빠짐', 'A1', null, 48, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '현금모듈빠짐', 'A2', null, 49, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '내부시재운영함OPEN', 'A3', null, 50, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', 'CD4 카세트빠짐', 'A5', null, 51, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', 'CD3 카세트빠짐', 'A6', null, 52, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', 'CD2 카세트빠짐', 'A7', null, 53, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', 'CD1 카세트빠짐', 'A8', null, 54, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '1달러 부족', 'B1', null, 55, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '5달러 부족', 'B2', null, 56, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '10달러 부족', 'B3', null, 57, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '20달러 부족', 'B4', null, 58, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '50달러 부족', 'B5', null, 59, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '100달러 부족', 'B6', null, 60, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '카드발급 미수취', 'C5', null, 61, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '신분증 미수취', 'C7', null, 62, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '카드발급 걸림', 'D5', null, 63, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '신분증 미수취', 'D7', null, 64, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '카드발급 모듈 장애', 'E5', null, 65, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '신분증 모듈 장애', 'E7', null, 66, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TOTAL_CLASSIFY_CODE', '집계분류', '바이오 모듈 장애', 'E8', null, 67, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('PROCESS_STATUS', '처리상태', '정상거래', '01', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('PROCESS_STATUS', '처리상태', '에러거래', '02', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('PROCESS_STATUS', '처리상태', '취소정상', '03', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('PROCESS_STATUS', '처리상태', '취소에러', '04', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('PROCESS_STATUS', '처리상태', '거래요구상태', '05', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('PROCESS_STATUS', '처리상태', '취소요구상태', '06', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('PROCESS_STATUS', '처리상태', '거래무등답(TimeOver)', '07', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('PROCESS_STATUS', '처리상태', '타행입금 입금불능', '08', null, 8, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('LOCATE_GUBUN', '입지구분', '에러거래', '00', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('LOCATE_GUBUN', '입지구분', '입금거래', '01', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('LOCATE_GUBUN', '입지구분', '출금거래', '02', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('LOCATE_GUBUN', '입지구분', '그외거래', '03', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEAL_METHOD', '거래매체', '매체무관', '00', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEAL_METHOD', '거래매체', '카드', 'CD', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEAL_METHOD', '거래매체', 'IC카드', 'IC', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEAL_METHOD', '거래매체', '통장', 'PB', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEAL_METHOD', '거래매체', '무매체', 'MU', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEAL_METHOD', '거래매체', '핸드폰', 'HP', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEAL_METHOD', '거래매체', '전자통장', 'EP', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEAL_METHOD', '거래매체', '전자화폐', 'EM', null, 8, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEAL_METHOD', '거래매체', 'Mobile-rf', 'MF', null, 9, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEAL_METHOD', '거래매체', 'T-Money', 'TM', null, 10, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEAL_METHOD', '거래매체', 'IC-RF', 'IF', null, 11, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEAL_METHOD', '거래매체', 'Fall Back', 'FB', null, 12, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CLOSE_GUBUN', '시재마감구분', '시재확정', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CLOSE_GUBUN', '시재마감구분', '계리마감', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NONE_PROCESS_AT', '미처리건유무', '무', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NONE_PROCESS_AT', '미처리건유무', '유', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEAL_TYPE', '거래종류', '입금', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEAL_TYPE', '거래종류', '출금', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEAL_TYPE', '거래종류', '미장전', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CASH_SENDING_CLOSE_GUBUN', '현송마감구분', '마감 전', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CASH_SENDING_CLOSE_GUBUN', '현송마감구분', '마감 후', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CASH_SENDING_CLOSE_GUBUN', '현송마감구분', '휴일', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ACCEPT_ENABLE', '수용여부', '수용', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ACCEPT_ENABLE', '수용여부', '거부', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MON_CASH_SENDING_ENABLE', '월요일 현송여부', '미현송', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MON_CASH_SENDING_ENABLE', '월요일 현송여부', '현송', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TUE_CASH_SENDING_ENABLE', '화요일 현송여부', '미현송', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TUE_CASH_SENDING_ENABLE', '화요일 현송여부', '현송', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('WED_CASH_SENDING_ENABLE', '수요일 현송여부', '미현송', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('WED_CASH_SENDING_ENABLE', '수요일 현송여부', '현송', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('THU_CASH_SENDING_ENABLE', '목요일 현송여부', '미현송', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('THU_CASH_SENDING_ENABLE', '목요일 현송여부', '현송', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FRI_CASH_SENDING_ENABLE', '금요일 현송여부', '미현송', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FRI_CASH_SENDING_ENABLE', '금요일 현송여부', '현송', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('REQ_GUBUN', '신청구분', '운영자금 현송', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('REQ_GUBUN', '신청구분', '출금수표 인동', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('REQ_GUBUN', '신청구분', '출금수표 인도취소', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('REQ_GUBUN', '신청구분', '카드재고 인도', '4', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('REQ_GUBUN', '신청구분', '카드재고 인도취소', '5', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('STAFF_ENABLE', '직원여부', '없음', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('STAFF_ENABLE', '직원여부', '재직', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('OVERHAUL_GUBUN', '점검구분', '정기점검', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('OVERHAUL_GUBUN', '점검구분', '수시점검', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NONE_PENALTY_ENABLE', '패널티미대상여부', '대상', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NONE_PENALTY_ENABLE', '패널티미대상여부', '미대상', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEVICE_INFO_GUBUN', '기기정보구분', '기기정보', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DEVICE_INFO_GUBUN', '기기정보구분', '하드디스크정보', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NOTICE_CODE', '정보내용', '공지사항', '01', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NOTICE_CODE', '정보내용', '기타', '99', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INOUT_GUBUN', '출입구분', '카드SET', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INOUT_GUBUN', '출입구분', '카드OFF', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TASK_GUBUN', '업무구분', '경비', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TASK_GUBUN', '업무구분', '장애', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TASK_GUBUN', '업무구분', '현송', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TASK_GUBUN', '업무구분', '환경', '4', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TASK_GUBUN', '업무구분', '은행', '5', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_INSIDE_CLEANING_OVERHAUL', '기기내부청소 점검', '미실시', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_INSIDE_CLEANING_OVERHAUL', '기기내부청소 점검', '실시', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CLEANING_OVERHAUL', '기기청소 점검', '미실시', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CLEANING_OVERHAUL', '기기청소 점검', '실시', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INTERCOM_CLEANING_OVERHAUL', '인터폰청소 점검', '미실시', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INTERCOM_CLEANING_OVERHAUL', '인터폰청소 점검', '실시', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FLOAR_CLEANING_OVERHAUL', '바닥청소 점검', '미실시', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FLOAR_CLEANING_OVERHAUL', '바닥청소 점검', '실시', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('GARBAGECAN_CLEANING_OVERHAUL', '쓰레기통청소 점검', '미실시', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('GARBAGECAN_CLEANING_OVERHAUL', '쓰레기통청소 점검', '실시', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('GLASS_CLEAN_CONFIRM_OVERHAUL', '유리벽 청결확인 점검', '불량', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('GLASS_CLEAN_CONFIRM_OVERHAUL', '유리벽 청결확인 점검', '양호', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NOTICE_GUIDE_OVERHAUL', '이용안내문 점검', '불량', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NOTICE_GUIDE_OVERHAUL', '이용안내문 점검', '양호', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ETC_NOTICE_OVERHAUL', '기타 부착물 점검', '불량', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ETC_NOTICE_OVERHAUL', '기타 부착물 점검', '양호', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INTERCOM_OVERHAUL', '인터폰청소 점검', '불량', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INTERCOM_OVERHAUL', '인터폰청소 점검', '양호', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DVR_OVERHAUL', 'DVR 점검', '불량', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DVR_OVERHAUL', 'DVR 점검', '양호', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FLUORESCENT_LIGHT_OVERHAUL', '형광등 점검', '불량', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FLUORESCENT_LIGHT_OVERHAUL', '형광등 점검', '양호', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('COOLER_OVERHAUL', '냉방기 점검', '중지', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('COOLER_OVERHAUL', '냉방기 점검', '가동', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HEATER_OVERHAUL', '난방기 점검', '중지', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HEATER_OVERHAUL', '난방기 점검', '가동', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOOTH_OVERHAUL', '부스점검 점검', '불량', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOOTH_OVERHAUL', '부스점검 점검', '양호', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CHECK_RESIDUAL_QUANTITY_OVERHAUL', '수표잔량 점검', '미확인', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CHECK_RESIDUAL_QUANTITY_OVERHAUL', '수표잔량 점검', '확인', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('RTRVL_BOX_OVERHAUL', '회수함상태 점검', '미확인', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('RTRVL_BOX_OVERHAUL', '회수함상태 점검', '확인', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BILLBOARD_LIGHTING_OVERHAUL', '간판조명 점검', '불량', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BILLBOARD_LIGHTING_OVERHAUL', '간판조명 점검', '양호', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TAKE_PHOTO_ENABLE', '사진촬영유무', '미촬영', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TAKE_PHOTO_ENABLE', '사진촬영유무', '촬영', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_FRONT_GLASS_MNG', '기기전면유리 관리', '미실시', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_FRONT_GLASS_MNG', '기기전면유리 관리', '실시', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_FRONT_MNG', '기기전면부 관리', '미실시', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_FRONT_MNG', '기기전면부 관리', '실시', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CRACKS_MNG', '기기틈새 관리', '미실시', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_CRACKS_MNG', '기기틈새 관리', '실시', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MORNITOR_MNG', '모니터 관리', '미실시', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MORNITOR_MNG', '모니터 관리', '실시', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BNKB_PART_ENTRANCE_CRACKS_MNG', '통장부입구 틈새 관리', '미실시', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BNKB_PART_ENTRANCE_CRACKS_MNG', '통장부입구 틈새 관리', '실시', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CARD_PART_ENTRANCE_CRACKS_MNG', '카드부입구 틈새 관리', '미실시', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CARD_PART_ENTRANCE_CRACKS_MNG', '카드부입구 틈새 관리', '실시', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INTERCOM_MNG', '인터폰 관리', '미실시', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INTERCOM_MNG', '인터폰 관리', '실시', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOARD_CRADLE_MNG', '게시물 거치대 관리', '미실시', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BOARD_CRADLE_MNG', '게시물 거치대 관리', '실시', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_FLOAR_MNG', '점포바닥 관리', '미실시', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_FLOAR_MNG', '점포바닥 관리', '실시', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INSIDE_WALL_MNG', '내부벽면 관리', '미실시', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INSIDE_WALL_MNG', '내부벽면 관리', '실시', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('OUTSIDE_WALL_MNG', '외부벽면 관리', '미실시', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('OUTSIDE_WALL_MNG', '외부벽면 관리', '실시', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_GLASS_MNG', '부수/점포유리 관리', '미실시', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_GLASS_MNG', '부수/점포유리 관리', '실시', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CEILING_MNG', '천정 관리', '미실시', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CEILING_MNG', '천정 관리', '실시', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FLUORESCENT_LIGHT_GLASS_MNG', '형광등/조명기구 관리', '미실시', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FLUORESCENT_LIGHT_GLASS_MNG', '형광등/조명기구 관리', '실시', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('STICKING_BILLBOARD_MNG', '부착간판 관리', '미실시', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('STICKING_BILLBOARD_MNG', '부착간판 관리', '실시', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('GARBAGECAN_MNG', '쓰레기통 관리', '미실시', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('GARBAGECAN_MNG', '쓰레기통 관리', '실시', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('COOLER_HEATER_MNG', '냉/난방기(실외기) 관리', '미실시', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('COOLER_HEATER_MNG', '냉/난방기(실외기) 관리', '실시', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_PERIPHERY_MNG', '점포주위 관리', '미실시', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('BRANCH_PERIPHERY_MNG', '점포주위 관리', '실시', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('EQUIP_WORK_STEXT_GUBUN', '작업일정 전문구분', '통보', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('EQUIP_WORK_STEXT_GUBUN', '작업일정 전문구분', '변경', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('EQUIP_WORK_STEXT_GUBUN', '작업일정 전문구분', '취소', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('WORK_GUBUN', '작업구분', '신규코너', '01', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('WORK_GUBUN', '작업구분', '코너폐쇄', '02', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('WORK_GUBUN', '작업구분', '기기이전', '03', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('WORK_GUBUN', '작업구분', '기기추가', '04', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('WORK_GUBUN', '작업구분', '기기철수', '05', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('WORK_GUBUN', '작업구분', '기기교체', '06', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('WORK_GUBUN', '작업구분', '시설물추가', '07', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('WORK_GUBUN', '작업구분', '시설물철수', '08', null, 8, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('WORK_GUBUN', '작업구분', '계리점변경', '09', null, 9, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('WORK_GUBUN', '작업구분', '관리전환', '10', null, 10, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('WORK_GUBUN', '작업구분', '시설물교체', '11', null, 11, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('WORK_GUBUN', '작업구분', '코너상태변경', '12', null, 12, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('WORK_GUBUN', '작업구분', '임시철수', '13', null, 13, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('WORK_GUBUN', '작업구분', '기타작업', '14', null, 14, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('EQUIP_STEXT_GUBUN', '전문구분', '신규', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('EQUIP_STEXT_GUBUN', '전문구분', '변경', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('EQUIP_STEXT_GUBUN', '전문구분', '취소', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SPECIAL_STYLE_GUBUN', '특수형구분', '일반형', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SPECIAL_STYLE_GUBUN', '특수형구분', '특수형', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_HIRE_ENABLE', '시설물임차여부', '임차물無', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_HIRE_ENABLE', '시설물임차여부', '임차물有', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HIRE_TERMINAL_ENABLE', '임차기기여부', '은행자산', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HIRE_TERMINAL_ENABLE', '임차기기여부', '임차기기', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INSTALL_TERMINAL_GUBUN', '설치기기구분', '신규도입기기', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INSTALL_TERMINAL_GUBUN', '설치기기구분', '창고재고기기', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INSTALL_TERMINAL_GUBUN', '설치기기구분', '이전', '5', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NOUSE_HIRE_TERMINAL_ENABLE', '철수임차기기여부', '은행자산', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NOUSE_HIRE_TERMINAL_ENABLE', '철수임차기기여부', '임차기기', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NOUSE_GUBUN', '철수구분', '창고입고', '3', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NOUSE_GUBUN', '철수구분', '폐기', '4', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NOUSE_GUBUN', '철수구분', '이전', '5', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NEW_HIRE_TERMINAL_ENABLE', '신규임차기기여부', '은행자산', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NEW_HIRE_TERMINAL_ENABLE', '신규임차기기여부', '임차기기', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NEW_INSTALL_TERMINAL_GUBUN', '신규설치기기구분', '신규도입기기', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NEW_INSTALL_TERMINAL_GUBUN', '신규설치기기구분', '창고재고기기', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NEW_INSTALL_TERMINAL_GUBUN', '신규설치기기구분', '이전', '5', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NEW_TERMINAL_MNG_GUBUN', '신규기기관리구분', '지점', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NEW_TERMINAL_MNG_GUBUN', '신규기기관리구분', '본부철수', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NEW_TERMINAL_MNG_GUBUN', '신규기기관리구분', '부분관리', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('RESULT_STEXT_GUBUN', '결과 전문구분', '설치', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('RESULT_STEXT_GUBUN', '결과 전문구분', '철수', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('WORK_COMPLETE_ENABLE', '작업완료여부', '완료', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('WORK_COMPLETE_ENABLE', '작업완료여부', '미완료', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HIRE_FAC_ENABLE', '임차시설물여부', '은행자산', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HIRE_FAC_ENABLE', '임차시설물여부', '임차시설물', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INSTALL_ARTICLE_GUBUN', '설치물품구분', '신규설치', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INSTALL_ARTICLE_GUBUN', '설치물품구분', '재고설치', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CHECK_OPER_ENABLE', '수표운영여부', '수표미운영', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CHECK_OPER_ENABLE', '수표운영여부', '수표운영', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NEW_HIRE_FAC_ENABLE', '신규임차시설물여부', '은행자산', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NEW_HIRE_FAC_ENABLE', '신규임차시설물여부', '임차시설물', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NEW_INSTALL_ARTICLE_GUBUN', '신규설치물품구분', '신규설치', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('NEW_INSTALL_ARTICLE_GUBUN', '신규설치물품구분', '재고설치', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_GUBUN_CODE', '시설물구분', '부스(갑)', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_GUBUN_CODE', '시설물구분', '부스(을)', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_GUBUN_CODE', '시설물구분', 'DVR 본체(갑)', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_GUBUN_CODE', '시설물구분', 'DVR 본체(을)', '4', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_GUBUN_CODE', '시설물구분', 'DVR RACK', '5', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_GUBUN_CODE', '시설물구분', 'DVR 모니터', '6', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_GUBUN_CODE', '시설물구분', 'DVR 카메라', '7', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_GUBUN_CODE', '시설물구분', 'DVR TV', '8', null, 8, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_GUBUN_CODE', '시설물구분', 'DVR 라이트컨트롤러', '9', null, 9, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_GUBUN_CODE', '시설물구분', '냉난방기', '10', null, 10, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_GUBUN_CODE', '시설물구분', '인터폰', '11', null, 11, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_GUBUN_CODE', '시설물구분', '전표세단기', '12', null, 12, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_GUBUN_CODE', '시설물구분', 'VPN', '13', null, 13, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_GUBUN_CODE', '시설물구분', 'HUB', '14', null, 14, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_GUBUN_CODE', '시설물구분', 'Router', '15', null, 15, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '박스형(1실)', '0001', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '박스형(2실)', '0002', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '박스형(3실)', '0003', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '인출회전형', '0004', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '내부회전형', '0005', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '박스형(1실)', '0006', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '박스형(2실)', '0007', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '박스형(3실)', '0008', null, 8, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '인출회전형', '0009', null, 9, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '내부회전형', '0010', null, 10, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '4CH(SG-1500)', '0011', null, 11, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '8CH(SG-4500)', '0012', null, 12, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '16CH(SG-4600)', '0013', null, 13, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '단독형', '0014', null, 14, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '점포형', '0015', null, 15, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', 'H=1,200(무인코너용)', '0016', null, 16, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', 'H=1,800(점두코너)', '0017', null, 17, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '17인치 CRT', '0018', null, 18, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '17인치 LCD', '0019', null, 19, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '일반형(돔)HDC-955NK', '0020', null, 20, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '핀홀(MS-36N)', '0021', null, 21, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '회전형(점포형)SPD-3000', '0022', null, 22, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '회전형(박스형)SPD-2300', '0023', null, 23, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '19인치 LCD', '0024', null, 24, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '라이트컨트롤러', '0025', null, 25, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '점포형', '0026', null, 26, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '박스형', '0027', null, 27, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '인터폰주장치(박스형,점포형)', '0028', null, 28, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '인터폰(박스형,점포형)', '0029', null, 29, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', '인터폰(단독형)', '0030', null, 30, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', 'RS-CD112A', '0031', null, 31, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', 'VPN', '0032', null, 32, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', 'HUB', '0033', null, 33, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('FAC_CODE', '시설물물품', 'Router', '0034', null, 34, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_STATUS_STEXT_GUBUN', '코너상태변경 전문구분', '임시폐쇄', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_STATUS_STEXT_GUBUN', '코너상태변경 전문구분', '임시철수', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_STATUS_STEXT_GUBUN', '코너상태변경 전문구분', '운영정보변경', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('RESTART_GUBUN', '재가동구분', '지정', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('RESTART_GUBUN', '재가동구분', '미지정', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CHANGE_ITEM_GUBUN', '변경항목구분', '운영시간', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CHANGE_ITEM_GUBUN', '변경항목구분', '수표운영', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CHECK_OPER', '수표운영', '미운영', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CHECK_OPER', '수표운영', '운영', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('COST_GUBUN', '비용구분', '기기', '01', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('COST_GUBUN', '비용구분', '부스', '02', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('COST_GUBUN', '비용구분', 'DVR', '03', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('COST_GUBUN', '비용구분', '세단기', '04', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('COST_GUBUN', '비용구분', '냉난방기', '05', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('COST_GUBUN', '비용구분', '경비공사', '06', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DETAIL_ITEM_GUBUN', '세부항목구분', '운송비', '01', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DETAIL_ITEM_GUBUN', '세부항목구분', '설치', '02', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DETAIL_ITEM_GUBUN', '세부항목구분', '이전', '03', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DETAIL_ITEM_GUBUN', '세부항목구분', '철수', '04', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MOBILIZE_GUBUN', '출동구분', '자동출동', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MOBILIZE_GUBUN', '출동구분', '수동출동', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MOBILIZE_GUBUN', '출동구분', '민원출동', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MOBILIZE_GUBUN', '출동구분', '자동2차출동', '4', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MOBILIZE_GUBUN', '출동구분', '영업점통보', '5', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MOBILIZE_GUBUN', '출동구분', '수동2차출동', '6', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('OPER_ENABLE', '운영구분', '미운영', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-21 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-21 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('OPER_ENABLE', '운영구분', '운영', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-22 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-22 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('OPER_ENABLE', '운영구분', '임시폐쇄', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-22 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-22 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_TYPE', '부스구분', '기계실', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-23 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-23 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_TYPE', '부스구분', '내부회전', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-24 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-24 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_TYPE', '부스구분', '인출회전', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('TERMINAL_TYPE', '부스구분', '후면개방', '4', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-26 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-26 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '청호 ATM(QX)', '1101', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-27 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-27 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '청호 ATM(장애우)', '1102', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-28 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-28 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '청호 ATM(DM)', '1103', null, 3, 'Y', null, null, null, null, null, date_format('2017-03-01 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-01 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '청호 ATM(DM전면기)', '1104', null, 4, 'Y', null, null, null, null, null, date_format('2017-03-02 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-02 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '청호 ATM(DMW)', '1105', null, 5, 'Y', null, null, null, null, null, date_format('2017-03-03 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-03 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '청호 ATM(ART-100W)', '1106', null, 6, 'Y', null, null, null, null, null, date_format('2017-03-04 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-04 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '청호 CD(QX)', '1204', null, 7, 'Y', null, null, null, null, null, date_format('2017-03-05 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-05 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '청호 CD(QX외화)', '1205', null, 8, 'Y', null, null, null, null, null, date_format('2017-03-06 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-06 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '청호 CD(COMNET6K)', '1206', null, 9, 'Y', null, null, null, null, null, date_format('2017-03-07 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-07 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '청호 CD(COMNET6K고속)', '1207', null, 10, 'Y', null, null, null, null, null, date_format('2017-03-08 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-08 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '청호 CDP(QX)', '1308', null, 11, 'Y', null, null, null, null, null, date_format('2017-03-09 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-09 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '청호 CDP(COMNET6300)', '1309', null, 12, 'Y', null, null, null, null, null, date_format('2017-03-10 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-10 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '엘지 ATM(GAT420)', '2101', null, 13, 'Y', null, null, null, null, null, date_format('2017-03-11 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-11 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '엘지 ATM(GAT-600)', '2102', null, 14, 'Y', null, null, null, null, null, date_format('2017-03-12 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-12 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '엘지 ATM(GAT-1000)', '2103', null, 15, 'Y', null, null, null, null, null, date_format('2017-03-13 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-13 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '엘지 ATM(GAT-1500T)', '2104', null, 16, 'Y', null, null, null, null, null, date_format('2017-03-14 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-14 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '엘지 ATM(GAT-1500M)', '2105', null, 17, 'Y', null, null, null, null, null, date_format('2017-03-15 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-15 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '엘지 CD(G3만환점)', '2204', null, 18, 'Y', null, null, null, null, null, date_format('2017-03-16 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-16 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '엘지 CDP(G2만)', '2305', null, 19, 'Y', null, null, null, null, null, date_format('2017-03-17 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-17 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '엘지 CDP(G2만L)', '2306', null, 20, 'Y', null, null, null, null, null, date_format('2017-03-18 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-18 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '엘지 CDP(G350)', '2307', null, 21, 'Y', null, null, null, null, null, date_format('2017-03-19 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-19 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '효성 ATM(I)', '3101', null, 22, 'Y', null, null, null, null, null, date_format('2017-03-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '효성 ATM(R)', '3102', null, 23, 'Y', null, null, null, null, null, date_format('2017-03-21 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-21 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '효성 ATM(T1-C)', '3103', null, 24, 'Y', null, null, null, null, null, date_format('2017-03-22 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-22 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '효성 ATM(T1-M)', '3104', null, 25, 'Y', null, null, null, null, null, date_format('2017-03-23 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-23 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '효성 ATM(T1-F)', '3105', null, 26, 'Y', null, null, null, null, null, date_format('2017-03-24 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-24 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '효성 ATM(T2)', '3106', null, 27, 'Y', null, null, null, null, null, date_format('2017-03-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '효성 CoinATM', '3107', null, 28, 'Y', null, null, null, null, null, date_format('2017-03-26 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-26 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '효성 ATM(U-8100)', '3108', null, 29, 'Y', null, null, null, null, null, date_format('2017-03-27 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-27 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '효성 ATM(U8100-환전)', '3109', null, 30, 'Y', null, null, null, null, null, date_format('2017-03-28 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-28 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '효성 ATM(U-8300H)', '3110', null, 31, 'Y', null, null, null, null, null, date_format('2017-03-29 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-29 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '효성 ATM(U-8500)', '3111', null, 32, 'Y', null, null, null, null, null, date_format('2017-03-30 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-30 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '효성 ATM(U-8300)', '3112', null, 33, 'Y', null, null, null, null, null, date_format('2017-03-31 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-03-31 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '효성 CDP(S)', '3307', null, 34, 'Y', null, null, null, null, null, date_format('2017-04-01 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-01 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '효성 KIOSK(공과금)', '3508', null, 35, 'Y', null, null, null, null, null, date_format('2017-04-02 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-02 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', 'FKM ATM(R)', '4101', null, 36, 'Y', null, null, null, null, null, date_format('2017-04-03 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-03 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', 'FKM ATM(K20)', '4102', null, 37, 'Y', null, null, null, null, null, date_format('2017-04-04 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-04 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', 'FKM ATM(K30)', '4103', null, 38, 'Y', null, null, null, null, null, date_format('2017-04-05 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-05 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', 'FKM CDP(VAPTM)', '4303', null, 39, 'Y', null, null, null, null, null, date_format('2017-04-06 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-06 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MODEL_CODE', '기종', '효성 ATM(U-8500H)', '3113', null, 40, 'Y', null, null, null, null, null, date_format('2017-04-07 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-07 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DETAIL_ITEM_GUBUN', '세부항목구분', '교체', '05', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('DETAIL_ITEM_GUBUN', '세부항목구분', '수리비(A/S)', '06', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CHECK_CORNER_OPER_ENABLE', '수표 코너', '미운영', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-04-08 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-08 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CHECK_CORNER_OPER_ENABLE', '수표 코너', '입금', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-04-09 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-09 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CHECK_TERMINAL_OPER_ENABLE', '수표 기기', '미운영', '0', null, 3, 'Y', null, null, null, null, null, date_format('2017-04-10 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-10 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CHECK_TERMINAL_OPER_ENABLE', '수표 기기', '입금', '1', null, 4, 'Y', null, null, null, null, null, date_format('2017-04-11 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-11 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CASH_50K_CORNER_OPER_ENABLE', '고액권 코너', '사용', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-04-12 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-12 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CASH_50K_CORNER_OPER_ENABLE', '고액권 코너', '미사용', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-04-13 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-13 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CASH_50K_TERMINAL_OPER_ENABLE', '고액권 기기', '사용', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-04-14 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-14 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CASH_50K_TERMINAL_OPER_ENABLE', '고액권 기기', '미사용', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-04-15 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-15 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SECURITY_CORP', '경비사', '캡스', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-04-16 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-16 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SECURITY_CORP', '경비사', '에스원', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-04-17 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-17 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SECURITY_CORP', '경비사', 'KT텔레캅', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-04-18 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-18 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SECURITY_CORP_CODE', '경비사(전문)', '캡스', '32', null, 1, 'Y', null, null, null, null, null, date_format('2017-04-16 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-16 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SECURITY_CORP_CODE', '경비사(전문)', '에스원', '02', null, 2, 'Y', null, null, null, null, null, date_format('2017-04-17 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-17 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('SECURITY_CORP_CODE', '경비사(전문)', 'KT텔레캅', '35', null, 3, 'Y', null, null, null, null, null, date_format('2017-04-18 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-18 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INSTALL_PLACE_GUBUN', '설치구분', '기업체', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-04-19 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-19 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INSTALL_PLACE_GUBUN', '설치구분', '병원', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-04-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INSTALL_PLACE_GUBUN', '설치구분', '대형마트', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-04-21 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-21 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INSTALL_PLACE_GUBUN', '설치구분', '지하철', '4', null, 4, 'Y', null, null, null, null, null, date_format('2017-04-22 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-22 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INSTALL_PLACE_GUBUN', '설치구분', '군부대', '5', null, 5, 'Y', null, null, null, null, null, date_format('2017-04-23 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-23 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INSTALL_PLACE_GUBUN', '설치구분', '상가', '6', null, 6, 'Y', null, null, null, null, null, date_format('2017-04-24 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-24 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INSTALL_PLACE_GUBUN', '설치구분', '관공서', '7', null, 7, 'Y', null, null, null, null, null, date_format('2017-04-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INSTALL_PLACE_GUBUN', '설치구분', '호텔', '8', null, 8, 'Y', null, null, null, null, null, date_format('2017-04-26 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-26 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INSTALL_PLACE_GUBUN', '설치구분', '점두전환', '9', null, 9, 'Y', null, null, null, null, null, date_format('2017-04-27 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-27 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INSTALL_PLACE_GUBUN', '설치구분', '아파트', '10', null, 10, 'Y', null, null, null, null, null, date_format('2017-04-28 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-28 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INSTALL_PLACE_GUBUN', '설치구분', '골프장', '11', null, 11, 'Y', null, null, null, null, null, date_format('2017-04-29 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-29 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INSTALL_PLACE_GUBUN', '설치구분', '학교', '12', null, 12, 'Y', null, null, null, null, null, date_format('2017-04-30 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-04-30 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INSTALL_PLACE_GUBUN', '설치구분', '공장', '13', null, 13, 'Y', null, null, null, null, null, date_format('2017-05-01 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-01 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INSTALL_PLACE_GUBUN', '설치구분', '공항', '14', null, 14, 'Y', null, null, null, null, null, date_format('2017-05-02 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-02 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('INSTALL_PLACE_GUBUN', '설치구분', '점두코너', '15', null, 15, 'Y', null, null, null, null, null, date_format('2017-05-03 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-05-03 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '충남_충북영업부금융센터', '157011', null, 39, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '강북_상봉역', '021133', null, 40, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '강동_나라사랑카드 발급센터', '037141', null, 41, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '강릉_강릉금융센터', '087010', null, 42, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '충남_한국기술교육대학교(출)', '157123', null, 43, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '수원_화서동', '051835', null, 44, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '강릉_삼척', '081710', null, 45, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '강릉_양양', '081764', null, 46, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '충남_순천향대학교', '157092', null, 47, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '강동_암사역', '031297', null, 48, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '인천_송현동금융센터', '071841', null, 49, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '인천_부천역', '071701', null, 50, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '강동_종로중앙금융센터', '031104', null, 51, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '인천_김포한강금융센터', '071961', null, 52, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '강동_강원영업부금융센터', '031705', null, 53, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '대구_대구금융센터', '112307', null, 54, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('JISA_BRANCH_CODE', '지사_지점코드', '인천_양천향교역', '071302', null, 55, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CALLEE_GUBUN', '출동구분코드', '자동출동', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CALLEE_GUBUN', '출동구분코드', '자체출동', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-06-25 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '신림역', '6472', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '신림역', '6740', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '신림역', '6741', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '메디칼프라자', '6756', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '메디칼프라자', '6757', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '포스트타워', '6844', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '영동병원', '6868', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '연수계룡리슈빌', '6869', null, 8, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '탑마트장림점', '6878', null, 9, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '김포공항연수원', '5907', null, 10, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', 'KAL캐터링', '5912', null, 11, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '아시아나훈련원', '5915', null, 12, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '한국공항공사', '5916', null, 13, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '김천시청', '5869', null, 14, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '평내지점1층', '5973', null, 15, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '평내지점1층', '5974', null, 16, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '평내지점1층', '5975', null, 17, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '평내지점1층', '5976', null, 18, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '평내지점1층', '6138', null, 19, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '호텔롯데지하1층', '5552', null, 20, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '서문시장만남의광장', '5999', null, 21, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '제3함대사령부', '6097', null, 22, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '만수금호APT', '5558', null, 23, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '만수금호APT', '5559', null, 24, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '만수금호APT', '5560', null, 25, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '동산교회(사동)', '6109', null, 26, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '동산교회(사동)', '6110', null, 27, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '동산교회(사동)', '6111', null, 28, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '한국관광대학교휴게실(1층)', '5388', null, 29, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '건국대도서관3층', '5676', null, 30, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '건국대정문', '5677', null, 31, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '건국대정문', '5678', null, 32, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '건대도서관', '5685', null, 33, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '건대본관', '5686', null, 34, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '건대입구', '5687', null, 35, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '건대입구', '5688', null, 36, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '건국대민자식당내', '6098', null, 37, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '광주공항', '5745', null, 38, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '성원상떼빌', '6100', null, 39, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '성원상떼빌', '6101', null, 40, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '서부재활체육센터', '5417', null, 41, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '만리시장', '5476', null, 42, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '만리시장', '5477', null, 43, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '만리시장', '5478', null, 44, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '만리시장', '5479', null, 45, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '워커힐카지노', '6031', null, 46, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '증평화랑마트', '5565', null, 47, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', 'LG이노텍오산공장', '5591', null, 48, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '안산역', '5497', null, 49, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '안산역', '5498', null, 50, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '안산역', '5499', null, 51, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '안산역', '5500', null, 52, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '중국은행안산지점', '6129', null, 53, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '오창타운', '5443', null, 54, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '오창타운', '5444', null, 55, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '오창타운', '5445', null, 56, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '오창타운', '5446', null, 57, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '해병대사령부', '6024', null, 58, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '88부대', '5137', null, 59, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '김포삼성테스코', '5666', null, 60, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '신당6동사무소', '5424', null, 61, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '신당6동사무소', '5425', null, 62, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '신당6동사무소', '5426', null, 63, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '서산현대APT', '5809', null, 64, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '서산현대APT', '5810', null, 65, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '명동역Green365', '6289', null, 66, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '명동역Green365', '6290', null, 67, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '명동역Green365', '6291', null, 68, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '명동역Green365', '6292', null, 69, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', 'SK머티리얼즈', '6034', null, 70, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '동군산병원', '6295', null, 71, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '인천국제공항사인재개발원', '6305', null, 72, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '간석역지점1층', '5408', null, 73, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '간석역지점1층', '5409', null, 74, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '간석역지점1층', '5410', null, 75, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '간석역지점1층', '5411', null, 76, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '간석역지점1층', '5412', null, 77, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '패션아일랜드', '6355', null, 78, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '아시아나항공직원식당', '6372', null, 79, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '이마트연수점', '6395', null, 80, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '기장병원', '6393', null, 81, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '건국대경영관', '6436', null, 82, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '안양역점두2층', '6496', null, 83, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '안양역점두2층', '6497', null, 84, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '안양역점두2층', '6498', null, 85, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '안양역점두2층', '6499', null, 86, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '안양역점두2층', '6500', null, 87, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '안양역점두2층', '6556', null, 88, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '젠한국', '6522', null, 89, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '코스트코상봉점', '6612', null, 90, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '특수전교육단', '6626', null, 91, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '3군사령부', '6657', null, 92, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '영동화력발전처', '6415', null, 93, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '남양주해비치', '6090', null, 94, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '독립기념관매표소', '6910', null, 95, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '화서동지점1층', '6665', null, 96, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '화서동지점1층', '6666', null, 97, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '화서동지점1층', '6667', null, 98, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '화서동지점1층', '6668', null, 99, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '화서동지점1층', '6669', null, 100, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '태화마트삼척점', '6608', null, 101, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '양양솔비치', '6978', null, 102, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '서문2지구지하1층(서쪽)', '6976', null, 103, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '공군사관학교복지회관', '6329', null, 104, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '유니토피아관', '6480', null, 105, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '암사역지점점두365', '6235', null, 106, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '암사역지점점두365', '6236', null, 107, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '암사역지점점두365', '6237', null, 108, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '암사역지점점두365', '6238', null, 109, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '암사역지점점두365', '6239', null, 110, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '암사역지점점두365', '6240', null, 111, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '(구)송림동점두365', '5302', null, 112, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '(구)송림동점두365', '5329', null, 113, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '(구)송림동점두365', '5334', null, 114, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '(구)송림동점두365', '6277', null, 115, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '부천남부', '6059', null, 116, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '부천역지점점두365', '6225', null, 117, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '부천역지점점두365', '6226', null, 118, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '부천역지점점두365', '6227', null, 119, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '부천역지점점두365', '6228', null, 120, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '부천역지점점두365', '6229', null, 121, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '부천역지점점두365', '6230', null, 122, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '부천역지점점두365', '6231', null, 123, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '부천역지점점두365', '6232', null, 124, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '부천역지점점두365', '6220', null, 125, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '남양주현대병원', '5460', null, 126, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '한국공항공사서울지역본부', '5545', null, 127, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '이마트김포한강점', '5929', null, 128, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '(구)춘천중앙지점점두365', '6673', null, 129, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '(구)춘천중앙지점점두365', '6674', null, 130, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '(구)춘천중앙지점점두365', '6685', null, 131, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '(구)춘천중앙지점점두365', '6686', null, 132, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '(구)춘천중앙지점점두365', '6687', null, 133, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '(구)대구중앙점두365', '5740', null, 134, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '(구)대구중앙점두365', '5741', null, 135, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '(구)대구중앙점두365', '5742', null, 136, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '(구)등촌서점두365', '5242', null, 137, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '(구)등촌서점두365', '5243', null, 138, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '(구)등촌서점두365', '5244', null, 139, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORNER_TERMINAL_CODE', '코너단말코드', '(구)등촌서점두365', '5245', null, 140, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ORG_CODE', '기관코드', '신한은행', '01', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ARRIVAL_PLAN_GUBUN', '도착예정구분', '기본', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ARRIVAL_PLAN_GUBUN', '도착예정구분', '담당자변경', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ARRIVAL_PLAN_GUBUN', '도착예정구분', '도착예정시간변경', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ARRIVAL_PLAN_GUBUN', '도착예정구분', '담당자변경&도착예정시간변경', '4', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CALLEE_CANCEL_REQ_REASON_CODE', '출동취소요청사유', '민원해결', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CALLEE_CANCEL_REQ_REASON_CODE', '출동취소요청사유', '출동등록오류', '2', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CALLEE_CANCEL_REQ_REASON_CODE', '출동취소요청사유', '복구', '3', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('EMP_GUBUN', '직원구분', '현송요원', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('EMP_GUBUN', '직원구분', '출동요원', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORP_GUBUN', '회사구분', '토탈사', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORP_GUBUN', '회사구분', '경비사', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('CORP_GUBUN', '회사구분', '기기사', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_TYPE', '민원유형', '임시중단', '01', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_TYPE', '민원유형', '리뉴얼', '02', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_TYPE', '민원유형', '일시철수', '03', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_TYPE', '민원유형', '간판설치', '04', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_TYPE', '민원유형', '간판철수', '05', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_TYPE', '민원유형', '간판작업', '06', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_TYPE', '민원유형', '부스작업', '07', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_TYPE', '민원유형', '전기작업', '08', null, 8, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_TYPE', '민원유형', '기기파손', '09', null, 9, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_TYPE', '민원유형', '부스파손', '10', null, 10, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_TYPE', '민원유형', '터치파손', '11', null, 11, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_TYPE', '민원유형', '신규설치', '12', null, 12, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_TYPE', '민원유형', '운영', '13', null, 13, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_TYPE', '민원유형', '기뭉치교체', '14', null, 14, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_TYPE', '민원유형', '히터설치', '15', null, 15, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_TYPE', '민원유형', '기기장애', '16', null, 16, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_TYPE', '민원유형', '기기교체', '17', null, 17, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_TYPE', '민원유형', '기기철수', '18', null, 18, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_TYPE', '민원유형', '기기이동', '19', null, 19, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_TYPE', '민원유형', '현금부족', '20', null, 20, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_TYPE', '민원유형', '운영민원', '21', null, 21, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_TYPE', '민원유형', '하드교체', '22', null, 22, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_TYPE', '민원유형', '클레임', '23', null, 23, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_STATUS', '민원조치상태', '등록', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_STATUS', '민원조치상태', '통보', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_STATUS', '민원조치상태', '완료', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_STATUS', '민원조치상태', '작업1', '4', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_STATUS', '민원조치상태', '지사진행', '5', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MINWON_STATUS', '민원조치상태', '지사접수', '6', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_PROCESS_STATUS', '장애처리상태', '장애통보', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_PROCESS_STATUS', '장애처리상태', '출동요청', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_PROCESS_STATUS', '장애처리상태', '도착예정', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_PROCESS_STATUS', '장애처리상태', '도착', '3', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_PROCESS_STATUS', '장애처리상태', '조치완료', '4', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_PROCESS_STATUS', '장애처리상태', '미조치', '5', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_PROCESS_STATUS', '장애처리상태', '출동취소', '6', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');

INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AMT_CODE', '권종코드', '십원권', '24', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AMT_CODE', '권종코드', '오십원권', '25', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AMT_CODE', '권종코드', '백원권', '26', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AMT_CODE', '권종코드', '오백원권', '27', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AMT_CODE', '권종코드', '천원권', '21', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AMT_CODE', '권종코드', '오천원권', '22', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AMT_CODE', '권종코드', '만원권', '23', null, 7, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AMT_CODE', '권종코드', '오만원권', '28', null, 8, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AMT_CODE', '권종코드', '십만원권', '13', null, 9, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AMT_CODE', '권종코드', '삼십만원권', '14', null, 10, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AMT_CODE', '권종코드', '오십만원권', '15', null, 11, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AMT_CODE', '권종코드', '백만원권', '16', null, 12, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AMT_CODE', '권종코드', '10달러', '34', null, 13, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AMT_CODE', '권종코드', '20달러', '35', null, 14, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AMT_CODE', '권종코드', '50달러', '36', null, 15, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AMT_CODE', '권종코드', '100달러', '37', null, 16, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AMT_CODE', '권종코드', '1000엔', '41', null, 17, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AMT_CODE', '권종코드', '2000엔', '42', null, 18, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AMT_CODE', '권종코드', '5000엔', '43', null, 19, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('AMT_CODE', '권종코드', '10000엔', '44', null, 20, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MANLESS_BRANCH_CODE', '무인점코드', 'BGF핀링크', '8207', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MANLESS_BRANCH_CODE', '무인점코드', 'LG CNS', '8202', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MANLESS_BRANCH_CODE', '무인점코드', '노틸러스효', '8204', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MANLESS_BRANCH_CODE', '무인점코드', '청호컴', '8205', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('MANLESS_BRANCH_CODE', '무인점코드', '한국금융안전', '8206', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('STEXT_SEND_GUBUN', '전문전송구분', '미전송', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('STEXT_SEND_GUBUN', '전문전송구분', '전송완료', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');


INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HANDLE_DEPT', '조치부서코드', '금융사업무', '0', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HANDLE_DEPT', '조치부서코드', '운영지원팀', '1', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HANDLE_DEPT', '조치부서코드', '기기운영팀', '2', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HANDLE_DEPT', '조치부서코드', 'IT지원팀', '3', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HANDLE_DEPT', '조치부서코드', '개발팀', '4', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('HANDLE_DEPT', '조치부서코드', '지사', '5', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');


INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_CLASSIFY_CODE', '장애종류', '장애(1차)', '1', null, 1, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_CLASSIFY_CODE', '장애종류', '장애(2차)', '2', null, 2, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_CLASSIFY_CODE', '장애종류', '현금부족예보', '3', null, 3, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_CLASSIFY_CODE', '장애종류', '현금부족', '4', null, 4, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_CLASSIFY_CODE', '장애종류', '자체출동', '5', null, 5, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
INSERT INTO atms_common_code (GROUP_CD, GROUP_NM, NAME, CODE, REMARK, SORT, USE_YN, DATA1, DATA2, DATA3, DATA4, DATA5, CREATED_AT, CREATED_BY, UPDATED_AT, UPDATED_BY)
VALUES ('ERROR_CLASSIFY_CODE', '장애종류', '민원(A/S)', '6', null, 6, 'Y', null, null, null, null, null, date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system', date_format('2017-02-20 19:12:00', '%Y/%m/%d %H:%i:%s'), 'system');
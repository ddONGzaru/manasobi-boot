/**
######################################################################
##
## BGF 신한은행 위탁관리 :: Flyway 스크립트
##
######################################################################
**/

/**
[테이블 생성]
## 01. atms_auth_group_map
## 02. atms_common_code
## 03. atms_menu
## 04. atms_program
## 05. atms_user
## 06. atms_user_auth
## 07. atms_user_role
## 08. atms_error_log
## 09. atms_file
## 10. atms_stext_seq
## 11. parent_sample
## 12. child_sample

**/

/*ALTER SESSION SET NLS_LANGUAGE = 'KOREAN';
ALTER SESSION SET NLS_DATE_LANGUAGE = 'KOREAN';
ALTER SESSION SET NLS_TIMESTAMP_FORMAT = 'YYYY-MM-DD HH24:MI:SSXFF';*/

/*___ atms_auth_group_map ___*/
CREATE TABLE atms_auth_group_map (
  GRP_AUTH_CD   VARCHAR(100) NOT NULL,
  MENU_ID       INTEGER(20) NOT NULL,
  SCH_AH        VARCHAR(1) NULL,
  SAV_AH        VARCHAR(1) NULL,
  DEL_AH        VARCHAR(1) NULL,
  EXL_AH        VARCHAR(1) NULL,
  FN1_AH        VARCHAR(1) NULL,
  FN2_AH        VARCHAR(1) NULL,
  FN3_AH        VARCHAR(1) NULL,
  FN4_AH        VARCHAR(1) NULL,
  FN5_AH        VARCHAR(1) NULL,
  CREATED_AT    TIMESTAMP NOT NULL,
  CREATED_BY    VARCHAR(255) NULL,
  UPDATED_AT    TIMESTAMP DEFAULT '2017-01-01' NOT NULL,
  UPDATED_BY    VARCHAR(255) NULL,
  PRIMARY KEY (GRP_AUTH_CD, MENU_ID)
);

/*___ atms_common_code ___*/
CREATE TABLE atms_common_code (
  GROUP_CD      VARCHAR(100) NOT NULL,
  GROUP_NM      VARCHAR(100) NULL,
  NAME          VARCHAR(100) NULL,
  CODE          VARCHAR(100) NOT NULL,
  REMARK        VARCHAR(200) NULL,
  SORT          INTEGER(11) NULL,
  USE_YN        VARCHAR(1) NULL,
  DATA1         VARCHAR(100) NULL,
  DATA2         VARCHAR(100) NULL,
  DATA3         VARCHAR(100) NULL,
  DATA4         INTEGER(11) NULL,
  DATA5         INTEGER(11) NULL,
  CREATED_AT    TIMESTAMP NOT NULL,
  CREATED_BY    VARCHAR(255) NULL,
  UPDATED_AT    TIMESTAMP DEFAULT '2017-01-01' NOT NULL,
  UPDATED_BY    VARCHAR(255) NULL,
  PRIMARY KEY (CODE, GROUP_CD)
);

/*___ atms_menu ___*/
CREATE TABLE atms_menu (
  MENU_ID       INTEGER(20) NOT NULL AUTO_INCREMENT,
  MENU_GRP_CD   VARCHAR(100) NULL,
  MENU_NM       VARCHAR(100) NULL,
  PROG_CD       VARCHAR(50) NULL,
  LEVEL_M       INTEGER(11) NULL,
  PARENT_ID     INTEGER(20) NULL,
  SORT          INTEGER(11) NULL,
  CREATED_AT    TIMESTAMP NOT NULL,
  CREATED_BY    VARCHAR(255) NULL,
  UPDATED_AT    TIMESTAMP  DEFAULT '2017-01-01' NOT NULL,
  UPDATED_BY    VARCHAR(255) NULL,
  CONSTRAINT PK_MENU PRIMARY KEY(MENU_ID)
);
/*CREATE SEQUENCE SEQ_MENU_ID START WITH 138 INCREMENT BY 1 MAXVALUE 9999999 CYCLE NOCACHE;*/

/*___ atms_program ___*/
CREATE TABLE atms_program (
  PROG_CD       VARCHAR(50) NOT NULL,
  PROG_NM       VARCHAR(50) NULL,
  PROG_PH       VARCHAR(100) NULL,
  AUTH_CHECK    VARCHAR(1) NULL,
  SCH_AH        VARCHAR(1) NULL,
  SAV_AH        VARCHAR(1) NULL,
  DEL_AH        VARCHAR(1) NULL,
  EXL_AH        VARCHAR(1) NULL,
  FN1_AH        VARCHAR(1) NULL,
  FN2_AH        VARCHAR(1) NULL,
  FN3_AH        VARCHAR(1) NULL,
  FN4_AH        VARCHAR(1) NULL,
  FN5_AH        VARCHAR(1) NULL,
  REMARK        VARCHAR(200) NULL,
  TARGET        VARCHAR(10) NULL,
  CREATED_AT    TIMESTAMP NOT NULL,
  CREATED_BY    VARCHAR(255) NULL,
  UPDATED_AT    TIMESTAMP DEFAULT '2017-01-01' NOT NULL,
  UPDATED_BY    VARCHAR(255) NULL,
  PRIMARY KEY (PROG_CD)
);

/*___ atms_user ___*/
CREATE TABLE atms_user (
  USER_CD                 VARCHAR(100) NOT NULL,
  USER_NM                 VARCHAR(30) NOT NULL,
  USER_PS                 VARCHAR(128) NOT NULL,
  EMAIL                   VARCHAR(50) NULL,
  HP_NO                   VARCHAR(15) NULL,
  USE_YN                  VARCHAR(1) NOT NULL,
  DEL_YN                  VARCHAR(1) NULL,
  USER_STATUS             VARCHAR(10) NULL,
  IP                      VARCHAR(100) NULL,
  LAST_LOGIN_DATE         TIMESTAMP DEFAULT '2017-01-01' NOT NULL,
  LOCALE                  VARCHAR(10) NULL,
  MENU_GRP_CD             VARCHAR(100) NULL,
  PASSWORD_UPDATE_DATE    TIMESTAMP NULL,
  REMARK                  VARCHAR(200) NULL,
  CREATED_AT              TIMESTAMP NOT NULL,
  CREATED_BY              VARCHAR(255) NULL,
  UPDATED_AT              TIMESTAMP DEFAULT '2017-01-01' NOT NULL,
  UPDATED_BY              VARCHAR(255) NULL,
  PRIMARY KEY (USER_CD)
);

/*___ atms_user_auth ___*/
CREATE TABLE atms_user_auth (
  ID INTEGER(20) NOT NULL AUTO_INCREMENT,
  GRP_AUTH_CD VARCHAR(255) NULL,
  USER_CD VARCHAR(255) NULL,
  CREATED_AT TIMESTAMP NOT NULL,
  CREATED_BY VARCHAR(255) NULL,
  UPDATED_AT TIMESTAMP DEFAULT '2017-01-01' NOT NULL,
  UPDATED_BY VARCHAR(255) NULL,
  CONSTRAINT PK_USER_AUTH PRIMARY KEY(ID)
);
/*CREATE SEQUENCE SEQ_USER_AUTH START WITH 3 INCREMENT BY 1 MAXVALUE 9999999 CYCLE NOCACHE;*/

/*___ atms_user_role ___*/
CREATE TABLE atms_user_role (
  ID INTEGER(20) NOT NULL AUTO_INCREMENT,
  ROLE_CD VARCHAR(100) NOT NULL,
  USER_CD VARCHAR(100) NOT NULL,
  CREATED_AT TIMESTAMP NOT NULL,
  CREATED_BY VARCHAR(255) NULL,
  UPDATED_AT TIMESTAMP DEFAULT '2017-01-01' NOT NULL,
  UPDATED_BY VARCHAR(255) NULL,
  CONSTRAINT PK_USER_ROLE PRIMARY KEY(ID)
);
/*CREATE SEQUENCE SEQ_USER_ROLE START WITH 4 INCREMENT BY 1 MAXVALUE 9999999 CYCLE NOCACHE;*/

/*___ atms_error_log ___*/
CREATE TABLE atms_error_log (
  ID INTEGER(20) NOT NULL AUTO_INCREMENT,
  ALERT_YN VARCHAR(1) NULL,
  ERROR_DATETIME TIMESTAMP DEFAULT '2017-01-01' NOT NULL,
  HEADER_MAP TEXT NULL,
  HOST_NAME VARCHAR(50) NULL,
  LOGGER_NAME VARCHAR(300) NULL,
  MESSAGE TEXT NULL,
  PARAMETER_MAP TEXT NULL,
  PATH TEXT NULL,
  PHASE VARCHAR(10) NULL,
  SERVER_NAME VARCHAR(50) NULL,
  SYSTEM VARCHAR(50) NULL,
  TRACE TEXT NULL,
  USER_INFO TEXT NULL,
  CONSTRAINT PK_ERROR_LOG PRIMARY KEY(ID)
);
/*CREATE SEQUENCE SEQ_ERROR_LOG START WITH 1 INCREMENT BY 1 MAXVALUE 9999999 CYCLE NOCACHE;*/

/*___ atms_file ___*/
CREATE TABLE atms_file (
  ID INTEGER(20) NOT NULL AUTO_INCREMENT,
  FILE_NM VARCHAR(500) NULL,
  FILE_SIZE INTEGER(20) NULL,
  FILE_TYPE VARCHAR(30) NULL,
  SAVE_NM VARCHAR(500) NULL,
  DEL_YN VARCHAR(1) NULL,
  FILE_DESC VARCHAR(500) NULL,
  EXTENSION VARCHAR(10) NULL,
  SORT INTEGER(11) NULL,
  TARGET_ID VARCHAR(100) NULL,
  TARGET_TYPE VARCHAR(50) NULL,
  CREATED_AT TIMESTAMP NOT NULL,
  CREATED_BY VARCHAR(255) NULL,
  UPDATED_AT TIMESTAMP DEFAULT '2016-01-01' NOT NULL,
  UPDATED_BY VARCHAR(255) NULL,
  CONSTRAINT PK_FILE PRIMARY KEY(ID)
);
/*CREATE SEQUENCE SEQ_FILE_ID START WITH 1 INCREMENT BY 1 MAXVALUE 9999999 CYCLE NOCACHE;*/

/*___ atms_stext_seq ___*/
CREATE TABLE atms_stext_seq (
  TX_DATE TIMESTAMP NOT NULL,
  SEQ     INTEGER(7) NOT NULL,
  TARGET  INTEGER(2) NOT NULL,
  PRIMARY KEY (TX_DATE, TARGET)
);

/*___ parent_sample ___*/
CREATE TABLE parent_sample (
  SAMPLE_KEY VARCHAR(100) NOT NULL,
  SAMPLE_VALUE VARCHAR(255) NULL,
  ETC1 VARCHAR(255) NULL,
  ETC2 VARCHAR(255) NULL,
  ETC3 VARCHAR(255) NULL,
  ETC4 VARCHAR(255) NULL,
  PRIMARY KEY (SAMPLE_KEY)
);

/*___ child_sample ___*/
CREATE TABLE child_sample (
  SAMPLE_KEY VARCHAR(100) NOT NULL,
  SAMPLE_PARENT_KEY VARCHAR(255) NULL,
  SAMPLE_VALUE VARCHAR(255) NULL,
  ETC1 VARCHAR(255) NULL,
  ETC2 VARCHAR(255) NULL,
  ETC3 VARCHAR(255) NULL,
  PRIMARY KEY (SAMPLE_KEY)
);

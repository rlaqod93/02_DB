--1.테이블 생성
CREATE TABLE table_not_null2(
    LOGIN_ID  VARCHAR2(20) CONSTRAINT TBL_NM2_LOGIN_ID_NN  NOT NULL,
    LOGIN_PWD VARCHAR2(20) CONSTRAINT TBL_NM2_LOGIN_PWD_NN NOT NULL,
    tel       VARCHAR(20)
);

--2.NOT NULL제약 조건 조회
--USER_CONSTRAINTS
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM USER_CONSTRAINTS t1
WHERE t1.table_name = 'TABLE_NOT_NULL2';
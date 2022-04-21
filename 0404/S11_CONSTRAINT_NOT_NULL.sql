--1.테이블 생성
CREATE TABLE table_not_null(
    LOGIN_ID  VARCHAR2(20) NOT NULL,
    LOGIN_PWD VARCHAR2(20) NOT NULL,
    tel       VARCHAR(20)
);
DESC table_not_null;
--2.NOT NULL 컬럼에 NULL입력
INSERT INTO table_not_null(login_id,login_pwd,tel) 
            VALUES('TEST_01',NULL,'010-1234-5678');
--ORA-01400: NULL을 ("SCOTT"."TABLE_NOT_NULL"."LOGIN_PWD") 안에 삽입할 수 없습니다

--3.NULL입력
INSERT INTO table_not_null(login_id,login_pwd)VALUES('TEST_01','1234');

SELECT * FROM table_not_null;

--4.UPDATE NOT NULL -> NULL
UPDATE table_not_null
    SET login_pwd = NULL
WHERE login_id = 'TEST_01';
--ORA-01407: NULL로 ("SCOTT"."TABLE_NOT_NULL"."LOGIN_PWD")을 업데이트할 수 없습니다

--5.NOT NULL제약 조건 조회
--USER_CONSTRAINTS
SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM USER_CONSTRAINTS t1
WHERE t1.table_name = 'TABLE_NOT_NULL';
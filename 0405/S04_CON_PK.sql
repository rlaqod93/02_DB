--PK에 NULL데이터 입력 1번째
INSERT INTO table_pk(LOGIN_ID,LOGIN_PWD,TEL)
        VALUES(NULL,'PWD01','010-1234-5678');
--오류 보고
--ORA-01400: NULL을 ("SCOTT"."TABLE_PK"."LOGIN_ID") 안에 삽입할 수 없습니다

--PK에 NULL데이터 입력 2번째
INSERT INTO table_pk(LOGIN_PWD,TEL)
        VALUES('PWD01','010-1234-5678');
--오류 보고
--ORA-01400: NULL을 ("SCOTT"."TABLE_PK"."LOGIN_ID") 안에 삽입할 수 없습니다
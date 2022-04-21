INSERT INTO table_unique 
        VALUES('TEST_ID_01','PWD01','010-1234-5678');

INSERT INTO table_unique
        VALUES('TEST_ID_01','PWD01','010-1234-5678');
--중복된 데이터 오류
--ORA-00001: 무결성 제약 조건(SCOTT.SYS_C007427)에 위배됩니다

--새로운 데이터
INSERT INTO table_unique
        VALUES('TEST_ID_02','PWD01','010-1234-5678');
        
--NULL 데이터를 넣을 수 있음
INSERT INTO table_unique
        VALUES(NULL,'PWD01','010-1234-5678');

--NULL -> TEST_ID_01 
UPDATE table_unique
    SET LOGIN_ID = 'TEST_ID_01'
WHERE LOGIN_ID IS NULL;
--ORA-00001: 무결성 제약 조건(SCOTT.SYS_C007427)에 위배됩니다
--TEST_ID가 존재해서 UPDATE가 되지 않는다.

SELECT * FROM table_unique;
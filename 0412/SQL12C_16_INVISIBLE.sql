CREATE TABLE T_MEMBER
(
    no NUMBER,
    name VARCHAR2(10),
    tel NUMBER,
    jumin VARCHAR2(13) invisible
);

DESC T_MEMBER;
--jumin 컬럼이 보이지 않음!

--Table T_MEMBER이(가) 생성되었습니다.

--이름   널? 유형           
----------------------
--NO      NUMBER       
--NAME    VARCHAR2(10) 
--TEL     NUMBER 

--INSERT INTO T_MEMBER VALUES(1,'BBB','1234567890','1234567');
--SQL 오류: ORA-00913: 값의 수가 너무 많습니다
--jumin 데이터는 들어가지 않음!

INSERT INTO T_MEMBER VALUES(1,'BBB','1234567890');
--1 행 이(가) 삽입되었습니다.

SELECT * FROM T_MEMBER;

--속성 변경
ALTER TABLE T_MEMBER
MODIFY(jumin INVISIBLE);
--Table T_MEMBER이(가) 변경되었습니다.
--jumin이 보인다.

SELECT * FROM T_MEMBER;

--INVISIBLE 확인 법
SELECT table_name,
       column_name,
       hidden_column
FROM user_tab_cols
WHERE table_name = 'T_MEMBER';

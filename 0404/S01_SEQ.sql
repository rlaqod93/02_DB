CREATE TABLE dept_sequence
AS
SELECT *
FROM dept
WHERE 1=2;
--Table DEPT_SEQUENCE이(가) 생성되었습니다.

DESC dept_sequence;
--이름     널? 유형           
-------- -- ------------ 
--DEPTNO    NUMBER(2)    
--DNAME     VARCHAR2(14) 
--LOC       VARCHAR2(13) 

--시퀀스 생성
CREATE SEQUENCE seq_dept_sequence
INCREMENT BY 10
START WITH 10
MAXVALUE 90
MINVALUE 0
NOCYCLE
CACHE 2;
--Sequence SEQ_DEPT_SEQUENCE이(가) 생성되었습니다.

SELECT * FROM user_sequences;
--생성한 시퀀스 확인하기

--dept_sequence테이블에 DEPTNO에 시퀀스를 이용해서 입력
--seq_dept_sequence.NEXTVAL : 번호 꺼내오기
INSERT INTO dept_sequence 
VALUES(seq_dept_sequence.NEXTVAL,'DATEBASE','SEOUL');
--1 행 이(가) 삽입되었습니다.
SELECT * FROM dept_sequence;
--현재 시퀀스 번호 CURRVAL:10
SELECT seq_dept_sequence.CURRVAL FROM dual;

INSERT INTO dept_sequence
VALUES(seq_dept_sequence.NEXTVAL,'DATEBASE','SEOUL');
SELECT * FROM dept_sequence;
--ORA-08004: 시퀀스 SEQ_DEPT_SEQUENCE.NEXTVAL exceeds MAXVALUE은 사례로 될 수 없습니다
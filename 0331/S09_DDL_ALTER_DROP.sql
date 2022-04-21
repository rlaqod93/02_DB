--컬럼 삭제 하기
--LOC컬럼 삭제 하기
DESC dept7;
--삭제 전
--이름        널?       유형           
----------- -------- ------------ 
--DCODE              VARCHAR2(6)  
--DNAME     NOT NULL VARCHAR2(30) 
--LOCATIONS          VARCHAR2(10) 
--LOC                VARCHAR2(20) 

ALTER TABLE dept7
DROP COLUMN loc;
--삭제 후
--이름        널?       유형           
----------- -------- ------------ 
--DCODE              VARCHAR2(6)  
--DNAME     NOT NULL VARCHAR2(30) 
--LOCATIONS          VARCHAR2(10)
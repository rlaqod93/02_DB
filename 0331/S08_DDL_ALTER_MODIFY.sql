--컬럼의 사이즈 변경
DESC dept7;
--변경 전
--이름        널?       유형           
----------- -------- ------------ 
--DCODE              VARCHAR2(6)  
--DNAME     NOT NULL VARCHAR2(30) 
--LOCATIONS          VARCHAR2(10) 
--LOC                VARCHAR2(10) 

ALTER TABLE dept7
MODIFY (loc VARCHAR2(20));

DESC dept7;
--변경 후
--이름        널?       유형           
----------- -------- ------------ 
--DCODE              VARCHAR2(6)  
--DNAME     NOT NULL VARCHAR2(30) 
--LOCATIONS          VARCHAR2(10) 
--LOC                VARCHAR2(20) 
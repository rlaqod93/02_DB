ALTER TABLE emp_hw
RENAME COLUMN bige TO remark;

Table EMP_HW이(가) 변경되었습니다.

--이름       널? 유형           
---------- -- ------------ 
--EMPNO       NUMBER(4)    
--ENAME       VARCHAR2(10) 
--JOB         VARCHAR2(9)  
--MGR         NUMBER(4)    
--HIREDATE    DATE         
--SAL         NUMBER(7,2)  
--COMM        NUMBER(7,2)  
--DEPTNO      NUMBER(2)    
--REMARK      VARCHAR2(30) 
DESC emp_hw;
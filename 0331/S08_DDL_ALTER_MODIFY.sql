--�÷��� ������ ����
DESC dept7;
--���� ��
--�̸�        ��?       ����           
----------- -------- ------------ 
--DCODE              VARCHAR2(6)  
--DNAME     NOT NULL VARCHAR2(30) 
--LOCATIONS          VARCHAR2(10) 
--LOC                VARCHAR2(10) 

ALTER TABLE dept7
MODIFY (loc VARCHAR2(20));

DESC dept7;
--���� ��
--�̸�        ��?       ����           
----------- -------- ------------ 
--DCODE              VARCHAR2(6)  
--DNAME     NOT NULL VARCHAR2(30) 
--LOCATIONS          VARCHAR2(10) 
--LOC                VARCHAR2(20) 
--EMP DDL
CREATE TABLE emp_ddl(
   empno        NUMBER(4)
   ,ename       VARCHAR2(10)
   ,JOB         VARCHAR2(9)
   ,mgr         NUMBER(4)
   ,hiredate    DATE     
   ,sal         NUMBER(7,2)
   ,comm        NUMBER(7,2)
   ,deptno      NUMBER(2)
);

DESC emp_ddl;

--TABLE COMMENT
COMMENT ON TABLE EMP_DDL IS '���';

--COLUMN COMMENT
COMMENT ON COLUMN emp_ddl.empno IS '���';
COMMENT ON COLUMN emp_ddl.ename IS '�̸�';
COMMENT ON COLUMN emp_ddl.JOB IS '����';
COMMENT ON COLUMN emp_ddl.mgr IS '�Ŵ���';
COMMENT ON COLUMN emp_ddl.hiredate IS '�Ի���';
COMMENT ON COLUMN emp_ddl.sal IS '�޿�';
COMMENT ON COLUMN emp_ddl.comm IS '����';
COMMENT ON COLUMN emp_ddl.deptno IS '�μ���ȣ';

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
COMMENT ON TABLE EMP_DDL IS '사원';

--COLUMN COMMENT
COMMENT ON COLUMN emp_ddl.empno IS '사번';
COMMENT ON COLUMN emp_ddl.ename IS '이름';
COMMENT ON COLUMN emp_ddl.JOB IS '직급';
COMMENT ON COLUMN emp_ddl.mgr IS '매니저';
COMMENT ON COLUMN emp_ddl.hiredate IS '입사일';
COMMENT ON COLUMN emp_ddl.sal IS '급여';
COMMENT ON COLUMN emp_ddl.comm IS '수당';
COMMENT ON COLUMN emp_ddl.deptno IS '부서번호';

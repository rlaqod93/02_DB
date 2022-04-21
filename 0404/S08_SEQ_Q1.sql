SELECT * FROM emp;

--1
CREATE TABLE EMPIDX
AS
SELECT *
FROM emp;

--2
CREATE INDEX IDX_EMPIDX_EMPNO
ON EMPIDX(empno);

--3
SELECT t1.index_name,
       t1.table_name,
       t1.uniqueness,
       t1.index_type
FROM user_indexes t1
WHERE table_name = 'EMPIDX';
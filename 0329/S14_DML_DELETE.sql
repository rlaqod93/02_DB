--emp copy해서 emp_temp2
--CAST는 ROLLBACK이 안됨
CREATE TABLE emp_temp2
AS
SELECT * FROM emp;

SELECT * FROM emp_temp2;
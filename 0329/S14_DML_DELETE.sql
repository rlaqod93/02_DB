--emp copy�ؼ� emp_temp2
--CAST�� ROLLBACK�� �ȵ�
CREATE TABLE emp_temp2
AS
SELECT * FROM emp;

SELECT * FROM emp_temp2;
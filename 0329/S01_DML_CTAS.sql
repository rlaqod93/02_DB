--���̺� ����(DROP)
DROP TABLE dept_temp;

--dept ���̺��� dept_temp�� ���̺� ����
CREATE TABLE dept_temp
AS
SELECT * FROM dept;
--Table DEPT_TEMP��(��) �����Ǿ����ϴ�.

--���̺� ����
SELECT * FROM dept_temp;

--Ȯ��
--COMMIT;

--�ǵ�����
--ROLLBACK;


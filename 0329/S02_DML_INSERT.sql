--DESC dept_temp;

--�μ���ȣ:50
--�μ���:'DATABASE'
--����:'SEOUL'
--���̺� �÷� �Ѱ� �߰�
INSERT INTO dept_temp(deptno,dname,loc)
VALUES(50,'DATABASE','SEOUL');

--Ȯ��
COMMIT;

SELECT * FROM dept_temp;

--�ǵ����� : Ȯ���� ���������� ������ ���ư�
--Ȯ���� �Ǹ� �ѹ��� ����ص� �ȵ�
ROLLBACK;
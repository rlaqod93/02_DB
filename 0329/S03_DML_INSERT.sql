--�÷����� ������ �� ����ġ
INSERT INTO dept_temp(deptno,dname,loc)
VALUES(50,'DATABASE');
--���� ����
--SQL ����: ORA-00947: ���� ���� ������� �ʽ��ϴ�

INSERT INTO dept_temp(deptno,dname)
VALUES(50,'DATABASE','SEOUL');
--���� ���� -
--SQL ����: ORA-00947: ���� ���� ������� �ʽ��ϴ�

--���ڰ� �Էµ� �ڸ��� �����Է�
INSERT INTO dept_temp(deptno,dname,loc)
VALUES('FAIL','DATABASE','SEOUL');
--���� ���� -
--ORA-01722: ��ġ�� �������մϴ�

--���� �ڸ��� ���ڿ��� ���� ��������
--���ڸ� ���� �ڵ����� ����ȯ�� ��
INSERT INTO dept_temp(deptno,dname,loc)
VALUES('99','DATABASE','SEOUL');
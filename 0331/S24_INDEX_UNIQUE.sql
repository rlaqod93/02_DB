--UNIQUE INDEX

DESC dept2;
SELECT * FROM dept2;

--dept2 ���̺� DNAME�� UNIQUE INDEX����
CREATE UNIQUE INDEX idx_dept2_dname
ON dept2(dname);
--INDEX IDX_DEPT2_DNAME��(��) �����Ǿ����ϴ�.

INSERT INTO dept2 VALUES(9100,'temp01','1006','Seoul Branch Office');
--1 �� ��(��) ���ԵǾ����ϴ�.

--dname �ߺ�
INSERT INTO dept2 VALUES(9101,'temp01','1006','Seoul Branch Office');
--ORA-00001: ���Ἲ ���� ����(SCOTT.IDX_DEPT2_DNAME)�� ����˴ϴ�

--unique index�� ������ ���� ������, Ȥ�� ���� �ߺ��� ���� ���� �ϴ���
--���Ŀ� �ߺ��� ���� �Էµ� ���ɼ��� �ִ� �÷����� ���ɼ� ����.
--Student ���̺��� 1����(deptno1)�� 101���� �л����� �̸���
--�ֹε�Ϲ�ȣ�� ����ϵ� �ֹε�Ϲ�ȣ�� �� 7�ڸ��� '-'�� '/'��
--ǥ�õǰ� ����ϼ���.

SELECT name,
       jumin,
       REPLACE(jumin,SUBSTR(jumin,7),'-/-/-/-/') AS REP
FROM student
WHERE deptno1 = 101
;
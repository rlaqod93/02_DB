--LPAD
--emp ���̺��� ����Ͽ� �Ʒ� ȭ��� ���� deptno�� 10 ���� ������� ����̸���
--�� 9 ����Ʈ�� ����ϵ� �� �ڸ����� �ش� �ڸ��� ���ڷ� ä�켼��.

SELECT deptno,
       ename,
       LPAD(ename,9,'12345') AS LAAD01
FROM emp
WHERE deptno = 10
;

--emp���̺��� deptno�� 10���� ������� �̸��� �� 9�ڸ���
--����ϵ� ������ ���ڸ����� �ش� �ڸ� ���� �ش�Ǵ� ���ڰ� ��µǵ��� �ϼ���.
SELECT deptno,
       ename,
       RPAD(ename,9,SUBSTR('123456789',LENGTH(ename)+1)) AS RPAD01,
       LENGTH(ename)+1,
       SUBSTR('123456789',LENGTH(ename)+1)AS SUBSTR01
FROM emp
WHERE deptno = 10
;
--emp ���̺��� ����Ͽ� �Ʒ��� ���� �μ����� �޿� ���� �հ谡 �������� 																
--����ϼ���. ( �� �μ���ȣ�� �������� ����ϼ���. )
SELECT deptno,
       ename,
       sal,
       SUM(sal)OVER(PARTITION BY deptno ORDER BY sal,ename) TOTAL
FROM emp
;
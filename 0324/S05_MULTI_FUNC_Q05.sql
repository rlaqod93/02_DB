--emp ���̺��� ����Ͽ� �������� �޿��� ��ü �޿��� ���� �޿��ݾ��� �Ʒ��� 																		
--������ ����ϼ���. �� �޿��� ������������ �����ؼ� ����ϼ���.
SELECT deptno,
       ename,
       sal,
       SUM(sal)OVER(ORDER BY sal,ename) TATOL
FROM emp
;
--emp ���̺��� ��ȸ�Ͽ� �Ʒ��� ���� �� �������� �޿��� �ش� �μ� �հ�ݾ׿���
--�� %�� ������ �����ϴ����� ����ϼ���. �� �μ���ȣ�� �������� ������������ ����ϼ���.
SELECT deptno,
       ename,
       sal,
       SUM(sal)OVER(PARTITION BY deptno) AS SUM_DEPT,
       ROUND(sal/SUM(sal) OVER(PARTITION BY deptno)*100,2) AS "%",
       ROUND(RATIO_TO_REPORT(sal)OVER(PARTITION BY deptno)*100,2) AS "%2"
FROM emp
ORDER BY deptno
;
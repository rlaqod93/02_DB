--�μ��� ��ä�� �ְ�޿�
SELECT deptno,job,MAX(sal)
FROM emp
GROUP BY deptno,job
ORDER BY deptno,job
;

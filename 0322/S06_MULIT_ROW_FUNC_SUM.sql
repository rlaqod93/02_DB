--sal����
--sal �ߺ� ������ ���� ����
--SUM(sal DEFAULT ALL
SELECT SUM(ALL sal),
       SUM(DISTINCT sal),
       SUM(sal)
FROM emp
ORDER by sal
;
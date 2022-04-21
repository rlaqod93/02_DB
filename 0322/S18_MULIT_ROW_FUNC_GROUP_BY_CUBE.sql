SELECT deptno,job,AVG(NVL(sal,0)) avg_sal, COUNT(*)cnt_emp
FROM emp
GROUP BY deptno,job
UNION ALL
SELECT deptno,null as job,AVG(NVL(sal,0)) avg_sal, COUNT(*)cnt_emp
FROM emp
GROUP BY deptno
UNION ALL
SELECT null AS deptno,job,AVG(NVL(sal,0)) avg_sal, COUNT(*)cnt_emp
FROM emp
GROUP BY job
UNION ALL
SELECT null deptno,null as job,
       AVG(NVL(sal,0)) avg_sal, COUNT(*)cnt_emp
FROM emp
ORDER BY deptno,job
;
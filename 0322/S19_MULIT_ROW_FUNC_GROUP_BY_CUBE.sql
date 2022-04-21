SELECT deptno,job,AVG(NVL(sal,0)) avg_sal, COUNT(*)cnt_emp
FROM emp
GROUP BY CUBE(deptno,job)
ORDER BY deptno,job
;
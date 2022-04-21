SELECT deptno,
       job,
       AVG(NVL(sal,0))
FROM emp
GROUP BY deptno,job
HAVING AVG(NVL(sal,0))>=500
ORDER BY deptno,job
;
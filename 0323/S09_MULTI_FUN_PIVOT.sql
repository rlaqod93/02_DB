--부서별 직채별 최고급여
SELECT deptno,job,MAX(sal)
FROM emp
GROUP BY deptno,job
ORDER BY deptno,job
;

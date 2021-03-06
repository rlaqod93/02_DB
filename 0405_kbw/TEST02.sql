SELECT deptno,
       SUM(DECODE(job,'CLERK',sal)) AS CLERK,
       SUM(DECODE(job,'MANAGER',sal)) AS MANAGER,
       SUM(DECODE(job,'PRESIDENT',sal)) AS PRESIDENT,
       SUM(DECODE(job,'ANALYST',sal)) AS ANALYST,
       SUM(DECODE(job,'SALESMAN',sal)) AS SALESMAN,
       SUM(sal) AS TOTAL
FROM emp
GROUP BY ROLLUP(deptno)
ORDER BY deptno
;
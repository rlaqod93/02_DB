SELECT ename,
       hiredate,
       sal,
       LEAD(sal,1,0) OVER(ORDER BY sal) AS "LAG"
FROM emp
;
SELECT ename,
       hiredate,
       sal,
       LAG(sal,1,0) OVER(ORDER BY sal) AS "LAG"
FROM emp
;
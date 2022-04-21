--Q3
SELECT t2.empno,
       t2.ename,
       t2.job,
       t2.sal,
       t2.deptno
FROM emp t2
--WHERE (t2.deptno = 20 
--OR t2.deptno = 30)
WHERE t2.deptno IN(20,30)
AND t2.sal > 2000
;
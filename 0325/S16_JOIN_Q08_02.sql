--ORACLE JOIN
--SELECT t2.deptno,
--       t2.dname,
--       TRUNC(AVG(NVL(sal,0))) AS AVG_SAL,
--       MAX(NVL(sal,0)) AS MAX_SAL,
--       MIN(NVL(sal,0)) AS MIN_SAL,
--       COUNT(*) AS CNT
--FROM emp t1,dept t2
--WHERE t1.deptno = t2.deptno
--GROUP BY t2.deptno,t2.dname
--ORDER BY t2.deptno
--;
--SELECT t1.*,
--       t2.dname
--FROM(
--SELECT deptno,
--       TRUNC(AVG(NVL(sal,0))) AS AVG_SAL,
--       MAX(NVL(sal,0)) AS MAX_SAL,
--       MIN(NVL(sal,0)) AS MIN_SAL,
--       COUNT(*) AS CNT
--FROM emp
--GROUP BY deptno
--)t1,dept t2
--WHERE t1.deptno = t2.deptno
--;
--ANSI JOIN
SELECT t2.deptno,
       t2.dname,
       TRUNC(AVG(NVL(sal,0))) AS AVG_SAL,
       MAX(NVL(sal,0)) AS MAX_SAL,
       MIN(NVL(sal,0)) AS MIN_SAL,
       COUNT(*) AS CNT
FROM emp t1 JOIN dept t2
ON t1.deptno = t2.deptno
GROUP BY t2.deptno,t2.dname
ORDER BY t2.deptno
;
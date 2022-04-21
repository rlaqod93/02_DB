--deptno 순서대로 출력
SELECT deptno,job,COUNT(*)
FROM emp
GROUP BY deptno,ROLLUP(job)
;
--job 순서대로 출력
SELECT deptno,job,COUNT(*)
FROM emp
GROUP BY job,ROLLUP(deptno)
;
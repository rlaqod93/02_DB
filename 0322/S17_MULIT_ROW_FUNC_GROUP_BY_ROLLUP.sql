--deptno ������� ���
SELECT deptno,job,COUNT(*)
FROM emp
GROUP BY deptno,ROLLUP(job)
;
--job ������� ���
SELECT deptno,job,COUNT(*)
FROM emp
GROUP BY job,ROLLUP(deptno)
;
--NOT LIKE
--집합으로 생각해야됨.
SELECT empno,
        ename,
        job,
        deptno
FROM emp
WHERE ename NOT LIKE '%AM%';
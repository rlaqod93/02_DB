-- ACCOUNTING IT 'S DEPTNO ->10
--SELECT dname,
--        'IT ''S deptno' ,
--        deptno
--FROM dept
--;
SELECT dname,
        q'[IT 's deptno']',
        deptno
FROM dept
;
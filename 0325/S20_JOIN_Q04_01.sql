--ORACLE JOIN
SELECT t1.name AS STU_NAME,
       t1.deptno1,
       t2.dname AS DEPT_NAME
FROM student t1,department t2
WHERE t1.deptno1 = t2.deptno
ORDER BY t1.studno
;

--ANSI JOIN
SELECT t1.name AS STU_NAME,
       t1.deptno1,
       t2.dname AS DEPT_NAME
FROM student t1 JOIN department t2
ON t1.deptno1 = t2.deptno
ORDER BY t1.studno
;
--ORACLE OUTER JOIN
--SELECT t1.name as stud_name,
--       t2.name as prof_name
--FROM student t1,professor t2
--WHERE t1.profno(+) = t2.profno
--ORDER BY stud_name
--;

--ANSI OUTER JOIN
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1 RIGHT OUTER JOIN professor t2
ON t1.profno = t2.profno
ORDER BY stud_name
;
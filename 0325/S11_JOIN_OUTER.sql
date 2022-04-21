--ORACLE OUTER JOIN
--WHERE 조건절에 데이터 없는쪽에 (+)
--SELECT t1.name as stud_name,
--       t2.name as prof_name
--FROM student t1,professor t2
--WHERE t1.profno = t2.profno(+)
--;

--ANSI OUTER JOIN
--조인조건에 데이터가 있는 쪽을 가르치면 된다.
--LEFT RIGHT OUTER JOIN
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1 LEFT OUTER JOIN professor t2
ON t1.profno = t2.profno
;
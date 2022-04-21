--학생의 이름과 지도교수 이릉을 출력하세요.

--ORACLE JOIN
--SELECT t1.name as stud_name,
--       t2.name as prof_name
--FROM student t1,professor t2
--WHERE t1.profno = t2.profno
--;

--ANSI JOIN
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1 JOIN professor t2
ON t1.profno = t2.profno
;
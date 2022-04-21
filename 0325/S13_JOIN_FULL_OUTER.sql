--ORACLE JOIN : UNION
--지도교수가 할당 않된 학생 포함해서 출력
--지도학생이 없는 교수
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1,professor t2
WHERE t1.profno = t2.profno(+)
UNION
--지도 교수가 없는 학생
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1,professor t2
WHERE t1.profno(+) = t2.profno
;
--ANSI FULL OUT JOUN
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1 FULL OUTER JOIN professor t2
ON t1.profno = t2.profno
;
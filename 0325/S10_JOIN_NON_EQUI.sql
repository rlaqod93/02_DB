--student테이블과 score테이블 , hakjum테이블을 조회하여
--학생들의 이름,점수,학점을 출력하세요.
--ORACLE JOIN
--SELECT t1.name as STU_NAME,
--       t2.total as score,
--       t3.grade as credit   
--FROM student t1, score t2, hakjum t3
--WHERE t1.studno = t2.studno
--AND t2.total BETWEEN t3.min_point AND t3.max_point
--;

--ANSI JOIN
SELECT t1.name as STU_NAME,
       t2.total as score,
       t3.grade as credit   
FROM student t1 JOIN score t2
ON   t1.studno = t2.studno
JOIN hakjum t3
ON t2.total >= t3.min_point 
AND t2.total <= t3.max_point
;

--SELECT t1.name as STU_NAME,
--       t2.total as score,
--       t3.grade as credit   
--FROM student t1, score t2, hakjum t3
--WHERE t1.studno = t2.studno
--AND t2.total >= t3.min_point 
--AND t2.total <= t3.max_point
--;
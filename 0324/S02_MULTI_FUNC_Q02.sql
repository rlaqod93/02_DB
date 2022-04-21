SELECT COUNT(*) TATOL,
       COUNT(DECODE(t1.area,'02',1)) AS SEOUL,
       COUNT(DECODE(t1.area,'031',1)) AS GYEONGGI,
       COUNT(DECODE(t1.area,'051',1)) AS BUSAN,
       COUNT(DECODE(t1.area,'052',1)) AS ULSAN,
       COUNT(DECODE(t1.area,'053',1)) AS DAEGU,
       COUNT(DECODE(t1.area,'055',1)) AS GYEONGNAM
FROM(
SELECT tel,
       SUBSTR(tel,1,INSTR(tel,')')-1) as area
FROM student
)t1
;
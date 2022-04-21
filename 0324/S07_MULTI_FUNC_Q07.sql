SELECT COUNT(*)||'EA ('|| COUNT(*)*5||'%)'              TOTAL,
       COUNT(DECODE(t1.area,'02',1)) ||'EA ('
            || COUNT(DECODE(t1.area,'02',1))*5||'%)' AS SEOUL,
       COUNT(DECODE(t1.area,'031',1))||'EA (' 
            || COUNT(DECODE(t1.area,'031',1))*5||'%)' AS GYEONGGI,
       COUNT(DECODE(t1.area,'051',1))||'EA (' 
            || COUNT(DECODE(t1.area,'051',1))*5||'%)' AS BUSAN,
       COUNT(DECODE(t1.area,'052',1))||'EA (' 
            || COUNT(DECODE(t1.area,'052',1))*5||'%)' AS ULSAN,
       COUNT(DECODE(t1.area,'053',1))||'EA (' 
            || COUNT(DECODE(t1.area,'053',1))*5||'%)' AS DAEGU,
       COUNT(DECODE(t1.area,'055',1))||'EA (' 
            || COUNT(DECODE(t1.area,'055',1))*5||'%)' AS GYEONGNAM
FROM(
SELECT tel,
       SUBSTR(tel,1,INSTR(tel,')')-1) as area
FROM student
)t1
;

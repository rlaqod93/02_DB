--ROUND
--문법)
--ROUND(숫자,출력을 원하는 자리수)

SELECT ROUND(1234.5678)    AS ROUND01,
       ROUND(1234.5678,1)  AS ROUND02,
       ROUND(1234.5678,2)  AS ROUND03,
       ROUND(1234.5678,-1) AS ROUND04,
       ROUND(1234.5678,-2) AS ROUND05
FROM dual
;
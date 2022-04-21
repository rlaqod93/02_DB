--NULL 데이터 누락 : 평균오류
--AVG(NAL(comm,0))
--SELECT COUNT(comm),
--       SUM(comm),
--       AVG(comm)
--FROM emp;

--NULL 처리 후
SELECT COUNT(*),
       SUM(comm),
       AVG(NVL(comm,0))
FROM emp;
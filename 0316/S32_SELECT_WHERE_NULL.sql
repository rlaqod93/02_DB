--NULL + 4000 = NULL
--NULL > 100 = NULL
--무한대 + NULL = NULL

--SELECT empno,
--       ename,
--       sal,
--       sal * 12  + NVL(comm,0) annual_sal_comm ,
--       comm
--FROM emp
--;

--comm이 null인 데이터
--SELECT empno,
--       ename,
--       sal,
--       comm
--FROM emp
--WHERE comm IS NUll
--;

--comm이 null이 아닌 데이터
SELECT empno,
       ename,
       sal,
       comm
FROM emp
WHERE comm IS NOT NUll
;
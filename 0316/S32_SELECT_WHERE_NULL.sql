--NULL + 4000 = NULL
--NULL > 100 = NULL
--���Ѵ� + NULL = NULL

--SELECT empno,
--       ename,
--       sal,
--       sal * 12  + NVL(comm,0) annual_sal_comm ,
--       comm
--FROM emp
--;

--comm�� null�� ������
--SELECT empno,
--       ename,
--       sal,
--       comm
--FROM emp
--WHERE comm IS NUll
--;

--comm�� null�� �ƴ� ������
SELECT empno,
       ename,
       sal,
       comm
FROM emp
WHERE comm IS NOT NUll
;
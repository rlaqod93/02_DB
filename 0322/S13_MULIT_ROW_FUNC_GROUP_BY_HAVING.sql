--SELECT deptno,
--       job,
--       AVG(NVL(sal,0)) as"avg"
--FROM emp
--GROUP BY deptno,job
--HAVING AVG(NVL(sal,0)) >= 2000
--ORDER BY 1,2
--;
--10	MANAGER	    2450
--10	PRESIDENT	5000
--20	ANALYST	    3000
--20	MANAGER	    2975
--30	MANAGER	    2850

--WHERE절 HAVING절 같이 쓰기
SELECT deptno,
       job,
       AVG(NVL(sal,0)) as"avg"
FROM emp
WHERE sal <= 3000
GROUP BY deptno,job
HAVING AVG(NVL(sal,0)) >= 2000
ORDER BY 1,2
;
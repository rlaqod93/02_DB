--emp 테이블에서 deptno 가 30번인 사원들을 조회하여 comm
--값이 있을 경우 'Exist' 을 출력하고 comm값이 null일 경우 'NULL' 을 출력하세요.
SELECT empno,
       ename,
       comm,
       NVL2(comm,'Exist','NULL') AS "NVL2"
FROM emp
WHERE deptno = 30
;
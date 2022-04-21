SELECT empno,
       ename,
       sal,
       CASE WHEN sal BETWEEN 1    AND 1000 THEN 'LEVEL 1'
            WHEN sal BETWEEN 1001 AND 2000 THEN 'LEVEL 2'
            WHEN sal BETWEEN 2001 AND 3000 THEN 'LEVEL 3'
            WHEN sal BETWEEN 3001 AND 4000 THEN 'LEVEL 4'
            WHEN sal >= 4001               THEN 'Level 5'
       END AS "LEVEL"
FROM emp
--4 출력컬럼 순서
ORDER BY 4 DESC
;
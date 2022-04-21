--계층형 쿼리의 기본 구조 : ENAME이 JONES인 사원은 계층 구조 전개를 하지 않겠다.
SELECT empno,
       ename,
       job,
       mgr,
       LEVEL,
       LPAD(' ',(LEVEL-1)*2,' ') ||ename AS depth_ename,
       SYS_CONNECT_BY_PATH(ename,'-') AS ename_list
FROM emp
WHERE ENAME<>'JONES' --JONES만 빠져나감
START WITH mgr IS NULL
CONNECT BY PRIOR empno = mgr
--            AND ename <> 'JONES' --JONES 밑에 사원들이 빠져나감
ORDER SIBLINGS BY empno;
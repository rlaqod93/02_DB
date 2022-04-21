--SELECT sal
--FROM emp
--;

--급여 총계
--SELECT SUM(sal)
--FROM emp
--;

--문법적인 오류
--오류 단일 그룹의 그룹 함수가 아닙니다
SELECT ename,SUM(sal)
FROM emp
;
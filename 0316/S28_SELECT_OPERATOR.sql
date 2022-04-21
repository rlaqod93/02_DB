--급여가 2000 ~ 3000이하 사원 정보를 출력하세요.
--SELECT *
--FROM emp
--WHERE sal >=2000
--AND sal <=3000
--;

--BETWEEN 2000 AND 3000
--비교 연산자로 변경가능

--SELECT *
--FROM emp
--WHERE sal BETWEEN 2000 AND 3000
--;

SELECT *
FROM emp
WHERE sal NOT BETWEEN 2000 AND 3000
;
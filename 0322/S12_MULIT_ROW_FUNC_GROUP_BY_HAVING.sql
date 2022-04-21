--emp테이블 에서 평균 급여가 2000만원 이상인 부서의 부서 번호 ,
--평균 급여를 출력 하기.
--SELECT deptno,AVG(NVL(sal,0))
--FROM emp
--WHERE AVG(NVL(sal,0)) >= 2000
--GROUP BY deptno
--;
--ORA-00934: 그룹 함수는 허가되지 않습니다

SELECT deptno,AVG(NVL(sal,0))
FROM emp
GROUP BY deptno
HAVING AVG(NVL(sal,0)) >= 2000
;
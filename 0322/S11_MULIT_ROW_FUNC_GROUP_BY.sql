--부서별 직무별 평균 급여
--ORACLE 10G이 이전에는 정렬 되어서 출력
--ORACLE 10G이 이전에는 정렬 안됨, ORDER BY절 명기
SELECT deptno AS no,job,AVG(NVL(sal,0)) "AVG_SAL"
FROM emp
GROUP BY no,job --GROUP BY절에는 alias사용 않됨
ORDER BY deptno,job
;
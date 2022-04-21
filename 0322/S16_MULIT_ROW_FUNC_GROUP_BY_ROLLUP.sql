SELECT deptno,job,AVG(NVL(sal,0)) avg_sal, COUNT(*)cnt_emp
FROM emp
GROUP BY ROLLUP(deptno,job)
;
--ROLLUP(순서 중요) : 순서가 달라 지면 결과 값이 달라 진다.
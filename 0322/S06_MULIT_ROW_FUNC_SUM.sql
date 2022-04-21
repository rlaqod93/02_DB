--sal총합
--sal 중복 데이터 제거 총합
--SUM(sal DEFAULT ALL
SELECT SUM(ALL sal),
       SUM(DISTINCT sal),
       SUM(sal)
FROM emp
ORDER by sal
;
SELECT VARIANCE(sal),
       STDDEV(sal),
       AVG(NVL(sal,0))
FROM emp
;
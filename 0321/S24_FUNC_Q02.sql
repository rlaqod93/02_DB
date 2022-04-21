SELECT empno,
       ename,
       sal,
       TO_CHAR(TRUNC(sal/21.5,2),'$9,999.9')     AS DAY_PAY,
       TO_CHAR(ROUND((sal/(21.5*8)),1),'$9,999.9') AS TIME_PAY
FROM emp
;
SELECT empno,
       RPAD(SUBSTR(empno,1,2),4,'**') AS "MASKING_EMPNO",
       ename,
       RPAD(SUBSTR(ename,1,1),LENGTH(ename),'****') AS "MASKING_ENAME"
FROM emp
WHERE LENGTH(ename) >=5
AND   LENGTH(ename) < 6
;
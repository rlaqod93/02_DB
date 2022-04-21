ALTER SESSION SET STATISTICS_LEVEL = ALL;

SELECT A.*
FROM(SELECT ROWNUM AS rnum, tt1.*
     FROM(SELECT t1.empno,
                 t1.ename,
                 t1.sal
          FROM emp t1
          ORDER BY t1.sal
    )tt1
    WHERE ROWNUM <= 20
)A
WHERE rnum >= 1
;
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR
                (NULL,NULL,'ALLSTATS LAST -ROWS +PREDICATE'));
--WHERE rnum BETWEEN (:PAGE_SIZE * (:PAGE_NUM-1)+1)
--                     AND (:PAGE_SIZE * (:PAGE_NUM-1)+:PAGE_SIZE)
--WHERE rnum BETWEEN 1 AND 10
--WHERE rnum BETWEEN 11 AND 20
--WHERE rnum BETWEEN 21 AND 30

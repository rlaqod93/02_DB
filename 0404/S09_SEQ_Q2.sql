CREATE OR REPLACE VIEW EMPIDX_OVER15K
AS(SELECT empno,
          ename,
          job,
          deptno,
          sal,
          NVL2(comm,'O','X') AS COMM
   FROM EMPIDX
   WHERE sal > 1500);
   
SELECT * FROM EMPIDX_OVER15K;
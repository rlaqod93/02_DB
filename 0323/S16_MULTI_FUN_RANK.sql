SELECT empno,ename,sal,
       RANK()OVER(ORDER BY sal DESC) "RANK_DESC"
FROM emp;
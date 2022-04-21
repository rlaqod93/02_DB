SELECT LPAD(ename,LEVEL*4,'*') ENAME,
       LEVEL
FROM emp
CONNECT BY empno = mgr
START WITH empno = 7839;
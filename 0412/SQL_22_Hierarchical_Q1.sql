SELECT LPAD(t1.name||'-'||t2.dname||'-'||t1.position,LEVEL*27,'-') AS NAME_AND_POSITION,
       LEVEL
FROM emp2 t1,dept2 t2
WHERE t1.deptno = t2.dcode
START WITH t1.pempno IS NULL
CONNECT BY PRIOR t1.EMPNO = t1.PEMPNO;
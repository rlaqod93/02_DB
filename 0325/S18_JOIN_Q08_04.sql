--out join ������ �����Ǹ� �Ϲ� �������� ����Ǽ� 
--outer join �����Ͱ� ���� �ȴ�.
SELECT t2.deptno,
       t2.dname,
       t1.empno,
       t1.ename,
       t1.mgr,
       t1.sal,
       t1.deptno AS DEPTNO_1,
       t3.losal,
       t3.hisal,
       t3.grade,
       t4.mgr AS MGR_EMPNO,
       t4.ename AS MGR_ENAME
FROM emp t1,dept t2,salgrade t3, emp t4
WHERE t1.deptno(+) = t2.deptno
AND   t1.sal >= t3.losal(+)
AND   t1.sal <= t3.hisal(+)
AND   t1.mgr = t4.empno(+)
--AND   t1.sal BETWEEN t3.losal(+) AND t3.hisal(+)
ORDER BY t2.deptno,t1.empno
;
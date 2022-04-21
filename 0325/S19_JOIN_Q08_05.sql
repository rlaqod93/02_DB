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
FROM emp t1 RIGHT OUTER JOIN dept t2
ON t1.deptno = t2.deptno
LEFT OUTER JOIN salgrade t3 
ON    t1.sal >= t3.losal
AND   t1.sal <= t3.hisal
LEFT OUTER JOIN emp t4
ON t1.mgr = t4.empno
ORDER BY t2.deptno,t1.empno
;
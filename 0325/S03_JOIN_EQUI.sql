-- emp���̺�� dept���̺��� ��ȸ�Ͽ� �Ʒ��� ���� ���
--ORACLE JOIN
--SELECT t1.empno,
--       t1.ename,
--       t2.dname
--FROM emp t1,dept t2
--WHERE t1.deptno = t2.deptno
--;
--ANSI JOIN
--INNER JOIN : ���� ����
--ON������ ���� ����
SELECT t1.empno,
       t1.ename,
       t2.dname
FROM emp t1 JOIN dept t2
ON t1.deptno = t2.deptno
;
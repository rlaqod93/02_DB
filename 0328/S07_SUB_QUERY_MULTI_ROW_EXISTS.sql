--EXISTS  SUB QUERY�� ���� ���� ��� ���� ���� ����
--SUB QUERY�� ������ ���� �����ؼ� �� ����� 1���̶� ������ ���� ������ �����ؼ�
--SUB QUERY�� ������ �Ѱǵ� ������ ������ ���� ������ ���� ���� ����.
SELECT empno,
       ename,
       job,
       sal,
       deptno
FROM emp
WHERE EXISTS(SELECT deptno
             FROM emp
             WHERE deptno = &dno);
--EMP���̺��� WARD���� COMM�� ���� �޴� ����� �̸��� COMM�� ���
SELECT ename,
       comm
FROM emp
WHERE comm < (SELECT comm
              FROM emp
              WHERE ename = 'WARD');
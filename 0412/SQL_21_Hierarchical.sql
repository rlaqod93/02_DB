--������ ������ �⺻ ���� : ENAME�� JONES�� ����� ���� ���� ������ ���� �ʰڴ�.
SELECT empno,
       ename,
       job,
       mgr,
       LEVEL,
       LPAD(' ',(LEVEL-1)*2,' ') ||ename AS depth_ename,
       SYS_CONNECT_BY_PATH(ename,'-') AS ename_list
FROM emp
WHERE ENAME<>'JONES' --JONES�� ��������
START WITH mgr IS NULL
CONNECT BY PRIOR empno = mgr
--            AND ename <> 'JONES' --JONES �ؿ� ������� ��������
ORDER SIBLINGS BY empno;
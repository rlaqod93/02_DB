--emp 1981�� 6�� 1�� ���� �Ի��� ��� ���� ����ϱ�
SELECT empno,
       ename,
       hiredate
FROM emp
WHERE hiredate > TO_DATE('1981/06/01','YYYY/MM/DD')
;
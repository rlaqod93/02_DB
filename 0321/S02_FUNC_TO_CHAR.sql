--��1) emp ���̺��� ��ȸ�Ͽ� �̸��� 'ALLEN'�� ����� ����� �̸��� ������
--����ϼ���. �� ������ (sal*12)+comm �� ����ϰ� õ ���� ���б�ȣ�� 
--ǥ�� �ϼ���.
SELECT ename,
       sal,
       empno,
       comm,
       TO_CHAR(sal*12+comm,'999,999') AS salary
FROM emp
WHERE ename = 'ALLEN'
;
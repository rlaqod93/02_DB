--[����ȯ �Լ� ����3]
--emp ���̺��� ��ȸ�Ͽ� comm ���� ������ �ִ� ������� empno,ename,
--hierdate,�ѿ��� , 15% �λ��� ������ �Ʒ� ȭ��ó�� ����ϼ���. �� �ѿ�����
--(sla*12)+comm ���� ����ϰ� �Ʒ� ȭ�鿡���� SAL�� ��µǾ����� 15% �λ���
--���� �ѿ����� 15% �λ� ���Դϴ�.
--(HIRDATE �÷��� ��¥ ���İ� SAL �÷�, 15% UP �÷��� $ǥ�ÿ�,��ȣ ������ �ϼ���.)

SELECT empno,
       ename,
       TO_CHAR(hiredate,'YYYY-mm-dd') AS hiredate,
       TO_CHAR((sal*12)+comm,'$999,999') AS sal,
       TO_CHAR(((sal*12)+comm)*1.15,'$999,999') AS "15% UP"
FROM emp
WHERE comm IS NOT null
;
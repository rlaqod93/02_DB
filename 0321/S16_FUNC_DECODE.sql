--���� 6 ����:
--professor ���̺��� ������ �̸��� �μ���ȣ�� ����ϰ� 101 �� �μ� �߿��� 
--�̸��� "Audie Murphy" �������� ������ "BEST!" �̶�� ����ϰ� 
--101�� �а��� "Audie Murphy" ���� �ܿ��� ������ "GOOD!"�� ����ϰ� 
--101�� ������ �ƴ� ���� ������ "N/A" �� ����ϼ���.
SELECT deptno,
       name,
       DECODE(deptno,101,
         DECODE(name,'Audie Murphy','BEST!','GOOD!'),'N/A') "NESTED_DECODE"
FROM professor
;
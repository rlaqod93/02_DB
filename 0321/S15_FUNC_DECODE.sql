--���� 5 ����: professor ���̺��� ������ �̸��� �μ���ȣ�� ����ϰ� 
--101 �� �μ� �߿��� �̸��� "Audie Murphy" 
--�������� ������ "BEST!"��� ����ϰ� 101�� �а��� 
--"Audie Murphy" ���� �ܿ��� ������ 
--"GOOD!"�� ����ϰ� 101�� ������ �ƴ� ���� ������ ������ �ǵ��� ����ϼ���.
SELECT deptno,
       name,
       DECODE(deptno,101,
         DECODE(name,'Audie Murphy','BEST!','GOOD!')) "NESTED_DECODE"
FROM professor
;
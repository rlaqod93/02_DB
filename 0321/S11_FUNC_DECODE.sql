--����1 ���� : professor ���̺��� �а���ȣȭ ������ , �а����� ����ϵ� deptno��
--101���� ������ �а����� "Computer Engineering" ���� ����ϰ� 101���� �ƴ�
--�������� �а��� �ƹ��͵� ������� ������.
SELECT deptno,
      name,
      DECODE(deptno,101,'Computer Engineering',null) AS DNAME
FROM professor
;
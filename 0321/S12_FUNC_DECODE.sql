--����2 ���� : professor ���̺��� �а���ȣȭ ������ , �а����� ����ϵ� deptno��
--101���� ������ �а����� "Computer Engineering" ���� ����ϰ� 101���� �ƴϸ�
--'ETC' �� ����ϼ���.
SELECT deptno,
      name,
      DECODE(deptno,101,'Computer Engineering','ETC') AS DNAME
FROM professor
;
--DESC t_reg;
--SELECT text
--FROM t_reg
--;

--REGEXP_LIKE(text,REGEXP)

--�ҹ��ڰ� ��� �ִ� ���� ��� ���
--a-z : �ҹ���
--SELECT text
--FROM t_reg
--WHERE REGEXP_LIKE(text,'[a-z]')
--;

--�ҹ���,�빮�ڰ� ��� �ִ� ���� ��� ���
--a-z : �ҹ���
--A-Z : �빮��
--SELECT text
--FROM t_reg
--WHERE REGEXP_LIKE(text,'[a-zA-Z]')
--;

--�ҹ��ڷ� �����ϰ� ������ �����ϴ� ��� ã��
--SELECT text
--FROM t_reg
--WHERE REGEXP_LIKE(text,'[a-z] ')
--;

--�������� ���ڼ� �����ϱ�
--[A-Z]{2} : �빮�ڰ� ���������� 2���� �̻� ���� ���
--''�ȿ� �ִ� ���鵵 �ν���
--SELECT text
--FROM t_reg
--WHERE REGEXP_LIKE(text,'[A-Z]{2}')
--;

--���ڰ� ���������� 3��
--SELECT text
--FROM t_reg
--WHERE REGEXP_LIKE(text,'[0-9]{3}')
--;

--Ư�� ��ġ�� �����Ͽ� ����ϱ�
--�����ڷ� �����ϴ�
--SELECT text
--FROM t_reg
--WHERE REGEXP_LIKE(text,'^[a-zA-Z]')
--;

--Ư�� ��ġ�� �����Ͽ� ����ϱ�
--�����ڷ� ������
--SELECT text
--FROM t_reg
--WHERE REGEXP_LIKE(text,'[a-zA-Z]$')
--;

--student���̺��� �̸� Ma | Mo �����ϴ�
SELECT id
FROM student
WHERE REGEXP_LIKE (id,'^M[a|o]')
;
--��ü ������ ����
--loc�� ��� SEOUL�� ����

UPDATE dept_temp2
SET loc = 'SEOUL';

ROLLBACK;

SELECT * FROM dept_temp2;
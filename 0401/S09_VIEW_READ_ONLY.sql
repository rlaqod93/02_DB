--VIEW2 ����
CREATE OR REPLACE VIEW view2
AS(SELECT A,B FROM o_table)
WITH READ ONLY;

--View VIEW2��(��) �����Ǿ����ϴ�.

--������ �Է�
INSERT INTO view2 VALUES(1,2);

--SQL ����: ORA-42399: �б� ���� �信���� DML �۾��� ������ �� �����ϴ�.

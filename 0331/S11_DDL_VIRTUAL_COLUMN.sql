--1.���� �÷��� ������ ���̺� ����
CREATE TABLE vt1(
    col1 NUMBER,
    col2 NUMBER,
    col3 NUMBER GENERATED ALWAYS AS(COL1 + COL2)
);
--Table VT1��(��) �����Ǿ����ϴ�.

--2.���̺� ������ �Է�(�����÷��� ���� ������ �Է� �ʵ�!)
INSERT INTO vt1 VALUES(1,2,3);
--SQL ����: ORA-54013: INSERT �۾��� ���� ������ ������ �ʽ��ϴ�.
INSERT INTO vt1(col1,col2) VALUES(1,2);
--1 �� ��(��) ���ԵǾ����ϴ�.

--3.�Էµ� ������ ��ȸ
SELECT * FROM vt1;

--4.�������� ���� : COL1�� �� 1���� 5�κ���
UPDATE vt1
    SET col1 = 5;
--1 �� ��(��) ������Ʈ�Ǿ����ϴ�.
SELECT * FROM vt1;
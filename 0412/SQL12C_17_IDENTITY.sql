CREATE TABLE T_IDEN
(
  NO NUMBER GENERATED as IDENTITY,
  NAME VARCHAR2(10)
);
--Table T_IDEN��(��) �����Ǿ����ϴ�.

INSERT INTO T_IDEN(NAME)VALUES('AAA');
INSERT INTO T_IDEN(NAME)VALUES('BBB');
--1 �� ��(��) ���ԵǾ����ϴ�.

SELECT * FROM T_IDEN;
CREATE TABLE T_MEMBER
(
    no NUMBER,
    name VARCHAR2(10),
    tel NUMBER,
    jumin VARCHAR2(13) invisible
);

DESC T_MEMBER;
--jumin �÷��� ������ ����!

--Table T_MEMBER��(��) �����Ǿ����ϴ�.

--�̸�   ��? ����           
----------------------
--NO      NUMBER       
--NAME    VARCHAR2(10) 
--TEL     NUMBER 

--INSERT INTO T_MEMBER VALUES(1,'BBB','1234567890','1234567');
--SQL ����: ORA-00913: ���� ���� �ʹ� �����ϴ�
--jumin �����ʹ� ���� ����!

INSERT INTO T_MEMBER VALUES(1,'BBB','1234567890');
--1 �� ��(��) ���ԵǾ����ϴ�.

SELECT * FROM T_MEMBER;

--�Ӽ� ����
ALTER TABLE T_MEMBER
MODIFY(jumin INVISIBLE);
--Table T_MEMBER��(��) ����Ǿ����ϴ�.
--jumin�� ���δ�.

SELECT * FROM T_MEMBER;

--INVISIBLE Ȯ�� ��
SELECT table_name,
       column_name,
       hidden_column
FROM user_tab_cols
WHERE table_name = 'T_MEMBER';

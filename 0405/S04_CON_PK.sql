--PK�� NULL������ �Է� 1��°
INSERT INTO table_pk(LOGIN_ID,LOGIN_PWD,TEL)
        VALUES(NULL,'PWD01','010-1234-5678');
--���� ����
--ORA-01400: NULL�� ("SCOTT"."TABLE_PK"."LOGIN_ID") �ȿ� ������ �� �����ϴ�

--PK�� NULL������ �Է� 2��°
INSERT INTO table_pk(LOGIN_PWD,TEL)
        VALUES('PWD01','010-1234-5678');
--���� ����
--ORA-01400: NULL�� ("SCOTT"."TABLE_PK"."LOGIN_ID") �ȿ� ������ �� �����ϴ�
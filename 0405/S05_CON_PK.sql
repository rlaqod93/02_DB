--���� ������ �ڿ��� ���
CREATE TABLE table_pk3(
    LOGIN_ID  VARCHAR2(20),
    LOGIN_PWD VARCHAR2(20) CONSTRAINT tablepk3_loginpwd_nn NOT NULL,
    TEL       VARCHAR(20),
    CONSTRAINT tablepk3_login_pk PRIMARY KEY(LOGIN_ID)
);
--Table TABLE_PK3��(��) �����Ǿ����ϴ�.
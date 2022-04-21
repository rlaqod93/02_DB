CREATE TABLE table_unique2(
    LOGIN_ID  VARCHAR2(20) CONSTRAINT TABLEUNQ02_LOGIN_UNQ UNIQUE,
    LOGIN_PWD VARCHAR2(20) CONSTRAINT TABLEUNQ02_LOGIN_NN NOT NULL,
    tel       VARCHAR2(20)
);
--Table TABLE_UNIQUE2이(가) 생성되었습니다.

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_UNIQUE2';
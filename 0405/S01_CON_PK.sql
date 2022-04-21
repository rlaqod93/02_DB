CREATE TABLE table_pk(
    LOGIN_ID  VARCHAR2(20) PRIMARY KEY,
    LOGIN_PWD VARCHAR2(20) NOT NULL,
    TEL       VARCHAR(20)
);

--Table TABLE_PK이(가) 생성되었습니다.

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_PK';

--USER_INDEXES 조회
SELECT t1.index_name,
       t1.table_owner,
       t1.table_name
FROM user_indexes t1
WHERE t1.table_name LIKE 'TABLE_PK%';
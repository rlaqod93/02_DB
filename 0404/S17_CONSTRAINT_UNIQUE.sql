--UNIQUE
CREATE TABLE TABLE_UNIQUE(
    LOGIN_ID  VARCHAR(20) UNIQUE,
    LOGIN_PWD VARCHAR(20) NOT NULL,
    tel       VARCHAR(20)
);

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_UNIQUE';
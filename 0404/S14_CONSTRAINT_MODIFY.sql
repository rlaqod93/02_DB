ALTER TABLE TABLE_NOT_NULL2
MODIFY(TEL CONSTRAINT TEL_NM2_TEL_NN NOT NULL);
--Table TABLE_NOT_NULL2이(가) 변경되었습니다.

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_NOT_NULL2';
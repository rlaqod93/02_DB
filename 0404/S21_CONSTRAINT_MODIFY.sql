--TABLE_UNIQUE2 테이블 TEL 컬럼에 UNIQUE추가

ALTER TABLE TABLE_UNIQUE2
MODIFY (tel UNIQUE);

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name IN( 'TABLE_UNIQUE2');
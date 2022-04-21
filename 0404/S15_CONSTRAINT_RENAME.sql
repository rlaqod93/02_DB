--제약조건 이름 변경 TBL_NM2_TEL_NN -> TBL_NM22_TEL_NN
ALTER TABLE TABLE_NOT_NULL2
RENAME CONSTRAINT TEL_NM2_TEL_NN TO TEL_NM22_TEL_NN;

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM user_constraints t1
WHERE t1.table_name = 'TABLE_NOT_NULL2';
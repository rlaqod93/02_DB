ALTER TABLE TABLE_NOT_NULL
MODIFY(TEL NOT NULL);
--ORA-02296: (SCOTT.) ������� ���� �Ұ� - �� ���� �߰ߵǾ����ϴ�.

SELECT * FROM TABLE_NOT_NULL;

UPDATE TABLE_NOT_NULL
    SET TEL = '010-1234-5678'
WHERE LOGIN_ID = 'TEST_01';

COMMIT;

ALTER TABLE TABLE_NOT_NULL
MODIFY(TEL NOT NULL);

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name
FROM USER_CONSTRAINTS t1
WHERE t1.table_name = 'TABLE_NOT_NULL';
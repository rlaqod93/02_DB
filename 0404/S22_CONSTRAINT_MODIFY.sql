UPDATE TABLE_UNIQUE
 SET tel = '010-1235-5678'
WHERE LOGIN_ID = 'TEST_ID_01';

UPDATE TABLE_UNIQUE
 SET tel = '010-1236-5678'
WHERE LOGIN_ID = 'TEST_ID_02';

ALTER TABLE TABLE_UNIQUE
MODIFY (tel UNIQUE);

SELECT * FROM TABLE_UNIQUE;

--UNIQUE �÷��� NULL�� UPDATE
--UNIQUE�ص� NULL�� �ٰ� �Է°���
UPDATE TABLE_UNIQUE
   SET tel = NULL;
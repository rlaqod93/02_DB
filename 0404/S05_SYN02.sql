--scott����ڿ� emp ���̺��� ���Ǿ�� e�� ���� PRIVATE SYNONYM
CREATE SYNONYM e FOR emp;
--Synonym E��(��) �����Ǿ����ϴ�.

--���Ǿ� E �� ���ؼ� SELECT,DML�۾� ����
SELECT * FROM e;

--scott����ڿ� dept ���̺��� ���Ǿ�� d2�� ���� PUBLIC SYNONYM
CREATE PUBLIC SYNONYM d2 FOR dept;
--SYNONYM D2��(��) �����Ǿ����ϴ�.

SELECT * FROM d2;

--PRIVATE SYNONYM ��ȸ
SELECT t1.synonym_name,
       t1.table_owner,
       t1.table_name
FROM user_synonyms t1
WHERE t1.table_name = 'EMP';


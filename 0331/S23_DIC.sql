--static_table ������ �Է�
CREATE TABLE static_table(
 no NUMBER
);
--Table STATIC_TABLE��(��) �����Ǿ����ϴ�.

--static dictionary ��ȸ : ������ �Է��� �ݿ��Ǿ� ���� ����
BEGIN
    FOR i IN 1..1000 LOOP
        INSERT INTO static_table VALUES(i);
    END LOOP;
    COMMIT;
END;
/
--PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.

SELECT COUNT(*) FROM static_table;
--1000��

--��ųʸ��� �������� update�ϸ� �� �缭�� �����Ͱ� ���δ�.
SELECT t1.num_rows,
       t1.blocks,
       t1.table_name
FROM user_tables t1
WHERE t1.table_name = 'STATIC_TABLE';

ANALYZE TABLE STATIC_TABLE COMPUTE STATISTICS;
--Table STATIC_TABLE��(��) �м��Ǿ����ϴ�.

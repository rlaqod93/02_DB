INSERT INTO table_unique 
        VALUES('TEST_ID_01','PWD01','010-1234-5678');

INSERT INTO table_unique
        VALUES('TEST_ID_01','PWD01','010-1234-5678');
--�ߺ��� ������ ����
--ORA-00001: ���Ἲ ���� ����(SCOTT.SYS_C007427)�� ����˴ϴ�

--���ο� ������
INSERT INTO table_unique
        VALUES('TEST_ID_02','PWD01','010-1234-5678');
        
--NULL �����͸� ���� �� ����
INSERT INTO table_unique
        VALUES(NULL,'PWD01','010-1234-5678');

--NULL -> TEST_ID_01 
UPDATE table_unique
    SET LOGIN_ID = 'TEST_ID_01'
WHERE LOGIN_ID IS NULL;
--ORA-00001: ���Ἲ ���� ����(SCOTT.SYS_C007427)�� ����˴ϴ�
--TEST_ID�� �����ؼ� UPDATE�� ���� �ʴ´�.

SELECT * FROM table_unique;
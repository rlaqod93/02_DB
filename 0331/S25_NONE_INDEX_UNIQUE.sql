--dept2 ���̺��� area �÷��� none unique index����
--CREATE INDEX idx_dept2_area
--ON dept2(area);
--Index IDX_DEPT2_AREA��(��) �����Ǿ����ϴ�.

ALTER SESSION SET STATISTICS_LEVEL = ALL;
--INDEX ���
SELECT /*+ INDEX_ASC(t1 IDX_DEPT2_AREA)  */ * 
FROM dept2 t1
WHERE area > '0';
--sql_id,child_number,����ϰ����ϴ� ����,
--NULL �ش� ������ ������ ������ �ش��ϴ� sql_id,child_number
--INDEX Ÿ���� Ȯ�� 
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST'));
--emp ename,job�� ������ �ε����� ����

CREATE INDEX idx_emp_comp
ON emp(ename ASC,job DESC);

ALTER SESSION SET STATISTICS_LEVEL = ALL;

SELECT * 
FROM emp t1
WHERE t1.ename > '0';

--sql_id,child_number,����ϰ����ϴ� ����,
--NULL �ش� ������ ������ ������ �ش��ϴ� sql_id,child_number
--INDEX Ÿ���� Ȯ�� 
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST'));
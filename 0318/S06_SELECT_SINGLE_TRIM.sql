--TRIM([�����ɼ�][������ ���� ����] FROM[���� ���ڿ� ������ �ʼ�]);
--LEADING : ���� ���� ����
--TRAILING : ������ ���� ����
--BOTH : ���� ���� ����

SELECT '[' || TRIM('  __Oracle__  ') || ']'                AS TRIN,
       '[' || TRIM(LEADING FROM '  __Oracle__  ') || ']'   AS LEADING,
       '[' || TRIM(TRAILING FROM '  __Oracle__  ') || ']'  AS TRAILING,
       '[' || TRIM(BOTH FROM '  __Oracle__  ') || ']'      AS BOTH
FROM dual
;
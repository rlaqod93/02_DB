--LPAD('문자열' 또는 컬럼,자리수,채울문자)
SELECT 'oracle',
       LPAD('oracle',10,'#') AS lpad_01,
       LPAD('oracle',10)     AS lpad_02
FROM dual
;
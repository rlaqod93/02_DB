--LPAD('���ڿ�' �Ǵ� �÷�,�ڸ���,ä�﹮��)
SELECT 'oracle',
       LPAD('oracle',10,'#') AS lpad_01,
       LPAD('oracle',10)     AS lpad_02
FROM dual
;
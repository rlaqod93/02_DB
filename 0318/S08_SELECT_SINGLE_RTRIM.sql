--TRIM  : ����
--LTRIM : ����
--RTRIM : ������

SELECT '[' || TRIM('_ _Oracle_ _') || ']'         AS TRIN,
       '[' || LTRIM(' __Oracle__ ') || ']'        AS LTRIM,
       '[' || LTRIM('<__Oracle__>','<_') || ']'   AS LEADING,       
       '[' || RTRIM(' __Oracle__ ') || ']'        AS RTRIM,
       '[' || RTRIM('<__Oracle__>','>_') || ']'   AS RTRIM
FROM dual
;
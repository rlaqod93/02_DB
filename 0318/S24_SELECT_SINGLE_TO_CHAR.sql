SELECT SYSDATE,--��
  TO_CHAR(SYSDATE,'MM')                               AS "MM",
  TO_CHAR(SYSDATE,'MON','NLS_DATE_LANGUAGE=KOREAN')   AS KOREAN,
  TO_CHAR(SYSDATE,'MON','NLS_DATE_LANGUAGE=JAPANESE') AS JAPANESE,
  TO_CHAR(SYSDATE,'MONTH','NLS_DATE_LANGUAGE=ENGLISH')AS ENGLISH_MONTH,
  TO_CHAR(SYSDATE,'MON','NLS_DATE_LANGUAGE=ENGLISH')  AS ENGLISH_MON
FROM dual
;
SELECT SYSDATE,--��
  TO_CHAR(SYSDATE,'DD')                               AS "MM",
  TO_CHAR(SYSDATE,'DAY','NLS_DATE_LANGUAGE=KOREAN')   AS KOREAN,
  TO_CHAR(SYSDATE,'DAY','NLS_DATE_LANGUAGE=JAPANESE') AS JAPANESE,
  TO_CHAR(SYSDATE,'DAY','NLS_DATE_LANGUAGE=ENGLISH')  AS ENGLISH_MONTH,
  TO_CHAR(SYSDATE,'DY','NLS_DATE_LANGUAGE=ENGLISH')   AS ENGLISH_MONTH
FROM dual
;
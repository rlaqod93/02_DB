SELECT '010-1234-5678' AS REPLACE_BEFORE,
       REPLACE('010-1234-5678','-',' ') AS REP,
       REPLACE('010-1234-5678','-') AS REP
FROM dual
;
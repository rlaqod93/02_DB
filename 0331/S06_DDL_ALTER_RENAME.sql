--컬럼이름 변경
--location2 -> loc로 변경

ALTER TABLE dept6
RENAME COLUMN location2 TO loc;

SELECT * FROM dept6;
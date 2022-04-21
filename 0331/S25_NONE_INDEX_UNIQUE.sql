--dept2 테이블의 area 컬럼에 none unique index생성
--CREATE INDEX idx_dept2_area
--ON dept2(area);
--Index IDX_DEPT2_AREA이(가) 생성되었습니다.

ALTER SESSION SET STATISTICS_LEVEL = ALL;
--INDEX 사용
SELECT /*+ INDEX_ASC(t1 IDX_DEPT2_AREA)  */ * 
FROM dept2 t1
WHERE area > '0';
--sql_id,child_number,출력하고자하는 포맷,
--NULL 해당 세션의 마지막 쿼리에 해당하는 sql_id,child_number
--INDEX 타는지 확인 
SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY_CURSOR(NULL,NULL,'ALLSTATS LAST'));
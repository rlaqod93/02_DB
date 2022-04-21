--static_table 데이터 입력
CREATE TABLE static_table(
 no NUMBER
);
--Table STATIC_TABLE이(가) 생성되었습니다.

--static dictionary 조회 : 데이터 입력이 반영되어 있지 않음
BEGIN
    FOR i IN 1..1000 LOOP
        INSERT INTO static_table VALUES(i);
    END LOOP;
    COMMIT;
END;
/
--PL/SQL 프로시저가 성공적으로 완료되었습니다.

SELECT COUNT(*) FROM static_table;
--1000건

--딕셔너리를 수동으로 update하면 그 재서야 데이터가 보인다.
SELECT t1.num_rows,
       t1.blocks,
       t1.table_name
FROM user_tables t1
WHERE t1.table_name = 'STATIC_TABLE';

ANALYZE TABLE STATIC_TABLE COMPUTE STATISTICS;
--Table STATIC_TABLE이(가) 분석되었습니다.

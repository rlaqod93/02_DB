--scott사용자에 emp 테이블의 동의어로 e로 생성 PRIVATE SYNONYM
CREATE SYNONYM e FOR emp;
--Synonym E이(가) 생성되었습니다.

--동의어 E 를 통해서 SELECT,DML작업 가능
SELECT * FROM e;

--scott사용자에 dept 테이블의 동의어로 d2로 생성 PUBLIC SYNONYM
CREATE PUBLIC SYNONYM d2 FOR dept;
--SYNONYM D2이(가) 생성되었습니다.

SELECT * FROM d2;

--PRIVATE SYNONYM 조회
SELECT t1.synonym_name,
       t1.table_owner,
       t1.table_name
FROM user_synonyms t1
WHERE t1.table_name = 'EMP';


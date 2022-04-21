--SOTT에서 사용 가능한 DICTIONARY 정보 보기
SELECT *
FROM DICTIONARY; --dict

--USER_접두어를 가진 데이터 사전
--SCOTT이 가지고 있는 객체 정보
SELECT t1.table_name
FROM user_tables t1;

--ALL_접두어를 가진 데이터 사전
SELECT t1.owner,
       t1.table_name,
       t1.tablespace_name,
       t1.num_rows
FROM all_tables t1
WHERE t1.owner = 'SCOTT';

--DBA_접두어를 가진 데이터 사전
SELECT *
FROM DBA_TABLES;
--권한이 있으면 볼수 있고 없으면 볼 수 없음!
--1. 2건 이상의 데이터 반환을 요청하는 경우 -에러
SELECT t3.no,
       t3.name,
       (SELECT dname 
        FROM t4 
        WHERE t3.deptno=t4.deptno) as dname
FROM t3
;
--ORA-01427: 단일 행 하위 질의에 2개 이상의 행이 리턴되었습니다.

UPDATE t4
SET DEPTNO = 400
WHERE dname = 'DDD'
;
COMMIT;
--t4 테이블에서 dname 'DDD'를 100 -> 400으로 변경
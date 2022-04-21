--테이블 삭제(DROP)
DROP TABLE dept_temp;

--dept 테이블을 dept_temp로 테이블 복제
CREATE TABLE dept_temp
AS
SELECT * FROM dept;
--Table DEPT_TEMP이(가) 생성되었습니다.

--테이블 생성
SELECT * FROM dept_temp;

--확정
--COMMIT;

--되돌리기
--ROLLBACK;


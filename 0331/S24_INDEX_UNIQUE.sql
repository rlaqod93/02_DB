--UNIQUE INDEX

DESC dept2;
SELECT * FROM dept2;

--dept2 테이블에 DNAME에 UNIQUE INDEX생성
CREATE UNIQUE INDEX idx_dept2_dname
ON dept2(dname);
--INDEX IDX_DEPT2_DNAME이(가) 생성되었습니다.

INSERT INTO dept2 VALUES(9100,'temp01','1006','Seoul Branch Office');
--1 행 이(가) 삽입되었습니다.

--dname 중복
INSERT INTO dept2 VALUES(9101,'temp01','1006','Seoul Branch Office');
--ORA-00001: 무결성 제약 조건(SCOTT.IDX_DEPT2_DNAME)에 위배됩니다

--unique index가 성능은 아주 좋은데, 혹시 현재 중복된 값이 없다 하더라도
--향후에 중복된 값이 입력될 가능성이 있는 컬럼에는 사용될수 없다.
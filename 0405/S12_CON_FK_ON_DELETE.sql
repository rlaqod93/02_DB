--ON DELETE
--c_test1,
--c_test2 테이블 생성

--STEP.1
CREATE TABLE c_test1(
    no NUMBER,
    name VARCHAR2(10),
    deptno NUMBER
);

CREATE TABLE c_test2(
    no NUMBER,
    name VARCHAR2(10)
);

--STEP.2 두개의 테이블에 제약 조건 설정. 데이터 입력
--c_test1 ctest1_deptno_fk 참조키 없이 생성(c_test2 no에 uk없음)
ALTER TABLE c_test1
ADD CONSTRAINT ctest1_deptno_fk FOREIGN KEY(deptno)
REFERENCES c_test2(no);
--오류 보고
--ORA-02270: 이 열목록에 대해 일치하는 고유 또는 기본 키가 없습니다.

ALTER TABLE c_test2
ADD CONSTRAINT ctest2_no_uk UNIQUE(no);

--삭제
ALTER TABLE c_test1
DROP CONSTRAINT CTEST1_DEPTNO_FK;

ALTER TABLE c_test1
ADD CONSTRAINT ctest1_deptno_fk FOREIGN KEY(deptno)
REFERENCES c_test2(no)
ON DELETE CASCADE;
--Table C_TEST1이(가) 변경되었습니다.

--데이터 입력
INSERT INTO c_test2 VALUES(10,'AAA');
INSERT INTO c_test2 VALUES(20,'BBB');
INSERT INTO c_test2 VALUES(30,'CCC');
COMMIT;
SELECT * FROM c_test2;

INSERT INTO c_test1 VALUES(1,'apple',10);
INSERT INTO c_test1 VALUES(2,'banana',20);
INSERT INTO c_test1 VALUES(3,'cherry',30);
COMMIT;
SELECT * FROM c_test1;

INSERT INTO c_test1 VALUES(4,'peach',40);
--오류 보고
--ORA-02291: 무결성 제약조건(SCOTT.CTEST1_DEPTNO_FK)이 위배되었습니다- 부모 키가 없습니다

--c_test2에 있는 데이터 지우기 : ON DELETE CASCADE 테스트
DELETE FROM c_test2 WHERE NO = 10;
SELECT * FROM c_test1;
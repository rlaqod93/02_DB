--1.가상 컬럼을 가지는 테이블 생성
CREATE TABLE vt1(
    col1 NUMBER,
    col2 NUMBER,
    col3 NUMBER GENERATED ALWAYS AS(COL1 + COL2)
);
--Table VT1이(가) 생성되었습니다.

--2.테이블에 데이터 입력(가상컬럼에 직접 데이터 입력 않됨!)
INSERT INTO vt1 VALUES(1,2,3);
--SQL 오류: ORA-54013: INSERT 작업은 가상 열에서 허용되지 않습니다.
INSERT INTO vt1(col1,col2) VALUES(1,2);
--1 행 이(가) 삽입되었습니다.

--3.입력된 데이터 조회
SELECT * FROM vt1;

--4.기존값을 변경 : COL1의 값 1에서 5로변경
UPDATE vt1
    SET col1 = 5;
--1 행 이(가) 업데이트되었습니다.
SELECT * FROM vt1;
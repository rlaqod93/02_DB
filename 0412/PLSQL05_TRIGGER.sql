--BEFORE 트리거
--STEP 1. CTAS로 EMP;
CREATE TABLE emp_trg
AS
SELECT * FROM emp;
--Table EMP_TRG이(가) 생성되었습니다.

SELECT * FROM emp_trg;

--STEP 2. TRIGGER생성
CREATE OR REPLACE TRIGGER trg_emp_nodm_weekend
BEFORE
INSERT OR UPDATE OR DELETE ON emp_trg

DECLARE

BEGIN
    --DT -> 요일
    IF TO_CHAR(SYSDATE,'DY')IN('토','일') THEN
        IF INSERTING THEN
            RAISE_APPLICATION_ERROR(-20000,'주말 사원정보 추가 불가');
        ELSIF UPDATING THEN
            RAISE_APPLICATION_ERROR(-20001,'주말 사원정보 수정 불가');
        ELSIF DELETING THEN
            RAISE_APPLICATION_ERROR(-20002,'주말 사원정보 삭제 불가');
        ELSE
            RAISE_APPLICATION_ERROR(-20003,'주말 사원정보 변경 불가');
        END IF;
    END IF;
END;
/
--Trigger TRG_EMP_NODM_WEEKEND이(가) 컴파일되었습니다.
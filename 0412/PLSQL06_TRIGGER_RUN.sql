--SCOTT의 급여를 3000 -> 3500
UPDATE emp_trg
    SET sal = 3500
WHERE empno = 7788;

--트리거 화요일 추가 : 트리거 발생
--오류 보고 -
--ORA-20000: 주말 사원정보 수정 불가
--ORA-06512: "SCOTT.TRG_EMP_NODM_WEEKEND",  9행
--ORA-04088: 트리거 'SCOTT.TRG_EMP_NODM_WEEKEND'의 수행시 오류
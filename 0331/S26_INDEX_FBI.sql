--professor 테이블에 pay -> (pay + 1000)
CREATE INDEX idx_prof_pay_fbi
ON professor(pay + 1000);
--Index IDX_PROF_PAY_FBI이(가) 생성되었습니다.
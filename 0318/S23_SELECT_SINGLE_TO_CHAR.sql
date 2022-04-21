--TO_DATE : 날짜 , 숫자 데이터를 문자로 변환하는
--년도 YYYY 연도 4자리
--	  RRRR 2000년 이후 Y2K 버그로 인해 등장한 날짜 표기법 연도 4자리 표기법
--월  MM   월 숫자 2자리
--    MON  유닉스용 오라클에서 월
--일  DD   일을 숫자 2자리
--    DAY  요일에 해당하는 명칭 표기
--시간 HH24 하루를 24시간으로 표기
--    HH   하루를 12시간으로 표기
--분   MI   분
--초   SS   초
--대소문자 구분은 없음!
SELECT SYSDATE,
       TO_CHAR(SYSDATE,'YYYY/MM/DD HH24:MI:SS') AS TO_CHAR_FORMAT01,
       TO_CHAR(SYSDATE,'YYYY/MM/DD HH:MI:SS')   AS TO_CHAR_FORMAT02,
       TO_CHAR(SYSDATE,'MONTH') AS "MONTH",
       TO_CHAR(SYSDATE,'DDD') AS "DDD"
FROM dual
;
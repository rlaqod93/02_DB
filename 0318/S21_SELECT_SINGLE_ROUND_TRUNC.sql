--2018-07-13  23:56:28

SELECT STD_DATE,
       TRUNC(STD_DATE,'CC') AS TRUNC_CC,    
       --연도끝 2자리 2018이면 2050이하 이므로 2001년
       TRUNC(STD_DATE,'YYYY') AS TRUNC_YYYY,
       --2018-07-13 기준으로 반올림
       TRUNC(STD_DATE,'Q') AS TRUNC_Q,
       --각 분기의 2번째 달의 16일 기준
       TRUNC(STD_DATE,'DDD') AS TRUNC_DDD,
       --해당일에 정오 기준(12:00) 반올림
       TRUNC(STD_DATE,'HH') AS TRUNC_HH
       --해당일 시간을 기준으로 반올림
FROM(
SELECT TO_DATE('2018-07-13 23:56:28','YYYY-MM-DD HH24:MI:SS') STD_DATE
FROM dual
)
;
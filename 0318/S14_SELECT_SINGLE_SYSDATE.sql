--SYSDATE  : 시스템의 현재 날짜와 시간
--시스템 시간 : 절대로 오라클이 설치되어 있는 서버의 시간은 함부로 변경하면 안된다.

--SELECT SYSDATE 
--FROM dual
--;
--22/03/18

--날짜 FORMAT변경 하기 (1회성)
--ALTER SESSION SET NLS_DATE_FORMAT = 'RRRR-MM-DD:HH24:MI:ss';

--SELECT SYSDATE
--FROM dual
--;
--2022-03-18:12:07:10

SELECT SYSDATE + 1 AS tomorrow,
       SYSDATE     AS CURR_DATE,
       SYSDATE - 1 AS yesterday
FROM dual
;
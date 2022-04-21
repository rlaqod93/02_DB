--[형변환 함수 퀴즈3]
--emp 테이블을 조회하여 comm 값을 가지고 있는 사람들의 empno,ename,
--hierdate,총연봉 , 15% 인상후 연봉을 아래 화면처럼 출력하세요. 단 총연봉은
--(sla*12)+comm 으로 계산하고 아래 화면에서는 SAL로 출력되었으며 15% 인상한
--값은 총연봉의 15% 인상 값입니다.
--(HIRDATE 컬럼의 날짜 형식과 SAL 컬럼, 15% UP 컬럼의 $표시와,기호 나오게 하세요.)

SELECT empno,
       ename,
       TO_CHAR(hiredate,'YYYY-mm-dd') AS hiredate,
       TO_CHAR((sal*12)+comm,'$999,999') AS sal,
       TO_CHAR(((sal*12)+comm)*1.15,'$999,999') AS "15% UP"
FROM emp
WHERE comm IS NOT null
;
--emp 사원들에 이름,월급,연봉,수당
--연봉 : 월급 * 12 + 수당
--"SAL*12+COM" 데이터가 없는 이유는 comm NULL연산으로
--NULL : 값을 알수 없음
SELECT
    ename,
    sal * 12 + comm,
    sal,
    comm
FROM
    emp;
--유형1 예제 : professor 테이블에서 학과번호화 교수명 , 학과명을 출력하되 deptno가
--101번인 교수만 학과명을 "Computer Engineering" 으로 출력하고 101번이 아닌
--교수들은 학과명에 아무것도 출력하지 마세요.
SELECT deptno,
      name,
      DECODE(deptno,101,'Computer Engineering',null) AS DNAME
FROM professor
;
--유형2 예제 : professor 테이블에서 학과번호화 교수명 , 학과명을 출력하되 deptno가
--101번인 교수만 학과명을 "Computer Engineering" 으로 출력하고 101번이 아니면
--'ETC' 로 출력하세요.
SELECT deptno,
      name,
      DECODE(deptno,101,'Computer Engineering','ETC') AS DNAME
FROM professor
;
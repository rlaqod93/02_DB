--유형3 예제 : Professor 테이블에서 교수의 이름과 학과 명을 출력하되 학과 번호가
--101번 이면 'Computer Engineering'
--102번 이면 'Multimedia Engineering'
--103번 이면 'Software Engineering'
--나머지는 'ETC' 로 출력하세요.
SELECT deptno,
      name,
      DECODE(deptno,101,'Computer Engineering'
                   ,102,'Multimedia Engineering'
                   ,103,'Software Engineering'
                   ,'ETC') AS DNAME
FROM professor
;
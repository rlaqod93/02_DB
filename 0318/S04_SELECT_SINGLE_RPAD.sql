--emp테이블에서 deptno가 10번인 사원들의 이름을 총 9자리로
--출력하되 오른쪽 빈자리에는 해당 자리 수에 해당되는 숫자가 출력되도록 하세요.
SELECT deptno,
       ename,
       RPAD(ename,9,SUBSTR('123456789',LENGTH(ename)+1)) AS RPAD01,
       LENGTH(ename)+1,
       SUBSTR('123456789',LENGTH(ename)+1)AS SUBSTR01
FROM emp
WHERE deptno = 10
;
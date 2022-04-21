--emp 테이블을 조회 하여 모든 사람들의 이름과 직업을 아래와 같이 출력하세요.
SELECT
    ename
    || '('||job||'),' || ename ||' '' '||job||'''' AS "NAME AND JOB"
FROM
    emp;
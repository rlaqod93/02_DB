--EMP 테이블의 전체 열을 부서번호(오름차순)와 급여(내임차순)로 정렬
SELECT * 
FROM emp
ORDER BY deptno ASC , sal DESC
;
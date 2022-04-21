--DESC dept_temp;

--부서번호:50
--부서명:'DATABASE'
--지역:'SEOUL'
--테이블에 컬럼 한개 추가
INSERT INTO dept_temp(deptno,dname,loc)
VALUES(50,'DATABASE','SEOUL');

--확정
COMMIT;

SELECT * FROM dept_temp;

--되돌리기 : 확정을 하지않으면 전으로 돌아감
--확정이 되면 롤백을 사용해도 안됨
ROLLBACK;
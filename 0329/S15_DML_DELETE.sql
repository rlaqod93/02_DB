--emp_temp2 테이블에서 JOB MANAGER인 사람들 삭제
SELECT * 
FROM emp_temp2
WHERE job = 'MANAGER';

DELETE FROM emp_temp2
WHERE job = 'MANAGER';

COMMIT;
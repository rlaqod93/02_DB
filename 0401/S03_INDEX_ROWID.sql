SELECT ROWID,
       empno,
       ename
FROM emp;

--ROWID 값으로 검색
SELECT ROWID,
       empno,
       ename
FROM emp
WHERE ROWID = 'AAAR91AAHAAAACvAAF';


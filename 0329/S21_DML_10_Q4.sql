SELECT *
FROM CHAP10HW_EMP
WHERE hiredate > (SELECT MIN(hiredate)
                  FROM CHAP10HW_EMP
                  WHERE deptno = 60);
UPDATE CHAP10HW_EMP
 SET sal = sal * 1.1,
     deptno = 80
WHERE hiredate > (SELECT MIN(hiredate)
                  FROM CHAP10HW_EMP
                  WHERE deptno = 60);
SELECT * FROM CHAP10HW_EMP
ORDER BY deptno;
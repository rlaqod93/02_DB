--EXTRACT() - 역할
--입력된 날짜에서 추출하고자 하는 연도,월,시간,분,초 등을 반환하는 함수

--EXTRACT(보고자 하는 정보 FROM 입력 날짜)
SELECT 
--       EXTRACT(YEAR FROM hiredate) AS YEAR,
       TO_CHAR(hiredate,'YYYY') AS HIRE_YEAR,
       deptno,
       COUNT(*) AS CNT
FROM emp
GROUP BY TO_CHAR(hiredate,'YYYY'),deptno
ORDER BY TO_CHAR(hiredate,'YYYY') DESC ,deptno DESC
;
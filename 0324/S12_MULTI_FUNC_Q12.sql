SELECT deptno AS DEPTNO, --순위2
       name AS NAME,
       pay AS PAY,
       SUM(pay)OVER(PARTITION BY deptno) AS TOTAL_PAY,
       ROUND(RATIO_TO_REPORT(pay) 
                OVER(PARTITION BY deptno)*100,2) AS "RATIO_%"
FROM professor --순위1
ORDER BY deptno,name --순위3
;
--SELECT문 수행 순서
--5.SELECT
--1.FROM
--2.WHERE
--3.GROUP BY
--4.HAVING
--6.ORDER BY
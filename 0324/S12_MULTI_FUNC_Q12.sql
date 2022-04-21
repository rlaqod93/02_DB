SELECT deptno AS DEPTNO, --����2
       name AS NAME,
       pay AS PAY,
       SUM(pay)OVER(PARTITION BY deptno) AS TOTAL_PAY,
       ROUND(RATIO_TO_REPORT(pay) 
                OVER(PARTITION BY deptno)*100,2) AS "RATIO_%"
FROM professor --����1
ORDER BY deptno,name --����3
;
--SELECT�� ���� ����
--5.SELECT
--1.FROM
--2.WHERE
--3.GROUP BY
--4.HAVING
--6.ORDER BY
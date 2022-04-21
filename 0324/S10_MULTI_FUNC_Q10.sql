--loan 테이블을 사용하여 1000번 지점의 대출 내역을 출력하되 대출일자, 
--대출종목코드, 대출건수,대출총액, 누적대출금액을 아래와 같이 출력하세요.
SELECT L_DATE AS "대출일자",
       L_CODE AS "대출코드",
       L_QTY AS "대출건수",
       L_TOTAL AS "대출총액",
       SUM(L_TOTAL)OVER(ORDER BY L_DATE) AS "누적대출금액"
FROM loan
WHERE L_STORE = 1000
;
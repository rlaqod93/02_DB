--P_DATE	VARCHAR2(8 BYTE)	No
--P_CODE	NUMBER	No
--P_QTY	    NUMBER	Yes
--P_TOTAL	NUMBER	Yes
--P_STORE	VARCHAR2(5 BYTE)	Yes
SELECT P_DATE,
       P_CODE,
       P_QTY,
       P_TOTAL,
       SUM(P_TOTAL)OVER(ORDER BY P_TOTAL) "TOTAL"
FROM panmae
WHERE P_STORE = 1000
;
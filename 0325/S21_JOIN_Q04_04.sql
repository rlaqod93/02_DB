SELECT t1.gname AS CUST_NAME,
       t1.point,
       t2.gname AS GIFR_NAME
FROM customer t1,gift t2 
WHERE t1.point >= t2.g_start
AND   t2.gname = 'Notebook'
;
TRUNCATE TABLE PC_BOARD;
BEGIN
       FOR i IN 1..100 LOOP
                INSERT INTO pc_board VALUES( i,
                                                        DBMS_RANDOM.STRING('A',9),
                                                        NULL,
                                                        i,
                                                        NULL,
                                                        NULL,
                                                        SYSDATE - i,NULL
                                                         );
       END LOOP;
END;
/

SELECT A.rnum AS num,
          A.seq,
          A.title,
          A.contents,
          A.read_cnt,
          A.reg_dt,
          A.REG_ID,
          TO_CHAR(A.mod_dt,'YYYY/MM/DD') AS MOD_DT,
          A.mod_id
FROM(SELECT ROWNUM AS rnum,t1.*
         FROM(SELECT *
                 FROM pc_board
         ORDER BY MOD_DT DESC
     )t1
     WHERE ROWNUM <= 30
)A
WHERE rnum >= 21
;
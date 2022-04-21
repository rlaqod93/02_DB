--INSTR('문자열'또는 컬럼, 찾는 글자 , 시작위치(기본값은1)
--                                          , 몇번째인지(기본값은1));
SELECT INSTR('HELLO, ORACLE','L'),
       INSTR('HELLO, ORACLE','L',5),
       INSTR('HELLO, ORACLE','L',2,2)
FROM dual
;
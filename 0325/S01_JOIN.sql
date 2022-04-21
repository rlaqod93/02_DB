--SELECT NO, NAME FROM cat_a
--UNION ALL
--SELECT * FROM cat_b
--UNION ALL
--SELECT * FROM cat_c;

--SELECT cat_a.name,
--       cat_b.name,
--       no
--FROM cat_a,cat_b
--WHERE cat_a.no = cat_b.no
--;
--ORA-00918: 열의 정의가 애매합니다

--2개의 테이블로 카티션 곱 생성
--SELECT a.name,
--       b.name,
--       a.no
--FROM cat_a a,cat_b b
--WHERE a.no = b.no
--;

--3개 테이블 정상 조인
--SELECT a.name,
--       b.name,
--       c.name,
--       b.no
--FROM cat_a a,cat_b b,cat_c c
--WHERE a.no = b.no
--AND   a.no = c.no
--;

--3테이블 카티션 곱
--SELECT a.name,
--       b.name,
--       c.name,
--       b.no
--FROM cat_a a,cat_b b,cat_c c
--WHERE a.no = b.no
--AND   a.no = c.no
--;

--sql 개발 tool은 페이징 되어 있음!
select count(*)
from student t1,professor t2
;















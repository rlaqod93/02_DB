DROP VIEW view01;

--View VIEW01이(가) 삭제되었습니다.

SELECT t1.view_name,
       t1.text,
       t1.read_only
FROM user_views t1;
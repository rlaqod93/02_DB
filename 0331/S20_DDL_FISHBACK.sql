--1.flashback확인
SELECT object_name,
       original_name,
       createtime
FROM recyclebin;

--2.복원
--BIN$jUKFw4qeSOGXskMad1qVwQ==$0
FLASHBACK TABLE "BIN$jUKFw4qeSOGXskMad1qVwQ==$0" TO BEFORE DROP;
--Flashback을(를) 성공했습니다.

SELECT * FROM emp_hw;
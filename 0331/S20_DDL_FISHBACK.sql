--1.flashbackȮ��
SELECT object_name,
       original_name,
       createtime
FROM recyclebin;

--2.����
--BIN$jUKFw4qeSOGXskMad1qVwQ==$0
FLASHBACK TABLE "BIN$jUKFw4qeSOGXskMad1qVwQ==$0" TO BEFORE DROP;
--Flashback��(��) �����߽��ϴ�.

SELECT * FROM emp_hw;
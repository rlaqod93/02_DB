--NULL ������ ���� : ��տ���
--AVG(NAL(comm,0))
--SELECT COUNT(comm),
--       SUM(comm),
--       AVG(comm)
--FROM emp;

--NULL ó�� ��
SELECT COUNT(*),
       SUM(comm),
       AVG(NVL(comm,0))
FROM emp;
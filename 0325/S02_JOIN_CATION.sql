--STEP 1 �μ� ��ȣ�� 10���� ������� ���� ��ȸ
--STEP 2 ������ 3���� ����
--STEP 3 īƼ�� ������ �μ� ��ȣ�� 10�� ���� 3��Ʈ�� �����.
--
--STEP 1
--SELECT deptno,
--       ename,
--       job,
--       sal
--FROM emp
--WHERE deptno = 10
--;
--
--STEP 2
--SELECT LEVEL c1
--FROM dual
--CONNECT BY LEVEL <= 3
--;
--
--STEP 3
SELECT *
FROM (SELECT deptno,
       ename,
       job,
       sal
FROM emp
WHERE deptno = 10),
(SELECT LEVEL c1
FROM dual
CONNECT BY LEVEL <= 3);
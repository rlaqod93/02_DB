--EXTRACT() - ����
--�Էµ� ��¥���� �����ϰ��� �ϴ� ����,��,�ð�,��,�� ���� ��ȯ�ϴ� �Լ�

--EXTRACT(������ �ϴ� ���� FROM �Է� ��¥)
SELECT 
--       EXTRACT(YEAR FROM hiredate) AS YEAR,
       TO_CHAR(hiredate,'YYYY') AS HIRE_YEAR,
       deptno,
       COUNT(*) AS CNT
FROM emp
GROUP BY TO_CHAR(hiredate,'YYYY'),deptno
ORDER BY TO_CHAR(hiredate,'YYYY') DESC ,deptno DESC
;
--�μ��� ������ ��� �޿�
--ORACLE 10G�� �������� ���� �Ǿ ���
--ORACLE 10G�� �������� ���� �ȵ�, ORDER BY�� ���
SELECT deptno AS no,job,AVG(NVL(sal,0)) "AVG_SAL"
FROM emp
GROUP BY no,job --GROUP BY������ alias��� �ʵ�
ORDER BY deptno,job
;
--�޿��� 2000 ~ 3000���� ��� ������ ����ϼ���.
--SELECT *
--FROM emp
--WHERE sal >=2000
--AND sal <=3000
--;

--BETWEEN 2000 AND 3000
--�� �����ڷ� ���氡��

--SELECT *
--FROM emp
--WHERE sal BETWEEN 2000 AND 3000
--;

SELECT *
FROM emp
WHERE sal NOT BETWEEN 2000 AND 3000
;
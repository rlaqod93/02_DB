--ROWNUM : ��µǴ� ������� �ѹ��� ó��
SELECT ROWNUM,
       ename,
       CEIL(ROWNUM/3) AS CEIL01
FROM emp
;
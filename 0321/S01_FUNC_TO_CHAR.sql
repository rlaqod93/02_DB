--L999,999.99
--9 �Ҽ��� �޺κ��� 0���� ä��
SELECT sal,
       TO_CHAR(sal,'$999,999')      AS "SAL_$",
       TO_CHAR(sal,'L999,999.99')   AS "SAL_L",
       TO_CHAR(sal,'999,999.00')    AS "SAL_0",
       TO_CHAR(sal,'0009999.99')   AS "SAL_1",
       TO_CHAR(sal,'9999.99')       AS "SAL_.",
       TO_CHAR(sal,'999,999')       AS "SAL_,"
FROM emp
;
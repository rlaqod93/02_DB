--2018-07-13  23:56:28

SELECT STD_DATE,
       TRUNC(STD_DATE,'CC') AS TRUNC_CC,    
       --������ 2�ڸ� 2018�̸� 2050���� �̹Ƿ� 2001��
       TRUNC(STD_DATE,'YYYY') AS TRUNC_YYYY,
       --2018-07-13 �������� �ݿø�
       TRUNC(STD_DATE,'Q') AS TRUNC_Q,
       --�� �б��� 2��° ���� 16�� ����
       TRUNC(STD_DATE,'DDD') AS TRUNC_DDD,
       --�ش��Ͽ� ���� ����(12:00) �ݿø�
       TRUNC(STD_DATE,'HH') AS TRUNC_HH
       --�ش��� �ð��� �������� �ݿø�
FROM(
SELECT TO_DATE('2018-07-13 23:56:28','YYYY-MM-DD HH24:MI:SS') STD_DATE
FROM dual
)
;
--SYSDATE  : �ý����� ���� ��¥�� �ð�
--�ý��� �ð� : ����� ����Ŭ�� ��ġ�Ǿ� �ִ� ������ �ð��� �Ժη� �����ϸ� �ȵȴ�.

--SELECT SYSDATE 
--FROM dual
--;
--22/03/18

--��¥ FORMAT���� �ϱ� (1ȸ��)
--ALTER SESSION SET NLS_DATE_FORMAT = 'RRRR-MM-DD:HH24:MI:ss';

--SELECT SYSDATE
--FROM dual
--;
--2022-03-18:12:07:10

SELECT SYSDATE + 1 AS tomorrow,
       SYSDATE     AS CURR_DATE,
       SYSDATE - 1 AS yesterday
FROM dual
;
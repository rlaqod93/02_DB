--NEXT_DAY (��¥ ������,���Ϲ���)
--Ư�� ��¥�� �������� ���ƿ��� ������ ��¥�� ����� �ִ� �Լ�.
--WINDOS : NEXT_DAY(SYSDATE,'������')
--UNIX : NEXT_DAY(SYSDATE,'MON')
SELECT SYSDATE,
       NEXT_DAY(SYSDATE,'������') AS "NEXT_DAY_��",
       LAST_DAY(SYSDATE)         AS "3���� ������ ��¥"
FROM dual
;
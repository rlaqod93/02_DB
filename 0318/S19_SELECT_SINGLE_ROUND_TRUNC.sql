--ROUND() -> �ݿø�
--������ �������� ��ǰ������ ������ �Ǿ����� ���� ���,
--�׷��� ������ ������ ���

--TRUNC() -> ����
--��������

SELECT  SYSDATE,
        ROUND(SYSDATE) AS "ROUND_SYSDATE",
        TRUNC(SYSDATE) AS "TRUNC_SYSDATE"
FROM dual
;
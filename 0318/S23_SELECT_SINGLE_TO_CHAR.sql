--TO_DATE : ��¥ , ���� �����͸� ���ڷ� ��ȯ�ϴ�
--�⵵ YYYY ���� 4�ڸ�
--	  RRRR 2000�� ���� Y2K ���׷� ���� ������ ��¥ ǥ��� ���� 4�ڸ� ǥ���
--��  MM   �� ���� 2�ڸ�
--    MON  ���н��� ����Ŭ���� ��
--��  DD   ���� ���� 2�ڸ�
--    DAY  ���Ͽ� �ش��ϴ� ��Ī ǥ��
--�ð� HH24 �Ϸ縦 24�ð����� ǥ��
--    HH   �Ϸ縦 12�ð����� ǥ��
--��   MI   ��
--��   SS   ��
--��ҹ��� ������ ����!
SELECT SYSDATE,
       TO_CHAR(SYSDATE,'YYYY/MM/DD HH24:MI:SS') AS TO_CHAR_FORMAT01,
       TO_CHAR(SYSDATE,'YYYY/MM/DD HH:MI:SS')   AS TO_CHAR_FORMAT02,
       TO_CHAR(SYSDATE,'MONTH') AS "MONTH",
       TO_CHAR(SYSDATE,'DDD') AS "DDD"
FROM dual
;
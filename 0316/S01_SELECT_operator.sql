--emp ����鿡 �̸�,����,����,����
--���� : ���� * 12 + ����
--"SAL*12+COM" �����Ͱ� ���� ������ comm NULL��������
--NULL : ���� �˼� ����
SELECT
    ename,
    sal * 12 + comm,
    sal,
    comm
FROM
    emp;
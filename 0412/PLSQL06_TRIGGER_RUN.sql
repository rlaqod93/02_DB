--SCOTT�� �޿��� 3000 -> 3500
UPDATE emp_trg
    SET sal = 3500
WHERE empno = 7788;

--Ʈ���� ȭ���� �߰� : Ʈ���� �߻�
--���� ���� -
--ORA-20000: �ָ� ������� ���� �Ұ�
--ORA-06512: "SCOTT.TRG_EMP_NODM_WEEKEND",  9��
--ORA-04088: Ʈ���� 'SCOTT.TRG_EMP_NODM_WEEKEND'�� ����� ����
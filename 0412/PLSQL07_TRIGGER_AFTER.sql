--emp_trg_log ���̺� ����
--DML��ɾ ����� ��� emp_trg_log���̺� �α� ����
--DML �����,DML��ɾ�,����� ��¥
CREATE TABLE emp_trg_log
(
    TABLENAME VARCHAR2(30),
    DML_TYPE  VARCHAR2(20),
    EMPNO     NUMBER(4),
    USER_NAME VARCHAR2(50),
    CHANGE_DATE DATE
);

--SYS_CONTEXT('USERENV','SESSION_USER') : ���� �ý��ۿ� ������ �����
--:new.empno : ���� �߰��� EMPNO 
CREATE OR REPLACE TRIGGER trg_emp_log
AFTER
INSERT OR UPDATE OR DELETE ON emp_trg
FOR EACH ROW

BEGIN
    IF INSERTING THEN
        INSERT INTO emp_trg_log
        VALUES('emp_trg','INSERT',:NEW.empno,
               SYS_CONTEXT('USERENV','SESSION_USER'),SYSDATE);
    ELSIF UPDATING THEN
        INSERT INTO emp_trg_log
        VALUES('emp_trg','UPDATE',:OLD.empno,
               SYS_CONTEXT('USERENV','SESSION_USER'),SYSDATE);
    ELSIF DELETING THEN
        INSERT INTO emp_trg_log
        VALUES('emp_trg','DELETE',:OLD.empno,
               SYS_CONTEXT('USERENV','SESSION_USER'),SYSDATE);
    END IF;
END;
/
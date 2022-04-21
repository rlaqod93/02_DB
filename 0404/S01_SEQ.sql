CREATE TABLE dept_sequence
AS
SELECT *
FROM dept
WHERE 1=2;
--Table DEPT_SEQUENCE��(��) �����Ǿ����ϴ�.

DESC dept_sequence;
--�̸�     ��? ����           
-------- -- ------------ 
--DEPTNO    NUMBER(2)    
--DNAME     VARCHAR2(14) 
--LOC       VARCHAR2(13) 

--������ ����
CREATE SEQUENCE seq_dept_sequence
INCREMENT BY 10
START WITH 10
MAXVALUE 90
MINVALUE 0
NOCYCLE
CACHE 2;
--Sequence SEQ_DEPT_SEQUENCE��(��) �����Ǿ����ϴ�.

SELECT * FROM user_sequences;
--������ ������ Ȯ���ϱ�

--dept_sequence���̺� DEPTNO�� �������� �̿��ؼ� �Է�
--seq_dept_sequence.NEXTVAL : ��ȣ ��������
INSERT INTO dept_sequence 
VALUES(seq_dept_sequence.NEXTVAL,'DATEBASE','SEOUL');
--1 �� ��(��) ���ԵǾ����ϴ�.
SELECT * FROM dept_sequence;
--���� ������ ��ȣ CURRVAL:10
SELECT seq_dept_sequence.CURRVAL FROM dual;

INSERT INTO dept_sequence
VALUES(seq_dept_sequence.NEXTVAL,'DATEBASE','SEOUL');
SELECT * FROM dept_sequence;
--ORA-08004: ������ SEQ_DEPT_SEQUENCE.NEXTVAL exceeds MAXVALUE�� ��ʷ� �� �� �����ϴ�
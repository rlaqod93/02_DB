--ALTER
--START WITH�� OPTION�� ����� �� ����.
ALTER SEQUENCE seq_dept_sequence
INCREMENT BY 3
MAXVALUE 99
MINVALUE 0
CYCLE
CACHE 2;
--Sequence SEQ_DEPT_SEQUENCE��(��) ����Ǿ����ϴ�.

SELECT * FROM user_sequences;

INSERT INTO dept_sequence
VALUES(seq_dept_sequence.NEXTVAL,'DATEBASE','SEOUL');
SELECT * FROM dept_sequence;
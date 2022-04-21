--ALTER
--START WITH는 OPTION에 사용할 수 없다.
ALTER SEQUENCE seq_dept_sequence
INCREMENT BY 3
MAXVALUE 99
MINVALUE 0
CYCLE
CACHE 2;
--Sequence SEQ_DEPT_SEQUENCE이(가) 변경되었습니다.

SELECT * FROM user_sequences;

INSERT INTO dept_sequence
VALUES(seq_dept_sequence.NEXTVAL,'DATEBASE','SEOUL');
SELECT * FROM dept_sequence;
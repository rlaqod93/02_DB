--1
CREATE TABLE DEPTSEQ
AS
SELECT *
FROM dept;

SELECT * FROM DEPTSEQ;

--2
CREATE SEQUENCE seq_deptseq
INCREMENT BY 1
START WITH 1
MAXVALUE 99
MINVALUE 1
NOCYCLE
NOCACHE;

SELECT * FROM user_sequences;

--3
INSERT INTO DEPTSEQ
VALUES(seq_deptseq.NEXTVAL,'DATABASC','SEOUL');
INSERT INTO DEPTSEQ
VALUES(seq_deptseq.NEXTVAL,'WEB','BUSAN');
INSERT INTO DEPTSEQ
VALUES(seq_deptseq.NEXTVAL,'MOBILE','ILSAN');

COMMIT;
SELECT * FROM deptseq;
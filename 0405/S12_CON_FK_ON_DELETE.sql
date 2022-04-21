--ON DELETE
--c_test1,
--c_test2 ���̺� ����

--STEP.1
CREATE TABLE c_test1(
    no NUMBER,
    name VARCHAR2(10),
    deptno NUMBER
);

CREATE TABLE c_test2(
    no NUMBER,
    name VARCHAR2(10)
);

--STEP.2 �ΰ��� ���̺� ���� ���� ����. ������ �Է�
--c_test1 ctest1_deptno_fk ����Ű ���� ����(c_test2 no�� uk����)
ALTER TABLE c_test1
ADD CONSTRAINT ctest1_deptno_fk FOREIGN KEY(deptno)
REFERENCES c_test2(no);
--���� ����
--ORA-02270: �� ����Ͽ� ���� ��ġ�ϴ� ���� �Ǵ� �⺻ Ű�� �����ϴ�.

ALTER TABLE c_test2
ADD CONSTRAINT ctest2_no_uk UNIQUE(no);

--����
ALTER TABLE c_test1
DROP CONSTRAINT CTEST1_DEPTNO_FK;

ALTER TABLE c_test1
ADD CONSTRAINT ctest1_deptno_fk FOREIGN KEY(deptno)
REFERENCES c_test2(no)
ON DELETE CASCADE;
--Table C_TEST1��(��) ����Ǿ����ϴ�.

--������ �Է�
INSERT INTO c_test2 VALUES(10,'AAA');
INSERT INTO c_test2 VALUES(20,'BBB');
INSERT INTO c_test2 VALUES(30,'CCC');
COMMIT;
SELECT * FROM c_test2;

INSERT INTO c_test1 VALUES(1,'apple',10);
INSERT INTO c_test1 VALUES(2,'banana',20);
INSERT INTO c_test1 VALUES(3,'cherry',30);
COMMIT;
SELECT * FROM c_test1;

INSERT INTO c_test1 VALUES(4,'peach',40);
--���� ����
--ORA-02291: ���Ἲ ��������(SCOTT.CTEST1_DEPTNO_FK)�� ����Ǿ����ϴ�- �θ� Ű�� �����ϴ�

--c_test2�� �ִ� ������ ����� : ON DELETE CASCADE �׽�Ʈ
DELETE FROM c_test2 WHERE NO = 10;
SELECT * FROM c_test1;
--c_test1 ctest1_deptno_fk DROP
ALTER TABLE c_test1
DROP CONSTRAINT ctest1_deptno_fk;

ALTER TABLE c_test1
ADD CONSTRAINT ctest1_deptno_fk FOREIGN KEY(deptno)
REFERENCES c_test2(no)
ON DELETE SET NULL;

SELECT * FROM c_test1;
SELECT * FROM c_test2;

DELETE FROM c_test2 WHERE NO = 20;
SELECT * FROM c_test1;
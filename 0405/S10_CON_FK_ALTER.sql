SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name,
       t1.r_owner,
       t1.r_constraint_name
FROM user_constraints t1
WHERE t1.table_name IN ('EMP_FK');

--EMP_FK ���̺� ename UNIQUE ���� EMPFK_ename_uk
ALTER TABLE EMP_FK 
ADD CONSTRAINT empfk_ename_uk UNIQUE (ename);
--Table EMP_FK��(��) ����Ǿ����ϴ�.
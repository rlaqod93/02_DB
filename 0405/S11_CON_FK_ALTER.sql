--JOB NOT NULL -> NULL이 있는걸 NOT NULL로 변경하는 것
ALTER TABLE emp_fk
MODIFY (job CONSTRAINT empfk_job_nn NOT NULL);

SELECT t1.owner,
       t1.constraint_name,
       t1.constraint_type,
       t1.table_name,
       t1.r_owner,
       t1.r_constraint_name
FROM user_constraints t1
WHERE t1.table_name IN ('EMP_FK');
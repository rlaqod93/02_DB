--SELECT ename,job
--FROM emp
--;

--SELECT ename || job
--FROM emp
--;

--COL "NAME AND JOB" FOR A25
SELECT ename || q'['s job is ]' || job "NAME AND JOB"
FROM emp
;
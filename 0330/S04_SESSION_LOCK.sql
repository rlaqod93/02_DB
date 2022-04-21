--한쪽에서 수정하고 확장을 해주지 않으면 다른쪽에서 LOCK이 걸려 무한루프가됨
SELECT * FROM dept_tcl;

UPDATE dept_tcl
  SET loc = 'SEOUL'
WHERE deptno = 30;

COMMIT;
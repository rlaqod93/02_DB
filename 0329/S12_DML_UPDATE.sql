SELECT *
FROM emp_temp
WHERE sal < 2500;

UPDATE emp_temp
    SET comm = 50
WHERE sal < 2500
;

COMMIT;
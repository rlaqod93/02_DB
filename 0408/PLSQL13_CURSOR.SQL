SET SERVEROUTPUT ON;
DECLARE
	CURSOR C1 IS
	SELECT deptno, dname, loc
	FROM dept;


BEGIN
	--Ŀ�� for loop(�ڵ� open,fetch,close)
	
	FOR c1_rec IN C1 LOOP
		DBMS_OUTPUT.PUT_LINE('deptno: '||c1_rec.deptno ||' : ' ||
		                     'dname:  '||c1_rec.dname  ||' : ' ||
                             'loc:    '||c1_rec.loc							 
		                     );
	
	END LOOP;



END;
/
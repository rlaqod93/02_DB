SET SERVEROUTPUT ON;
DECLARE

BEGIN
    DBMS_OUTPUT.PUT_LINE('pro_emp(7788)');
    pkg_overload.pro_emp(7788);
    
    DBMS_OUTPUT.PUT_LINE('pro_ename(SCOTT)');
    pkg_overload.pro_emp('SCOTT');
END;
/
--pro_emp(7788)
--ename :SCOTT
--sal :3000
--pro_ename('SCOTT')
--ename :SCOTT
--sal :3000

--PL/SQL ���ν����� ���������� �Ϸ�Ǿ����ϴ�.
--�������α׷� �����ε�
CREATE OR REPLACE PACKAGE pkg_overload
IS
    PROCEDURE pro_emp(in_empno IN EMP.empno%TYPE);
    
    PROCEDURE pro_emp(in_ename IN EMP.ename%TYPE);
END;
/
--Package PKG_OVERLOAD��(��) �����ϵǾ����ϴ�.
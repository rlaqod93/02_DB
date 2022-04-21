--서브프로그램 오버로드
CREATE OR REPLACE PACKAGE pkg_overload
IS
    PROCEDURE pro_emp(in_empno IN EMP.empno%TYPE);
    
    PROCEDURE pro_emp(in_ename IN EMP.ename%TYPE);
END;
/
--Package PKG_OVERLOAD이(가) 컴파일되었습니다.
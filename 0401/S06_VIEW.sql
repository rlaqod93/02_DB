CREATE OR REPLACE VIEW vw_emp20
AS(SELECT empno,
          ename,
          job
   FROM emp
   WHERE deptno = 20
);
--View VW_EMP20��(��) �����Ǿ����ϴ�.

SELECT * FROM vw_emp20;
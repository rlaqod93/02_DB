--emp_fk

--dept_fk �����Ͱ� ����!
INSERT INTO emp_fk(
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    9999,
    'hong',
    'CLERK',
    '7788',
    TO_DATE('2017/04/03','YYYY/MM/DD'),
    1200,
    NULL,
    10
);
--���� ����
--ORA-02291: ���Ἲ ��������(SCOTT.EMPFK_DEPTNO_FK)�� ����Ǿ����ϴ�- �θ� Ű�� �����ϴ�

--dept_fk

INSERT INTO dept_fk (
    deptno,
    dname,
    loc
) VALUES (
    10,
    'test_dname',
    'test_loc'
);
--dept_fk �����Ͱ� 10!
INSERT INTO emp_fk(
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    9999,
    'hong',
    'CLERK',
    '7788',
    TO_DATE('2017/04/03','YYYY/MM/DD'),
    1200,
    NULL,
    10
);
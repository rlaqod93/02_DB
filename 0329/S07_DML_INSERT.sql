INSERT INTO emp_temp(
 empno
 ,ename
 ,job
 ,mgr
 ,hiredate
 ,sal
 ,comm
 ,deptno
)VALUES(
 9999
 ,'ȫ�浿'
 ,'PRESIDENT'
 ,NULL
 ,'2001/01/01'
 ,5000
 ,1000
 ,10
);


--��¥ ������ ����
INSERT INTO emp_temp(
 empno
 ,ename
 ,job
 ,mgr
 ,hiredate
 ,sal
 ,comm
 ,deptno
)VALUES(
 2111
 ,'ȫ��02'
 ,'PRESIDENT'
 ,NULL
 ,'01/01/2001'
 ,5000
 ,1000
 ,10
);
--���� ���� -
--ORA-01830: ��¥ ������ ������ ���ʿ��� �����Ͱ� ���ԵǾ� �ֽ��ϴ�

--��¥ ������ ����ȯ
INSERT INTO emp_temp(
 empno
 ,ename
 ,job
 ,mgr
 ,hiredate
 ,sal
 ,comm
 ,deptno
)VALUES(
 1111
 ,'ȫ03'
 ,'PRESIDENT'
 ,NULL
 ,'2001-01-01'
 ,5000
 ,1000
 ,10
);

--��¥ ������ �ٲٱ�
--TO_DATE() �Է� ����
INSERT INTO emp_temp(
 empno
 ,ename
 ,job
 ,mgr
 ,hiredate
 ,sal
 ,comm
 ,deptno
)VALUES(
 2112
 ,'ȫ05'
 ,'PRESIDENT'
 ,NULL
 ,TO_DATE('01/01/2001','DD/MM/YYYY')
 ,5000
 ,1000
 ,10
);

--SYSDATE�̿� �Է�
INSERT INTO emp_temp(
 empno
 ,ename
 ,job
 ,mgr
 ,hiredate
 ,sal
 ,comm
 ,deptno
)VALUES(
 2113
 ,'ȫ06'
 ,'PRESIDENT'
 ,NULL
 ,SYSDATE
 ,5000
 ,1000
 ,10
);
SELECT * FROM emp_temp;
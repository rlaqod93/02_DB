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
 ,'홍길동'
 ,'PRESIDENT'
 ,NULL
 ,'2001/01/01'
 ,5000
 ,1000
 ,10
);


--날짜 데이터 오류
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
 ,'홍길02'
 ,'PRESIDENT'
 ,NULL
 ,'01/01/2001'
 ,5000
 ,1000
 ,10
);
--오류 보고 -
--ORA-01830: 날짜 형식의 지정에 불필요한 데이터가 포함되어 있습니다

--날짜 데이터 형변환
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
 ,'홍03'
 ,'PRESIDENT'
 ,NULL
 ,'2001-01-01'
 ,5000
 ,1000
 ,10
);

--날짜 포멧을 바꾸기
--TO_DATE() 입력 가능
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
 ,'홍05'
 ,'PRESIDENT'
 ,NULL
 ,TO_DATE('01/01/2001','DD/MM/YYYY')
 ,5000
 ,1000
 ,10
);

--SYSDATE이용 입력
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
 ,'홍06'
 ,'PRESIDENT'
 ,NULL
 ,SYSDATE
 ,5000
 ,1000
 ,10
);
SELECT * FROM emp_temp;
--1. 2�� �̻��� ������ ��ȯ�� ��û�ϴ� ��� -����
SELECT t3.no,
       t3.name,
       (SELECT dname 
        FROM t4 
        WHERE t3.deptno=t4.deptno) as dname
FROM t3
;
--ORA-01427: ���� �� ���� ���ǿ� 2�� �̻��� ���� ���ϵǾ����ϴ�.

UPDATE t4
SET DEPTNO = 400
WHERE dname = 'DDD'
;
COMMIT;
--t4 ���̺��� dname 'DDD'�� 100 -> 400���� ����
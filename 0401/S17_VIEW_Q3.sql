--3. Student ���̺�� department ���̺��� ����Ͽ� �а��̸� , 
--   �а��� �ִ�Ű , �а����� ���� Ű�� ū �л����� 																							
--   �̸��� Ű �� Inline View �� ����Ͽ� �Ʒ��� ���� ����ϼ���.
SELECT a.dname,a.max_height,b.name,b.height
FROM(SELECT t2.deptno,t2.dname,MAX(t1.height) max_height
     FROM student t1 INNER JOIN department t2
     ON t1.deptno1 = t2.deptno
     GROUP BY t2.deptno,t2.dname
    )A JOIN student B
ON a.deptno = b.deptno1
AND a.max_height = b.height
;
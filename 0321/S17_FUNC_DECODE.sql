--Student ���̺��� ����Ͽ� �� 1 ���� (deptno1) �� 101 ���� �а� 
--�л����� �̸��� �ֹι�ȣ, ������ ����ϵ� ������ �ֹι�ȣ(jumin) 
--�÷��� �̿��Ͽ� 7��° ���ڰ� 1�� ��� "  ����" , 2�� ��� "����  " �� ����ϼ���.
SELECT name,
       jumin,
       SUBSTR(jumin,7,1) as gender,
       DECODE(SUBSTR(jumin,7,1),1,'MNA'
                               ,2,'WOMAN'
                               ,3,'MAN' --2000�� ���� ���
                               ,4,'WOMAN' --2000�� ���� ���
                               ) AS "Gender"
FROM student
WHERE deptno1 = 101
;
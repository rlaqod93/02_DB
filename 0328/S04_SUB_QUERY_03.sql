--Student���̺��� 1����(deptno1)�� 201���� �а��� ��� �����Ժ��� �����԰�
--���� �л����� �̸��� �����Ը� ����ϼ���
SELECT name,
       weight
FROM student
WHERE weight > (SELECT AVG(NVL(weight,0))
                FROM student
                WHERE deptno1 = 201)
;
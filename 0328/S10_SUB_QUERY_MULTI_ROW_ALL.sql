--Student���̺��� ��ȸ�Ͽ� ��ü �л� �߿��� ü���� 2�г� �л����� ü�߿��� ����
--���� ������ �л����� �����԰� ���� �л��� �̸��� �г�� �����Ը� ����ϼ���.
SELECT name,
       grade,
       weight
FROM student
WHERE weight <ALL (SELECT weight
                   FROM student
                   WHERE grade = 2);
--ORACLE JOIN : UNION
--���������� �Ҵ� �ʵ� �л� �����ؼ� ���
--�����л��� ���� ����
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1,professor t2
WHERE t1.profno = t2.profno(+)
UNION
--���� ������ ���� �л�
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1,professor t2
WHERE t1.profno(+) = t2.profno
;
--ANSI FULL OUT JOUN
SELECT t1.name as stud_name,
       t2.name as prof_name
FROM student t1 FULL OUTER JOIN professor t2
ON t1.profno = t2.profno
;
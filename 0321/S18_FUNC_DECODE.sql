--Student ���̺��� 1 ������ (deptno1) 101���� �л��� 
--�̸��� ����ó�� ������ ����ϼ���. 
--��,������ȣ�� 02 �� "SEOUL" , 031 �� "GYEONGGI" , 051 �� "BUSAN" , 
--052 �� "ULSAN" , 055 �� "GYEONGNAM"�Դϴ�.
SELECT name,
       tel,
       INSTR(tel,')') as instr,
       SUBSTR(tel,1,INSTR(tel,')')-1) as "area",
       DECODE(SUBSTR(tel,1,INSTR(tel,')')-1)
                                ,02,'SEOUL'
                                ,055,'GYEONGNAM'
                                ,052,'ULSAN'
                                ,051,'BUSAN'
                                ,031,'GYEONGGI') AS LOC
FROM student
WHERE deptno1 = 101
;
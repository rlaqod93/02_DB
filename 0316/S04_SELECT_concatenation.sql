--emp ���̺��� ��ȸ �Ͽ� ��� ������� �̸��� ������ �Ʒ��� ���� ����ϼ���.
SELECT
    ename
    || '('||job||'),' || ename ||' '' '||job||'''' AS "NAME AND JOB"
FROM
    emp;
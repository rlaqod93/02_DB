--XMLELEMENT :
--<NAME>,SCOTT</NAME>

--XMLAGG
--10 <NAME>,CLARK</NAME><NAME>,KING</NAME><NAME>,MILLER</NAME>
--EXTRACT('//text()').getStringVal()
--     10 , CLARK,KING,MILLER
SELECT deptno,
       SUBSTR(XMLAGG(XMLELEMENT(name,',',ename)ORDER BY hiredate)
       .EXTRACT('//text()').getStringVal(),2) as "xml_ename"
FROM emp
GROUP BY deptno
;
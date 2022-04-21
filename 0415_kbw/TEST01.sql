SELECT tablespace_name,
        file_name
FROM dba_data_files;

CREATE TABLESPACE goodman
DATAFILE 'C:\APP\ITSC\PRODUCT\18.0.0\ORADATA\XE\goodman01.DBF'
SIZE 300M AUTOEXTEND ON NEXT 3M;

--TABLESPACE GOODMAN이(가) 생성되었습니다.
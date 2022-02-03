#!/usr/bin/bash
#ORACLE_BASE=/u01/app/oracle
#ORACLE_HOME=/u01/app/oracle/product/18.4.0/db_1
#SQLPLUS_HOME=/u01/app/oracle/product/18.4.0/db_1/bin/sqlplus
#ORACLE_HOME=/u01/app/oracle/product/19c
#SQLPLUS_HOME=/u01/app/oracle/product/19c/bin/sqlplus
#ORACLE_SID=orclcdb

discover_1(){
val1=$(sqlplus -s / as sysdba<<EOM
set heading OFF termout ON trimout ON feedback OFF
set pagesize 0
select sysdate from dual;
EOM
)
   echo "date and time is: ${val1} " >> /home/oracle/discover_1.txt
}
discover_1
### main ###

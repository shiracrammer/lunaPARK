create or replace procedure findMANAGER  (employeID in number,ans out varchar2)
is
checker number;
ans varchar2 (5) NOT NULL:="False";
begin
select worker  into checker
from employee
where employeID=worker and employee.role='manager';
if (SQL%found)
then
  ans:="True":
else
  ans;="False":
end if;
end findMANAGER;


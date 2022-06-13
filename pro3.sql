
  create or replace procedure findMEM  ( serial_number in number,ans out varchar2)
  is
checker number;
ans varchar2 (5) NOT NULL:="False";
begin
select memBERs  into checker
from members
where serial_number=memBERs;
if (SQL%found)
then
  ans:="True":
  return members.name;
else
  ans;="False":
end if;
end findMEM;





create or replace procedure isKID  (memberID in number,ans out varchar2)
is
checker number;
ans varchar2 (5) NOT NULL:="False";
begin
select MEM  into checker
from members
where memberID=MEM and cardmember.route_type ='kid';
if (SQL%found)
then
  ans:="True":
else
  ans;="False":
end if;
end isKID;


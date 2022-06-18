create or replace function GetAmountKids return number amount
is
FUNCres number amount:=0;
begin
  select route_type into route_type;
  from cardmember
  where route_type='kid';
  amount:=cont (cardmember.route_type);
  return(FUNCres);
  end GetAmountKids;
  
  

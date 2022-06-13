create or replace function update_salaries
 return number Ns is

cursor sl (ID number) is select*
 from employee

where role='manager';

seniority number;

extra employee.salary%type;
overall_update number default 0;

Result number (500);

begin
  for w in s1(dep)
    loop
      seniority:=extract (year from startDATE)-extract (year from w.startDATE);
      extra:=w.salary* (seniority *0.02):
      overall_update: overall_update +extra:
      update employee w2 set
      w2.salary=w2.salary +extra
      where w2.1d=w.id;
      commit;
    end loop;
    result:= 'the raise of salaries in department' || dep|| ' cost:' ||overall_update;
  return (Result);

end update_salaries;

 create or replace function find_employee (employee_id_to_find in number) return employeeNAME out varchar2 is
 FunctionResult employeeNAME out varchar2;
 begin
   select employeeNAME into employeeNAME;
   from employee
   where employee_id_to_find:=employee.id;
   return (employeeNAME);
  end find_name;
  

/*8*/SELECT distinct e1.ID, e1.name,e1.salary, e2.ID, e2.name, e2.salary FROM employee e1, employee e2 WHERE e1.role='manager' and e2.role = 'manager' and e1.ID <> e2.ID and e1.salary= e2.salary;

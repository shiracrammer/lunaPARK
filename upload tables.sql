select * from CARD;
select * from cardMEMBER t;
select * from members t;
select * from EMPLOYEE t;
select* from rofridma.event;
select* from rofridma.facilities;
select* from rofridma.facilities_mode;
select* from rofridma.mode_of;
select* from rofridma.my_order;
select* from rofridma.visitor;



/*1*/SELECT distinct employee.cardid as memID , members.member_id as memID, name FROM MEMBERS NATURAL JOIN EMPLOYEE;
/*2*/SELECT  name,salary   FROM EMPLOYEE  WHERE  role != 'manager'  ;
/*3*/SELECT name, member_id, date_ex FROM MEMBERS WHERE date_ex > '01-may-2022';
/*4*/SELECT  name, serial_number, Purchasing_group FROM MEMBERS NATURAL JOIN cardMEMBER;
/*5*/SELECT name,card_num FROM  cardMEMBER  NATURAL JOIN  MEMBERS WHERE ROUTE_TYPE = 'kid';
/*6*/ SELECT cM1.card_num, cM2.Card_Num, cM1.member_id, cM2.Member_Id FROM cardMEMBER cM1, cardMEMBER cM2 WHERE cM1.member_id= cM2.member_id
             and  cM1.Purchasing_group = cM2.Purchasing_Group
            and cM1.Route_type <> cM2.Route_type;
/*7*/SELECT ID, name,salary FROM employee WHERE salary<= 6000;
/*8*/SELECT e1.ID, e1.name,e1.salary, e2.ID, e2.name, e2.salary FROM employee e1, employee e2 WHERE e1.role='manager' and e2.role = 'manager' and e1.ID <> e2.ID and e1.salary= e2.salary;

/*9*/SELECT card_num, member_id, name, date_ex FROM cardMEMBER NATURAL JOIN MEMBERS WHERE date_ex >= '23-june-2022' and Route_type = 'adult';

/*10*/SELECT card_num, member_id, name, date_ex FROM cardMEMBER NATURAL JOIN MEMBERS WHERE Route_type = 'adult' MINUS 
SELECT card_num, member_id, name, date_ex FROM cardMEMBER NATURAL JOIN MEMBERS WHERE date_ex >= '23-june-2022' and Route_type = 'adult';

/*11*/SELECT distinct member_id, serial_number, name, Purchasing_group FROM cardMEMBER NATURAL JOIN MEMBERS WHERE Purchasing_group != 'soldiers';

/*12*/SELECT name, ID, salary, startDATE FROM EMPLOYEE WHERE startDATE <= '01-january-2018' and salary <= 4500;

/*indexes:*/
/*1*/
CREATE index cardM_Purchasing_group ON cardMEMBER (Purchasing_group);
DROP INDEX cardM_Purchasing_group;

/*2*/
CREATE INDEX ro_type_index ON cardMEMBER (Route_Type);
DROP INDEX ro_type_index;
/*3*/
CREATE INDEX first_date_emp ON employee(startdate);
DROP INDEX first_date_emp;
/*4*/ 
CREATE INDEX salary_emp ON employee(salary);
DROP INDEX salary_emp;
/*5*/
CREATE INDEX role_emp ON employee(role);
DROP INDEX role_emp;





/*1*/select Purchasing_group, count(*) as c_pruching from Cardmember GROUP BY Purchasing_group order by c_pruching
/*2*/select date_ex, count(*) as c_date from MEMBERS GROUP BY date_ex ORDER BY c_date
/*3*/select price, count(*) as c_price from MEMBERS, cardmember GROUP BY price ORDER BY c_price
/*4*/select Route_type, count(*) as c_type from cardMEMBER GROUP BY Route_type ORDER BY c_type
/*5*/select salary, count(*) as c_salary from EMPLOYEE GROUP BY salary ORDER BY c_salary
/*6*/select role, count(*) as c_role from EMPLOYEE GROUP BY role ORDER BY c_role


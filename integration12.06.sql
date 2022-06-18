/*1*/SELECT distinct ID, name, employee_id, facilities_id  FROM rofridma.facilities NATURAL JOIN employee WHERE ID <> EMPLOYEE_ID;
/*2*/select distinct visitor_phone, visitor_name, Route_type as visitor_type, visitor_ID as member_id FROM rofridma.visitor NATURAL JOIN cardMEMBER WHERE Route_type = 'adult';
/*3*/ select distinct name, employee_id as ID, facilities_location, role FROM rofridma.facilities  NATURAL JOIN employee WHERE facilities_location = 'north' and role = 'facility operator';
/*4*/ select distinct name as name_mem, member_id, event_price as price, event_id, Purchasing_group FROM rofridma.event NATURAL JOIN members NATURAL JOIN cardMEMBER WHERE event_id = 1 or event_id = 5;


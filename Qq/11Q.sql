/*11*/SELECT distinct member_id, serial_number, name, Purchasing_group FROM cardMEMBER NATURAL JOIN MEMBERS WHERE Purchasing_group != 'soldiers';


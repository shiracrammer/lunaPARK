/*10*/SELECT card_num, member_id, name, date_ex FROM cardMEMBER NATURAL JOIN MEMBERS WHERE Route_type = 'adult' MINUS 
SELECT card_num, member_id, name, date_ex FROM cardMEMBER NATURAL JOIN MEMBERS WHERE date_ex >= '23-june-2022' and Route_type = 'adult';

/*6*/ SELECT cM1.card_num, cM2.Card_Num, cM1.member_id, cM2.Member_Id FROM cardMEMBER cM1, cardMEMBER cM2 WHERE cM1.member_id= cM2.member_id
             and  cM1.Purchasing_group = cM2.Purchasing_Group
            and cM1.Route_type <> cM2.Route_type;


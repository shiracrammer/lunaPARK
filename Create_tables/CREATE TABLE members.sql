CREATE TABLE members
(
  member_id INT NOT NULL,
  date_ex INT NOT NULL,
  serial_number INT NOT NULL,
  name INT NOT NULL,
  price INT NOT NULL,
  PRIMARY KEY (member_id)
);

CREATE TABLE card
(
  card_num INT NOT NULL,
  Target_Audience INT NOT NULL,
  Purchasing_group INT NOT NULL,
  Route_type INT NOT NULL,
  member_id INT NOT NULL,
  PRIMARY KEY (card_num),
  FOREIGN KEY (member_id) REFERENCES members(member_id)
);



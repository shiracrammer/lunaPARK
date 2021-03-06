CREATE TABLE CARD
(
  cardID INT NOT NULL,
  PRIMARY KEY (cardID)
);

CREATE TABLE employee
(
  ID INT NOT NULL,
  name VARCHAR(20) NOT NULL,
  role VARCHAR(20) NOT NULL,
  address VARCHAR(35) NOT NULL,
  salary FLOAT NOT NULL,
  startDATE DATE NOT NULL,
  cardID INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (cardID) REFERENCES CARD(cardID)
);

drop table card
drop table employee


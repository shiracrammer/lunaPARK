
[General]
Version=1

[Preferences]
Username=
Password=2903
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=CRAMMER
Name=EMPLOYEE
Count=20000

[Record]
Name=ID
Type=NUMBER
Size=
Data=Random(1000, 9999999999999999)
Master=

[Record]
Name=NAME
Type=VARCHAR2
Size=20
Data=FirstName"-"+ LastName
Master=

[Record]
Name=ROLE
Type=VARCHAR2
Size=20
Data=Components.Description
Master=

[Record]
Name=ADDRESS
Type=VARCHAR2
Size=35
Data=Address1
Master=

[Record]
Name=SALARY
Type=FLOAT
Size=22
Data=Components.Price
Master=

[Record]
Name=STARTDATE
Type=DATE
Size=
Data=Random(1000, 9999999999999999)
Master=

[Record]
Name=CARDID
Type=NUMBER
Size=
Data=Random(1000, 9999999999999999)
Master=


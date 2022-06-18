
[General]
Version=1

[Preferences]
Username=
Password=2537
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=CRAMMER
Name=CARD
Count=20000

[Record]
Name=CARDID
Type=NUMBER
Size=
Data=Random(1000, 9999999999) 
Master=

[Record]
Name=CARDNAME
Type=VARCHAR2
Size=20
Data=Company
Master=



[General]
Version=1

[Preferences]
Username=
Password=2100
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=LEA1
Name=PATIENT
Count=400

[Record]
Name=ID_PATIENT
Type=NUMBER
Size=3
Data=Random(100, 999)
Master=

[Record]
Name=NAME_P
Type=VARCHAR2
Size=15
Data=List('Ann', 'Cal', 'Dan', 'Eve', 'Gus', 'Hal', 'Jed', 'Kit', 'Lou', 'Moe', 
='Ned', 'Pam', 'Ray', 'Sid', 'Ted', 'Viv', 'Wes', 'Vic', 'Zed', 'Lia')
Master=

[Record]
Name=AGE
Type=NUMBER
Size=3
Data=Random(1,120)
Master=

[Record]
Name=ID_CALL
Type=NUMBER
Size=3
Data=List(select id_call from CALL)
Master=


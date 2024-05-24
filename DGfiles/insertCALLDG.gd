
[General]
Version=1

[Preferences]
Username=
Password=2021
Database=
DateFormat=dd-mm-yyyy
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=LEA1
Name=CALL
Count=400

[Record]
Name=ID_CALL
Type=NUMBER
Size=3
Data=Sequence(111)
Master=

[Record]
Name=URGENCY
Type=NUMBER
Size=1
Data=Random(1, 5)
Master=

[Record]
Name=DETAILS
Type=VARCHAR2
Size=15
Data=List('critical', 'deceased', 'minor', 'unconscious', 'stable', 'missing')
Master=

[Record]
Name=DATE_CALL
Type=DATE
Size=
Data=Random(01/01/1970,02/05/2024)
Master=

[Record]
Name=ID_TEAM
Type=NUMBER
Size=3
Data=Sequence(111)
Master=

[Record]
Name=ID_HOSPITAL
Type=NUMBER
Size=3
Data=Random(111,999)
Master=



[General]
Version=1

[Preferences]
Username=
Password=2188
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=LEA1
Name=EMPLOYEE
Count=400

[Record]
Name=ID_EMPLOYEE
Type=NUMBER
Size=3
Data=Sequence(111, 999)
Master=

[Record]
Name=NAME_EMP
Type=VARCHAR2
Size=15
Data=List(('Alice', 'Bob', 'Charlie', 'David', 'Eve', 'Frank', 'Grace', 'Hannah', 'Ivy', 'Jack', 
='Kara', 'Liam', 'Mia', 'Noah', 'Olivia', 'Paul', 'Quinn', 'Ryan', 'Sophia', 'Tom', 
='Ursula', 'Vera', 'Will', 'Xander', 'Yara', 'Zane', 'Aiden', 'Bella', 'Carter', 'Daisy', 
='Ethan', 'Fiona', 'Gavin', 'Holly', 'Isaac', 'Julia', 'Kevin', 'Leah', 'Mason', 'Nina')
=)
Master=

[Record]
Name=SALARY
Type=NUMBER
Size=6
Data= Random(1000, 15000)
Master=

[Record]
Name=ID_TEAM
Type=NUMBER
Size=3
Data=List(select id_team from TEAM)
Master=


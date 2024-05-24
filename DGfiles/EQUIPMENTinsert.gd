
[General]
Version=1

[Preferences]
Username=
Password=2196
Database=
DateFormat=dd-mm-yyyy
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=LEA1
Name=EQUIPMENT
Count=400

[Record]
Name=DATE_BORROW
Type=DATE
Size=
Data=Random(09/10/2003,20/05/2024)
Master=

[Record]
Name=NAME_E
Type=VARCHAR2
Size=15
Data=List('Hammer', 'Screwdriver', 'Wrench', 'Drill', 'Saw', 'Pliers', 'Tape measure', 'Level', 'Chisel', 'Clamp',
='Flashlight', 'Ladder', 'Shovel', 'Axe', 'Crowbar', 'Sander', 'Welder', 'Gloves', 'Goggles', 'Helmet',
='Rope', 'Chainsaw', 'Generator', 'Compressor', 'Nail gun', 'Heat gun', 'Stud finder', 'Toolbox', 'Utility knife', 'Multimeter')
Master=

[Record]
Name=ID_EQUIPMENT
Type=NUMBER
Size=3
Data=Random(100,999)
Master=

[Record]
Name=STATUS_E
Type=NUMBER
Size=5
Data=Random(0, 1)
Master=

[Record]
Name=ID_EMPLOYEE
Type=NUMBER
Size=3
Data=List(select id_employee from EMPLOYEE)
Master=


CREATE TABLE Team
(
  id_team NUMERIC(3) NOT NULL,
  amount NUMERIC(3),
  name_of_team VARCHAR(15),
  PRIMARY KEY (id_team)
);

CREATE TABLE Hospital
(
  id_hospital NUMERIC(3) NOT NULL,
  city VARCHAR(15),
  phone NUMERIC(10),
  PRIMARY KEY (id_hospital)
);

CREATE TABLE Call
(
  id_call NUMERIC(3) NOT NULL,
  urgency NUMERIC(1),
  details VARCHAR(15),
  date_call DATE,
  id_team NUMERIC(3),
  id_hospital NUMERIC(3),
  PRIMARY KEY (id_call),
  FOREIGN KEY (id_team) REFERENCES Team(id_team),
  FOREIGN KEY (id_hospital) REFERENCES Hospital(id_hospital)
);

CREATE TABLE Patient
(
  id_patient NUMERIC(3) NOT NULL,
  name_p VARCHAR(15),
  age NUMERIC(3),
  id_call NUMERIC(3),
  PRIMARY KEY (id_patient),
  FOREIGN KEY (id_call) REFERENCES Call(id_call)
);

CREATE TABLE Employee
(
  id_employee NUMERIC(3) NOT NULL,
  name_emp VARCHAR(15),
  salary NUMERIC(6),
  id_team NUMERIC(3),
  PRIMARY KEY (id_employee),
  FOREIGN KEY (id_team) REFERENCES Team(id_team)
);

CREATE TABLE Equipment
(
  date_borrow DATE NOT NULL,
  name_e VARCHAR(15),
  id_equipment NUMERIC(3),
  status_e NUMERIC(5),
  id_employee NUMERIC(3),
  PRIMARY KEY (id_equipment),
  FOREIGN KEY (id_employee) REFERENCES Employee(id_employee)
);

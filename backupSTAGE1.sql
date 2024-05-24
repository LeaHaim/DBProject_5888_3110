prompt PL/SQL Developer import file
prompt Created on יום שישי 24 מאי 2024 by לאה חיים
set feedback off
set define off
prompt Creating HOSPITAL...
create table HOSPITAL
(
  id_hospital NUMBER(3) not null,
  city        VARCHAR2(15),
  phone       NUMBER(10)
);
alter table HOSPITAL
  add primary key (ID_HOSPITAL)
  using index ;

prompt Creating TEAM...
create table TEAM
(
  id_team      NUMBER(3) not null,
  amount       NUMBER(3),
  name_of_team VARCHAR2(15)
);
alter table TEAM
  add primary key (ID_TEAM)
  using index ;

prompt Creating CALL...
create table CALL
(
  id_call     NUMBER(3) not null,
  urgency     NUMBER(1),
  details     VARCHAR2(15),
  date_call   DATE,
  id_team     NUMBER(3),
  id_hospital NUMBER(3)
);
alter table CALL
  add primary key (ID_CALL)
  using index ;
alter table CALL
  add foreign key (ID_TEAM)
  references TEAM (ID_TEAM);
alter table CALL
  add foreign key (ID_HOSPITAL)
  references HOSPITAL (ID_HOSPITAL);

prompt Creating EMPLOYEE...
create table EMPLOYEE
(
  id_employee NUMBER(3) not null,
  name_emp    VARCHAR2(15),
  salary      NUMBER(6),
  id_team     NUMBER(3)
);
alter table EMPLOYEE
  add primary key (ID_EMPLOYEE)
  using index ;
alter table EMPLOYEE
  add foreign key (ID_TEAM)
  references TEAM (ID_TEAM);

prompt Creating EQUIPMENT...
create table EQUIPMENT
(
  date_borrow  DATE not null,
  name_e       VARCHAR2(15),
  id_equipment NUMBER(3) not null,
  status_e     NUMBER(5),
  id_employee  NUMBER(3)
);
alter table EQUIPMENT
  add primary key (ID_EQUIPMENT)
  using index ;
alter table EQUIPMENT
  add foreign key (ID_EMPLOYEE)
  references EMPLOYEE (ID_EMPLOYEE);

prompt Creating PATIENT...
create table PATIENT
(
  id_patient NUMBER(3) not null,
  name_p     VARCHAR2(15),
  age        NUMBER(3),
  id_call    NUMBER(3)
);
alter table PATIENT
  add primary key (ID_PATIENT)
  using index ;
alter table PATIENT
  add foreign key (ID_CALL)
  references CALL (ID_CALL);

prompt Disabling triggers for HOSPITAL...
alter table HOSPITAL disable all triggers;
prompt Disabling triggers for TEAM...
alter table TEAM disable all triggers;
prompt Disabling triggers for CALL...
alter table CALL disable all triggers;
prompt Disabling triggers for EMPLOYEE...
alter table EMPLOYEE disable all triggers;
prompt Disabling triggers for EQUIPMENT...
alter table EQUIPMENT disable all triggers;
prompt Disabling triggers for PATIENT...
alter table PATIENT disable all triggers;
prompt Disabling foreign key constraints for CALL...
alter table CALL disable constraint SYS_C007121;
alter table CALL disable constraint SYS_C007122;
prompt Disabling foreign key constraints for EMPLOYEE...
alter table EMPLOYEE disable constraint SYS_C007128;
prompt Disabling foreign key constraints for EQUIPMENT...
alter table EQUIPMENT disable constraint SYS_C007131;
prompt Disabling foreign key constraints for PATIENT...
alter table PATIENT disable constraint SYS_C007125;
prompt Deleting PATIENT...
delete from PATIENT;
commit;
prompt Deleting EQUIPMENT...
delete from EQUIPMENT;
commit;
prompt Deleting EMPLOYEE...
delete from EMPLOYEE;
commit;
prompt Deleting CALL...
delete from CALL;
commit;
prompt Deleting TEAM...
delete from TEAM;
commit;
prompt Deleting HOSPITAL...
delete from HOSPITAL;
commit;
prompt Loading HOSPITAL...
insert into HOSPITAL (id_hospital, city, phone)
values (202, 'CN', 1111111112);
insert into HOSPITAL (id_hospital, city, phone)
values (203, 'CA', 1111111113);
insert into HOSPITAL (id_hospital, city, phone)
values (204, 'EG', 1111111114);
insert into HOSPITAL (id_hospital, city, phone)
values (205, 'CN', 1111111115);
insert into HOSPITAL (id_hospital, city, phone)
values (206, 'AU', 1111111116);
insert into HOSPITAL (id_hospital, city, phone)
values (100, 'TR', 1111111111);
insert into HOSPITAL (id_hospital, city, phone)
values (101, 'US', 1111111112);
insert into HOSPITAL (id_hospital, city, phone)
values (102, 'IN', 1111111113);
insert into HOSPITAL (id_hospital, city, phone)
values (103, 'CN', 1111111114);
insert into HOSPITAL (id_hospital, city, phone)
values (104, 'AR', 1111111115);
insert into HOSPITAL (id_hospital, city, phone)
values (105, 'AR', 1111111116);
insert into HOSPITAL (id_hospital, city, phone)
values (106, 'ID', 1111111117);
insert into HOSPITAL (id_hospital, city, phone)
values (107, 'US', 1111111118);
insert into HOSPITAL (id_hospital, city, phone)
values (108, 'BZ', 1111111119);
insert into HOSPITAL (id_hospital, city, phone)
values (109, 'AU', 1111111120);
insert into HOSPITAL (id_hospital, city, phone)
values (110, 'CU', 1111111121);
insert into HOSPITAL (id_hospital, city, phone)
values (111, 'US', 1111111122);
insert into HOSPITAL (id_hospital, city, phone)
values (112, 'PG', 1111111123);
insert into HOSPITAL (id_hospital, city, phone)
values (113, 'BR', 1111111124);
insert into HOSPITAL (id_hospital, city, phone)
values (114, 'SR', 1111111125);
insert into HOSPITAL (id_hospital, city, phone)
values (115, 'TZ', 1111111126);
insert into HOSPITAL (id_hospital, city, phone)
values (116, 'KI', 1111111127);
insert into HOSPITAL (id_hospital, city, phone)
values (117, 'US', 1111111128);
insert into HOSPITAL (id_hospital, city, phone)
values (118, 'US', 1111111129);
insert into HOSPITAL (id_hospital, city, phone)
values (119, 'TR', 1111111130);
insert into HOSPITAL (id_hospital, city, phone)
values (120, 'PK', 1111111131);
insert into HOSPITAL (id_hospital, city, phone)
values (121, 'US', 1111111132);
insert into HOSPITAL (id_hospital, city, phone)
values (122, 'PH', 1111111133);
insert into HOSPITAL (id_hospital, city, phone)
values (123, 'MR', 1111111134);
insert into HOSPITAL (id_hospital, city, phone)
values (124, 'MH', 1111111135);
insert into HOSPITAL (id_hospital, city, phone)
values (125, 'PK', 1111111136);
insert into HOSPITAL (id_hospital, city, phone)
values (126, 'US', 1111111137);
insert into HOSPITAL (id_hospital, city, phone)
values (127, 'DK', 1111111138);
insert into HOSPITAL (id_hospital, city, phone)
values (128, 'US', 1111111139);
insert into HOSPITAL (id_hospital, city, phone)
values (129, 'DE', 1111111140);
insert into HOSPITAL (id_hospital, city, phone)
values (130, 'US', 1111111141);
insert into HOSPITAL (id_hospital, city, phone)
values (131, 'US', 1111111142);
insert into HOSPITAL (id_hospital, city, phone)
values (132, 'US', 1111111143);
insert into HOSPITAL (id_hospital, city, phone)
values (133, 'CN', 1111111144);
insert into HOSPITAL (id_hospital, city, phone)
values (134, 'CA', 1111111145);
insert into HOSPITAL (id_hospital, city, phone)
values (135, 'CO', 1111111146);
insert into HOSPITAL (id_hospital, city, phone)
values (136, 'CA', 1111111147);
insert into HOSPITAL (id_hospital, city, phone)
values (137, 'US', 1111111148);
insert into HOSPITAL (id_hospital, city, phone)
values (138, 'EC', 1111111149);
insert into HOSPITAL (id_hospital, city, phone)
values (139, 'US', 1111111150);
insert into HOSPITAL (id_hospital, city, phone)
values (140, 'IT', 1111111151);
insert into HOSPITAL (id_hospital, city, phone)
values (141, 'PG', 1111111152);
insert into HOSPITAL (id_hospital, city, phone)
values (142, 'BR', 1111111153);
insert into HOSPITAL (id_hospital, city, phone)
values (143, 'BR', 1111111154);
insert into HOSPITAL (id_hospital, city, phone)
values (144, 'MX', 1111111155);
insert into HOSPITAL (id_hospital, city, phone)
values (145, 'BR', 1111111156);
insert into HOSPITAL (id_hospital, city, phone)
values (146, 'UZ', 1111111157);
insert into HOSPITAL (id_hospital, city, phone)
values (147, 'DE', 1111111158);
insert into HOSPITAL (id_hospital, city, phone)
values (148, 'US', 1111111159);
insert into HOSPITAL (id_hospital, city, phone)
values (149, 'PH', 1111111160);
insert into HOSPITAL (id_hospital, city, phone)
values (150, 'AU', 1111111161);
insert into HOSPITAL (id_hospital, city, phone)
values (151, 'NA', 1111111162);
insert into HOSPITAL (id_hospital, city, phone)
values (152, 'GR', 1111111163);
insert into HOSPITAL (id_hospital, city, phone)
values (153, 'US', 1111111164);
insert into HOSPITAL (id_hospital, city, phone)
values (154, 'FJ', 1111111165);
insert into HOSPITAL (id_hospital, city, phone)
values (155, 'ET', 1111111166);
insert into HOSPITAL (id_hospital, city, phone)
values (156, 'CA', 1111111167);
insert into HOSPITAL (id_hospital, city, phone)
values (157, 'AU', 1111111168);
insert into HOSPITAL (id_hospital, city, phone)
values (158, 'MK', 1111111169);
insert into HOSPITAL (id_hospital, city, phone)
values (159, 'FI', 1111111170);
insert into HOSPITAL (id_hospital, city, phone)
values (160, 'US', 1111111171);
insert into HOSPITAL (id_hospital, city, phone)
values (161, 'CN', 1111111172);
insert into HOSPITAL (id_hospital, city, phone)
values (162, 'LY', 1111111173);
insert into HOSPITAL (id_hospital, city, phone)
values (163, 'US', 1111111174);
insert into HOSPITAL (id_hospital, city, phone)
values (164, 'US', 1111111175);
insert into HOSPITAL (id_hospital, city, phone)
values (165, 'US', 1111111176);
insert into HOSPITAL (id_hospital, city, phone)
values (166, 'PA', 1111111177);
insert into HOSPITAL (id_hospital, city, phone)
values (167, 'US', 1111111178);
insert into HOSPITAL (id_hospital, city, phone)
values (168, 'AU', 1111111179);
insert into HOSPITAL (id_hospital, city, phone)
values (169, 'US', 1111111180);
insert into HOSPITAL (id_hospital, city, phone)
values (170, 'ID', 1111111181);
insert into HOSPITAL (id_hospital, city, phone)
values (171, 'CA', 1111111182);
insert into HOSPITAL (id_hospital, city, phone)
values (172, 'RU', 1111111183);
insert into HOSPITAL (id_hospital, city, phone)
values (173, 'PH', 1111111184);
insert into HOSPITAL (id_hospital, city, phone)
values (174, 'RU', 1111111185);
insert into HOSPITAL (id_hospital, city, phone)
values (175, 'CO', 1111111186);
insert into HOSPITAL (id_hospital, city, phone)
values (176, 'PG', 1111111187);
insert into HOSPITAL (id_hospital, city, phone)
values (177, 'CN', 1111111188);
insert into HOSPITAL (id_hospital, city, phone)
values (178, 'CG', 1111111189);
insert into HOSPITAL (id_hospital, city, phone)
values (179, 'AU', 1111111190);
insert into HOSPITAL (id_hospital, city, phone)
values (180, 'PG', 1111111191);
insert into HOSPITAL (id_hospital, city, phone)
values (181, 'TH', 1111111192);
insert into HOSPITAL (id_hospital, city, phone)
values (182, 'US', 1111111193);
insert into HOSPITAL (id_hospital, city, phone)
values (183, 'US', 1111111194);
insert into HOSPITAL (id_hospital, city, phone)
values (184, 'MX', 1111111195);
insert into HOSPITAL (id_hospital, city, phone)
values (185, 'RU', 1111111196);
insert into HOSPITAL (id_hospital, city, phone)
values (186, 'US', 1111111197);
insert into HOSPITAL (id_hospital, city, phone)
values (187, 'CN', 1111111198);
insert into HOSPITAL (id_hospital, city, phone)
values (188, 'VE', 1111111199);
insert into HOSPITAL (id_hospital, city, phone)
values (189, 'ID', 1111111200);
insert into HOSPITAL (id_hospital, city, phone)
values (190, 'TH', 1111111201);
insert into HOSPITAL (id_hospital, city, phone)
values (191, 'PG', 1111111202);
insert into HOSPITAL (id_hospital, city, phone)
values (192, 'US', 1111111203);
insert into HOSPITAL (id_hospital, city, phone)
values (193, 'US', 1111111204);
insert into HOSPITAL (id_hospital, city, phone)
values (194, 'PA', 1111111205);
commit;
prompt 100 records committed...
insert into HOSPITAL (id_hospital, city, phone)
values (195, 'GB', 1111111206);
insert into HOSPITAL (id_hospital, city, phone)
values (196, 'US', 1111111207);
insert into HOSPITAL (id_hospital, city, phone)
values (197, 'AU', 1111111208);
insert into HOSPITAL (id_hospital, city, phone)
values (198, 'CN', 1111111209);
insert into HOSPITAL (id_hospital, city, phone)
values (199, 'US', 1111111210);
insert into HOSPITAL (id_hospital, city, phone)
values (201, 'MG', 1111111111);
insert into HOSPITAL (id_hospital, city, phone)
values (207, 'US', 1111111117);
insert into HOSPITAL (id_hospital, city, phone)
values (208, 'BR', 1111111118);
insert into HOSPITAL (id_hospital, city, phone)
values (209, 'SD', 1111111119);
insert into HOSPITAL (id_hospital, city, phone)
values (210, 'MX', 1111111120);
insert into HOSPITAL (id_hospital, city, phone)
values (211, 'US', 1111111121);
insert into HOSPITAL (id_hospital, city, phone)
values (212, 'CA', 1111111122);
insert into HOSPITAL (id_hospital, city, phone)
values (213, 'RU', 1111111123);
insert into HOSPITAL (id_hospital, city, phone)
values (214, 'MZ', 1111111124);
insert into HOSPITAL (id_hospital, city, phone)
values (215, 'GL', 1111111125);
insert into HOSPITAL (id_hospital, city, phone)
values (216, 'AU', 1111111126);
insert into HOSPITAL (id_hospital, city, phone)
values (217, 'BR', 1111111127);
insert into HOSPITAL (id_hospital, city, phone)
values (218, 'AR', 1111111128);
insert into HOSPITAL (id_hospital, city, phone)
values (219, 'FJ', 1111111129);
insert into HOSPITAL (id_hospital, city, phone)
values (220, 'US', 1111111130);
insert into HOSPITAL (id_hospital, city, phone)
values (221, 'AU', 1111111131);
insert into HOSPITAL (id_hospital, city, phone)
values (222, 'AR', 1111111132);
insert into HOSPITAL (id_hospital, city, phone)
values (223, 'CN', 1111111133);
insert into HOSPITAL (id_hospital, city, phone)
values (224, 'US', 1111111134);
insert into HOSPITAL (id_hospital, city, phone)
values (225, 'US', 1111111135);
insert into HOSPITAL (id_hospital, city, phone)
values (226, 'AU', 1111111136);
insert into HOSPITAL (id_hospital, city, phone)
values (227, 'MZ', 1111111137);
insert into HOSPITAL (id_hospital, city, phone)
values (228, 'KZ', 1111111138);
insert into HOSPITAL (id_hospital, city, phone)
values (229, 'CI', 1111111139);
insert into HOSPITAL (id_hospital, city, phone)
values (230, 'CA', 1111111140);
insert into HOSPITAL (id_hospital, city, phone)
values (231, 'BR', 1111111141);
insert into HOSPITAL (id_hospital, city, phone)
values (232, 'VE', 1111111142);
insert into HOSPITAL (id_hospital, city, phone)
values (233, 'US', 1111111143);
insert into HOSPITAL (id_hospital, city, phone)
values (234, 'AR', 1111111144);
insert into HOSPITAL (id_hospital, city, phone)
values (235, 'AU', 1111111145);
insert into HOSPITAL (id_hospital, city, phone)
values (236, 'CN', 1111111146);
insert into HOSPITAL (id_hospital, city, phone)
values (237, 'US', 1111111147);
insert into HOSPITAL (id_hospital, city, phone)
values (238, 'MM', 1111111148);
insert into HOSPITAL (id_hospital, city, phone)
values (239, 'FR', 1111111149);
insert into HOSPITAL (id_hospital, city, phone)
values (240, 'EC', 1111111150);
insert into HOSPITAL (id_hospital, city, phone)
values (241, 'BR', 1111111151);
insert into HOSPITAL (id_hospital, city, phone)
values (242, 'IE', 1111111152);
insert into HOSPITAL (id_hospital, city, phone)
values (243, 'US', 1111111153);
insert into HOSPITAL (id_hospital, city, phone)
values (244, 'GA', 1111111154);
insert into HOSPITAL (id_hospital, city, phone)
values (245, 'NE', 1111111155);
insert into HOSPITAL (id_hospital, city, phone)
values (246, 'PK', 1111111156);
insert into HOSPITAL (id_hospital, city, phone)
values (247, 'TR', 1111111157);
insert into HOSPITAL (id_hospital, city, phone)
values (248, 'CA', 1111111158);
insert into HOSPITAL (id_hospital, city, phone)
values (249, 'US', 1111111159);
insert into HOSPITAL (id_hospital, city, phone)
values (250, 'PG', 1111111160);
insert into HOSPITAL (id_hospital, city, phone)
values (251, 'CD', 1111111161);
insert into HOSPITAL (id_hospital, city, phone)
values (252, 'TZ', 1111111162);
insert into HOSPITAL (id_hospital, city, phone)
values (253, 'CD', 1111111163);
insert into HOSPITAL (id_hospital, city, phone)
values (254, 'US', 1111111164);
insert into HOSPITAL (id_hospital, city, phone)
values (255, 'GL', 1111111165);
insert into HOSPITAL (id_hospital, city, phone)
values (256, 'US', 1111111166);
insert into HOSPITAL (id_hospital, city, phone)
values (257, 'BR', 1111111167);
insert into HOSPITAL (id_hospital, city, phone)
values (258, 'AU', 1111111168);
insert into HOSPITAL (id_hospital, city, phone)
values (259, 'PG', 1111111169);
insert into HOSPITAL (id_hospital, city, phone)
values (260, 'SE', 1111111170);
insert into HOSPITAL (id_hospital, city, phone)
values (261, 'CA', 1111111171);
insert into HOSPITAL (id_hospital, city, phone)
values (262, 'ZA', 1111111172);
insert into HOSPITAL (id_hospital, city, phone)
values (263, 'IN', 1111111173);
insert into HOSPITAL (id_hospital, city, phone)
values (264, 'CA', 1111111174);
insert into HOSPITAL (id_hospital, city, phone)
values (265, 'HT', 1111111175);
insert into HOSPITAL (id_hospital, city, phone)
values (266, 'ET', 1111111176);
insert into HOSPITAL (id_hospital, city, phone)
values (267, 'US', 1111111177);
insert into HOSPITAL (id_hospital, city, phone)
values (268, 'US', 1111111178);
insert into HOSPITAL (id_hospital, city, phone)
values (269, 'US', 1111111179);
insert into HOSPITAL (id_hospital, city, phone)
values (270, 'BR', 1111111180);
insert into HOSPITAL (id_hospital, city, phone)
values (271, 'PH', 1111111181);
insert into HOSPITAL (id_hospital, city, phone)
values (272, 'DE', 1111111182);
insert into HOSPITAL (id_hospital, city, phone)
values (273, 'BR', 1111111183);
insert into HOSPITAL (id_hospital, city, phone)
values (274, 'VU', 1111111184);
insert into HOSPITAL (id_hospital, city, phone)
values (275, 'US', 1111111185);
insert into HOSPITAL (id_hospital, city, phone)
values (276, 'ES', 1111111186);
insert into HOSPITAL (id_hospital, city, phone)
values (277, 'PR', 1111111187);
insert into HOSPITAL (id_hospital, city, phone)
values (278, 'PG', 1111111188);
insert into HOSPITAL (id_hospital, city, phone)
values (279, 'HN', 1111111189);
insert into HOSPITAL (id_hospital, city, phone)
values (280, 'PE', 1111111190);
insert into HOSPITAL (id_hospital, city, phone)
values (281, 'CA', 1111111191);
insert into HOSPITAL (id_hospital, city, phone)
values (282, 'US', 1111111192);
insert into HOSPITAL (id_hospital, city, phone)
values (283, 'MY', 1111111193);
insert into HOSPITAL (id_hospital, city, phone)
values (284, 'RU', 1111111194);
insert into HOSPITAL (id_hospital, city, phone)
values (285, 'ZA', 1111111195);
insert into HOSPITAL (id_hospital, city, phone)
values (286, 'US', 1111111196);
insert into HOSPITAL (id_hospital, city, phone)
values (287, 'CL', 1111111197);
insert into HOSPITAL (id_hospital, city, phone)
values (288, 'IR', 1111111198);
insert into HOSPITAL (id_hospital, city, phone)
values (289, 'US', 1111111199);
insert into HOSPITAL (id_hospital, city, phone)
values (290, 'AF', 1111111200);
insert into HOSPITAL (id_hospital, city, phone)
values (291, 'US', 1111111201);
insert into HOSPITAL (id_hospital, city, phone)
values (292, 'US', 1111111202);
insert into HOSPITAL (id_hospital, city, phone)
values (293, 'TH', 1111111203);
insert into HOSPITAL (id_hospital, city, phone)
values (294, 'CA', 1111111204);
insert into HOSPITAL (id_hospital, city, phone)
values (295, 'SR', 1111111205);
insert into HOSPITAL (id_hospital, city, phone)
values (296, 'IN', 1111111206);
insert into HOSPITAL (id_hospital, city, phone)
values (297, 'CN', 1111111207);
insert into HOSPITAL (id_hospital, city, phone)
values (298, 'US', 1111111208);
insert into HOSPITAL (id_hospital, city, phone)
values (299, 'BR', 1111111209);
insert into HOSPITAL (id_hospital, city, phone)
values (300, 'US', 1111111210);
commit;
prompt 200 records committed...
insert into HOSPITAL (id_hospital, city, phone)
values (302, 'CA', 1111111111);
insert into HOSPITAL (id_hospital, city, phone)
values (303, 'US', 1111111112);
insert into HOSPITAL (id_hospital, city, phone)
values (304, 'US', 1111111113);
insert into HOSPITAL (id_hospital, city, phone)
values (305, 'ZA', 1111111114);
insert into HOSPITAL (id_hospital, city, phone)
values (306, 'CU', 1111111115);
insert into HOSPITAL (id_hospital, city, phone)
values (307, 'US', 1111111116);
insert into HOSPITAL (id_hospital, city, phone)
values (308, 'US', 1111111117);
insert into HOSPITAL (id_hospital, city, phone)
values (309, 'AF', 1111111118);
insert into HOSPITAL (id_hospital, city, phone)
values (310, 'IS', 1111111119);
insert into HOSPITAL (id_hospital, city, phone)
values (311, 'BR', 1111111120);
insert into HOSPITAL (id_hospital, city, phone)
values (312, 'DE', 1111111121);
insert into HOSPITAL (id_hospital, city, phone)
values (313, 'MV', 1111111122);
insert into HOSPITAL (id_hospital, city, phone)
values (314, 'MY', 1111111123);
insert into HOSPITAL (id_hospital, city, phone)
values (315, 'CN', 1111111124);
insert into HOSPITAL (id_hospital, city, phone)
values (316, 'KI', 1111111125);
insert into HOSPITAL (id_hospital, city, phone)
values (317, 'ID', 1111111126);
insert into HOSPITAL (id_hospital, city, phone)
values (318, 'BR', 1111111127);
insert into HOSPITAL (id_hospital, city, phone)
values (319, 'AT', 1111111128);
insert into HOSPITAL (id_hospital, city, phone)
values (320, 'CH', 1111111129);
insert into HOSPITAL (id_hospital, city, phone)
values (321, 'KG', 1111111130);
insert into HOSPITAL (id_hospital, city, phone)
values (322, 'SG', 1111111131);
insert into HOSPITAL (id_hospital, city, phone)
values (323, 'PG', 1111111132);
insert into HOSPITAL (id_hospital, city, phone)
values (324, 'JP', 1111111133);
insert into HOSPITAL (id_hospital, city, phone)
values (325, 'AU', 1111111134);
insert into HOSPITAL (id_hospital, city, phone)
values (326, 'AU', 1111111135);
insert into HOSPITAL (id_hospital, city, phone)
values (327, 'CN', 1111111136);
insert into HOSPITAL (id_hospital, city, phone)
values (328, 'GR', 1111111137);
insert into HOSPITAL (id_hospital, city, phone)
values (329, 'CK', 1111111138);
insert into HOSPITAL (id_hospital, city, phone)
values (330, 'CA', 1111111139);
insert into HOSPITAL (id_hospital, city, phone)
values (331, 'ZW', 1111111140);
insert into HOSPITAL (id_hospital, city, phone)
values (332, 'PA', 1111111141);
insert into HOSPITAL (id_hospital, city, phone)
values (333, 'MX', 1111111142);
insert into HOSPITAL (id_hospital, city, phone)
values (334, 'JP', 1111111143);
insert into HOSPITAL (id_hospital, city, phone)
values (335, 'BR', 1111111144);
insert into HOSPITAL (id_hospital, city, phone)
values (336, 'CA', 1111111145);
insert into HOSPITAL (id_hospital, city, phone)
values (337, 'BR', 1111111146);
insert into HOSPITAL (id_hospital, city, phone)
values (338, 'US', 1111111147);
insert into HOSPITAL (id_hospital, city, phone)
values (339, 'CA', 1111111148);
insert into HOSPITAL (id_hospital, city, phone)
values (340, 'AU', 1111111149);
insert into HOSPITAL (id_hospital, city, phone)
values (341, 'SB', 1111111150);
insert into HOSPITAL (id_hospital, city, phone)
values (342, 'PG', 1111111151);
insert into HOSPITAL (id_hospital, city, phone)
values (343, 'US', 1111111152);
insert into HOSPITAL (id_hospital, city, phone)
values (344, 'AU', 1111111153);
insert into HOSPITAL (id_hospital, city, phone)
values (345, 'SB', 1111111154);
insert into HOSPITAL (id_hospital, city, phone)
values (346, 'US', 1111111155);
insert into HOSPITAL (id_hospital, city, phone)
values (347, 'SD', 1111111156);
insert into HOSPITAL (id_hospital, city, phone)
values (348, 'US', 1111111157);
insert into HOSPITAL (id_hospital, city, phone)
values (349, 'FJ', 1111111158);
insert into HOSPITAL (id_hospital, city, phone)
values (350, 'CA', 1111111159);
insert into HOSPITAL (id_hospital, city, phone)
values (351, 'RU', 1111111160);
insert into HOSPITAL (id_hospital, city, phone)
values (352, 'BR', 1111111161);
insert into HOSPITAL (id_hospital, city, phone)
values (353, 'ES', 1111111162);
insert into HOSPITAL (id_hospital, city, phone)
values (354, 'IL', 1111111163);
insert into HOSPITAL (id_hospital, city, phone)
values (355, 'BE', 1111111164);
insert into HOSPITAL (id_hospital, city, phone)
values (356, 'US', 1111111165);
insert into HOSPITAL (id_hospital, city, phone)
values (357, 'MG', 1111111166);
insert into HOSPITAL (id_hospital, city, phone)
values (358, 'US', 1111111167);
insert into HOSPITAL (id_hospital, city, phone)
values (359, 'CA', 1111111168);
insert into HOSPITAL (id_hospital, city, phone)
values (360, 'CA', 1111111169);
insert into HOSPITAL (id_hospital, city, phone)
values (361, 'US', 1111111170);
insert into HOSPITAL (id_hospital, city, phone)
values (362, 'SB', 1111111171);
insert into HOSPITAL (id_hospital, city, phone)
values (363, 'TR', 1111111172);
insert into HOSPITAL (id_hospital, city, phone)
values (364, 'GQ', 1111111173);
insert into HOSPITAL (id_hospital, city, phone)
values (365, 'NG', 1111111174);
insert into HOSPITAL (id_hospital, city, phone)
values (366, 'CR', 1111111175);
insert into HOSPITAL (id_hospital, city, phone)
values (367, 'SB', 1111111176);
insert into HOSPITAL (id_hospital, city, phone)
values (368, 'US', 1111111177);
insert into HOSPITAL (id_hospital, city, phone)
values (369, 'CA', 1111111178);
insert into HOSPITAL (id_hospital, city, phone)
values (370, 'US', 1111111179);
insert into HOSPITAL (id_hospital, city, phone)
values (371, 'AU', 1111111180);
insert into HOSPITAL (id_hospital, city, phone)
values (372, 'AU', 1111111181);
insert into HOSPITAL (id_hospital, city, phone)
values (373, 'ET', 1111111182);
insert into HOSPITAL (id_hospital, city, phone)
values (374, 'NZ', 1111111183);
insert into HOSPITAL (id_hospital, city, phone)
values (375, 'CN', 1111111184);
insert into HOSPITAL (id_hospital, city, phone)
values (376, 'MR', 1111111185);
insert into HOSPITAL (id_hospital, city, phone)
values (377, 'SE', 1111111186);
insert into HOSPITAL (id_hospital, city, phone)
values (378, 'CN', 1111111187);
insert into HOSPITAL (id_hospital, city, phone)
values (379, 'CN', 1111111188);
insert into HOSPITAL (id_hospital, city, phone)
values (380, 'US', 1111111189);
insert into HOSPITAL (id_hospital, city, phone)
values (381, 'IS', 1111111190);
insert into HOSPITAL (id_hospital, city, phone)
values (382, 'KE', 1111111191);
insert into HOSPITAL (id_hospital, city, phone)
values (383, 'AU', 1111111192);
insert into HOSPITAL (id_hospital, city, phone)
values (384, 'HR', 1111111193);
insert into HOSPITAL (id_hospital, city, phone)
values (385, 'PG', 1111111194);
insert into HOSPITAL (id_hospital, city, phone)
values (386, 'AR', 1111111195);
insert into HOSPITAL (id_hospital, city, phone)
values (387, 'ZM', 1111111196);
insert into HOSPITAL (id_hospital, city, phone)
values (388, 'US', 1111111197);
insert into HOSPITAL (id_hospital, city, phone)
values (389, 'BR', 1111111198);
insert into HOSPITAL (id_hospital, city, phone)
values (390, 'SE', 1111111199);
insert into HOSPITAL (id_hospital, city, phone)
values (391, 'US', 1111111200);
insert into HOSPITAL (id_hospital, city, phone)
values (392, 'MY', 1111111201);
insert into HOSPITAL (id_hospital, city, phone)
values (393, 'BR', 1111111202);
insert into HOSPITAL (id_hospital, city, phone)
values (394, 'DE', 1111111203);
insert into HOSPITAL (id_hospital, city, phone)
values (395, 'US', 1111111204);
insert into HOSPITAL (id_hospital, city, phone)
values (396, 'FI', 1111111205);
insert into HOSPITAL (id_hospital, city, phone)
values (397, 'MZ', 1111111206);
insert into HOSPITAL (id_hospital, city, phone)
values (398, 'US', 1111111207);
insert into HOSPITAL (id_hospital, city, phone)
values (399, 'AT', 1111111208);
insert into HOSPITAL (id_hospital, city, phone)
values (400, 'AU', 1111111209);
insert into HOSPITAL (id_hospital, city, phone)
values (401, 'MQ', 1111111210);
commit;
prompt 300 records committed...
insert into HOSPITAL (id_hospital, city, phone)
values (404, 'PG', 1111111111);
insert into HOSPITAL (id_hospital, city, phone)
values (405, 'UY', 1111111112);
insert into HOSPITAL (id_hospital, city, phone)
values (406, 'AU', 1111111113);
insert into HOSPITAL (id_hospital, city, phone)
values (407, 'US', 1111111114);
insert into HOSPITAL (id_hospital, city, phone)
values (408, 'US', 1111111115);
insert into HOSPITAL (id_hospital, city, phone)
values (409, 'US', 1111111116);
insert into HOSPITAL (id_hospital, city, phone)
values (410, 'US', 1111111117);
insert into HOSPITAL (id_hospital, city, phone)
values (411, 'SK', 1111111118);
insert into HOSPITAL (id_hospital, city, phone)
values (412, 'NA', 1111111119);
insert into HOSPITAL (id_hospital, city, phone)
values (413, 'US', 1111111120);
insert into HOSPITAL (id_hospital, city, phone)
values (414, 'FR', 1111111121);
insert into HOSPITAL (id_hospital, city, phone)
values (415, 'JP', 1111111122);
insert into HOSPITAL (id_hospital, city, phone)
values (416, 'US', 1111111123);
insert into HOSPITAL (id_hospital, city, phone)
values (417, 'RW', 1111111124);
insert into HOSPITAL (id_hospital, city, phone)
values (418, 'US', 1111111125);
insert into HOSPITAL (id_hospital, city, phone)
values (419, 'BR', 1111111126);
insert into HOSPITAL (id_hospital, city, phone)
values (420, 'US', 1111111127);
insert into HOSPITAL (id_hospital, city, phone)
values (421, 'MG', 1111111128);
insert into HOSPITAL (id_hospital, city, phone)
values (422, 'US', 1111111129);
insert into HOSPITAL (id_hospital, city, phone)
values (423, 'US', 1111111130);
insert into HOSPITAL (id_hospital, city, phone)
values (424, 'CA', 1111111131);
insert into HOSPITAL (id_hospital, city, phone)
values (425, 'IN', 1111111132);
insert into HOSPITAL (id_hospital, city, phone)
values (426, 'SE', 1111111133);
insert into HOSPITAL (id_hospital, city, phone)
values (427, 'CA', 1111111134);
insert into HOSPITAL (id_hospital, city, phone)
values (428, 'PH', 1111111135);
insert into HOSPITAL (id_hospital, city, phone)
values (429, 'EC', 1111111136);
insert into HOSPITAL (id_hospital, city, phone)
values (430, 'LA', 1111111137);
insert into HOSPITAL (id_hospital, city, phone)
values (431, 'US', 1111111138);
insert into HOSPITAL (id_hospital, city, phone)
values (432, 'US', 1111111139);
insert into HOSPITAL (id_hospital, city, phone)
values (433, 'IR', 1111111140);
insert into HOSPITAL (id_hospital, city, phone)
values (434, 'JM', 1111111141);
insert into HOSPITAL (id_hospital, city, phone)
values (435, 'VE', 1111111142);
insert into HOSPITAL (id_hospital, city, phone)
values (436, 'US', 1111111143);
insert into HOSPITAL (id_hospital, city, phone)
values (437, 'PG', 1111111144);
insert into HOSPITAL (id_hospital, city, phone)
values (438, 'NL', 1111111145);
insert into HOSPITAL (id_hospital, city, phone)
values (439, 'DE', 1111111146);
insert into HOSPITAL (id_hospital, city, phone)
values (440, 'US', 1111111147);
insert into HOSPITAL (id_hospital, city, phone)
values (441, 'US', 1111111148);
insert into HOSPITAL (id_hospital, city, phone)
values (442, 'ID', 1111111149);
insert into HOSPITAL (id_hospital, city, phone)
values (443, 'AU', 1111111150);
insert into HOSPITAL (id_hospital, city, phone)
values (444, 'SN', 1111111151);
insert into HOSPITAL (id_hospital, city, phone)
values (445, 'IT', 1111111152);
insert into HOSPITAL (id_hospital, city, phone)
values (446, 'US', 1111111153);
insert into HOSPITAL (id_hospital, city, phone)
values (447, 'NC', 1111111154);
insert into HOSPITAL (id_hospital, city, phone)
values (448, 'CA', 1111111155);
insert into HOSPITAL (id_hospital, city, phone)
values (449, 'SE', 1111111156);
insert into HOSPITAL (id_hospital, city, phone)
values (450, 'DK', 1111111157);
insert into HOSPITAL (id_hospital, city, phone)
values (451, 'GT', 1111111158);
insert into HOSPITAL (id_hospital, city, phone)
values (452, 'CG', 1111111159);
insert into HOSPITAL (id_hospital, city, phone)
values (453, 'CN', 1111111160);
insert into HOSPITAL (id_hospital, city, phone)
values (454, 'DE', 1111111161);
insert into HOSPITAL (id_hospital, city, phone)
values (455, 'US', 1111111162);
insert into HOSPITAL (id_hospital, city, phone)
values (456, 'CN', 1111111163);
insert into HOSPITAL (id_hospital, city, phone)
values (457, 'US', 1111111164);
insert into HOSPITAL (id_hospital, city, phone)
values (458, 'RU', 1111111165);
insert into HOSPITAL (id_hospital, city, phone)
values (459, 'CO', 1111111166);
insert into HOSPITAL (id_hospital, city, phone)
values (460, 'US', 1111111167);
insert into HOSPITAL (id_hospital, city, phone)
values (461, 'US', 1111111168);
insert into HOSPITAL (id_hospital, city, phone)
values (462, 'CA', 1111111169);
insert into HOSPITAL (id_hospital, city, phone)
values (463, 'US', 1111111170);
insert into HOSPITAL (id_hospital, city, phone)
values (464, 'ID', 1111111171);
insert into HOSPITAL (id_hospital, city, phone)
values (465, 'NZ', 1111111172);
insert into HOSPITAL (id_hospital, city, phone)
values (466, 'BR', 1111111173);
insert into HOSPITAL (id_hospital, city, phone)
values (467, 'CN', 1111111174);
insert into HOSPITAL (id_hospital, city, phone)
values (468, 'ET', 1111111175);
insert into HOSPITAL (id_hospital, city, phone)
values (469, 'PG', 1111111176);
insert into HOSPITAL (id_hospital, city, phone)
values (470, 'US', 1111111177);
insert into HOSPITAL (id_hospital, city, phone)
values (471, 'US', 1111111178);
insert into HOSPITAL (id_hospital, city, phone)
values (472, 'AU', 1111111179);
insert into HOSPITAL (id_hospital, city, phone)
values (473, 'AR', 1111111180);
insert into HOSPITAL (id_hospital, city, phone)
values (474, 'VE', 1111111181);
insert into HOSPITAL (id_hospital, city, phone)
values (475, 'MN', 1111111182);
insert into HOSPITAL (id_hospital, city, phone)
values (476, 'US', 1111111183);
insert into HOSPITAL (id_hospital, city, phone)
values (477, 'GB', 1111111184);
insert into HOSPITAL (id_hospital, city, phone)
values (478, 'AR', 1111111185);
insert into HOSPITAL (id_hospital, city, phone)
values (479, 'CL', 1111111186);
insert into HOSPITAL (id_hospital, city, phone)
values (480, 'US', 1111111187);
insert into HOSPITAL (id_hospital, city, phone)
values (481, 'US', 1111111188);
insert into HOSPITAL (id_hospital, city, phone)
values (482, 'US', 1111111189);
insert into HOSPITAL (id_hospital, city, phone)
values (483, 'US', 1111111190);
insert into HOSPITAL (id_hospital, city, phone)
values (484, 'CA', 1111111191);
insert into HOSPITAL (id_hospital, city, phone)
values (485, 'ET', 1111111192);
insert into HOSPITAL (id_hospital, city, phone)
values (486, 'US', 1111111193);
insert into HOSPITAL (id_hospital, city, phone)
values (487, 'NZ', 1111111194);
insert into HOSPITAL (id_hospital, city, phone)
values (488, 'US', 1111111195);
insert into HOSPITAL (id_hospital, city, phone)
values (489, 'US', 1111111196);
insert into HOSPITAL (id_hospital, city, phone)
values (490, 'US', 1111111197);
insert into HOSPITAL (id_hospital, city, phone)
values (491, 'US', 1111111198);
insert into HOSPITAL (id_hospital, city, phone)
values (492, 'KY', 1111111199);
insert into HOSPITAL (id_hospital, city, phone)
values (493, 'FR', 1111111200);
insert into HOSPITAL (id_hospital, city, phone)
values (494, 'US', 1111111201);
insert into HOSPITAL (id_hospital, city, phone)
values (495, 'CN', 1111111202);
insert into HOSPITAL (id_hospital, city, phone)
values (496, 'TH', 1111111203);
insert into HOSPITAL (id_hospital, city, phone)
values (497, 'CU', 1111111204);
insert into HOSPITAL (id_hospital, city, phone)
values (498, 'LK', 1111111205);
insert into HOSPITAL (id_hospital, city, phone)
values (499, 'NO', 1111111206);
insert into HOSPITAL (id_hospital, city, phone)
values (500, 'AU', 1111111207);
insert into HOSPITAL (id_hospital, city, phone)
values (501, 'ET', 1111111208);
insert into HOSPITAL (id_hospital, city, phone)
values (502, 'FR', 1111111209);
insert into HOSPITAL (id_hospital, city, phone)
values (503, 'PF', 1111111210);
commit;
prompt 400 records loaded
prompt Loading TEAM...
insert into TEAM (id_team, amount, name_of_team)
values (100, 3, 'Oyoloo');
insert into TEAM (id_team, amount, name_of_team)
values (101, 2, 'Jazzy');
insert into TEAM (id_team, amount, name_of_team)
values (102, 8, 'Brainbox');
insert into TEAM (id_team, amount, name_of_team)
values (103, 10, 'Skyba');
insert into TEAM (id_team, amount, name_of_team)
values (104, 9, 'Photolist');
insert into TEAM (id_team, amount, name_of_team)
values (105, 7, 'Skipstorm');
insert into TEAM (id_team, amount, name_of_team)
values (106, 5, 'Oyoba');
insert into TEAM (id_team, amount, name_of_team)
values (107, 2, 'Realmix');
insert into TEAM (id_team, amount, name_of_team)
values (108, 6, 'Voonyx');
insert into TEAM (id_team, amount, name_of_team)
values (109, 6, 'Brainsphere');
insert into TEAM (id_team, amount, name_of_team)
values (110, 8, 'Realcube');
insert into TEAM (id_team, amount, name_of_team)
values (111, 10, 'Meembee');
insert into TEAM (id_team, amount, name_of_team)
values (112, 6, 'Thoughtbridge');
insert into TEAM (id_team, amount, name_of_team)
values (113, 10, 'Zoonoodle');
insert into TEAM (id_team, amount, name_of_team)
values (114, 4, 'Oodoo');
insert into TEAM (id_team, amount, name_of_team)
values (115, 4, 'Twitterlist');
insert into TEAM (id_team, amount, name_of_team)
values (116, 3, 'Oyoba');
insert into TEAM (id_team, amount, name_of_team)
values (117, 8, 'Chatterbridge');
insert into TEAM (id_team, amount, name_of_team)
values (118, 3, 'Skinix');
insert into TEAM (id_team, amount, name_of_team)
values (119, 6, 'Kaymbo');
insert into TEAM (id_team, amount, name_of_team)
values (120, 10, 'Jaxworks');
insert into TEAM (id_team, amount, name_of_team)
values (121, 2, 'Oba');
insert into TEAM (id_team, amount, name_of_team)
values (122, 9, 'Twitterbeat');
insert into TEAM (id_team, amount, name_of_team)
values (123, 10, 'Skivee');
insert into TEAM (id_team, amount, name_of_team)
values (124, 4, 'Yodo');
insert into TEAM (id_team, amount, name_of_team)
values (125, 4, 'Meevee');
insert into TEAM (id_team, amount, name_of_team)
values (126, 8, 'Twimbo');
insert into TEAM (id_team, amount, name_of_team)
values (127, 10, 'Blogspan');
insert into TEAM (id_team, amount, name_of_team)
values (128, 5, 'Flipopia');
insert into TEAM (id_team, amount, name_of_team)
values (129, 2, 'Thoughtbeat');
insert into TEAM (id_team, amount, name_of_team)
values (130, 4, 'Realpoint');
insert into TEAM (id_team, amount, name_of_team)
values (131, 5, 'Gigashots');
insert into TEAM (id_team, amount, name_of_team)
values (132, 8, 'Fivespan');
insert into TEAM (id_team, amount, name_of_team)
values (133, 2, 'Digitube');
insert into TEAM (id_team, amount, name_of_team)
values (134, 5, 'Lajo');
insert into TEAM (id_team, amount, name_of_team)
values (135, 2, 'Abata');
insert into TEAM (id_team, amount, name_of_team)
values (136, 10, 'Photofeed');
insert into TEAM (id_team, amount, name_of_team)
values (137, 5, 'Gigaclub');
insert into TEAM (id_team, amount, name_of_team)
values (138, 8, 'Jaxbean');
insert into TEAM (id_team, amount, name_of_team)
values (139, 2, 'Ntags');
insert into TEAM (id_team, amount, name_of_team)
values (140, 7, 'Zoonoodle');
insert into TEAM (id_team, amount, name_of_team)
values (141, 5, 'Browseblab');
insert into TEAM (id_team, amount, name_of_team)
values (142, 8, 'Quatz');
insert into TEAM (id_team, amount, name_of_team)
values (143, 10, 'Eazzy');
insert into TEAM (id_team, amount, name_of_team)
values (144, 8, 'Meedoo');
insert into TEAM (id_team, amount, name_of_team)
values (145, 3, 'Zoozzy');
insert into TEAM (id_team, amount, name_of_team)
values (146, 5, 'Tagcat');
insert into TEAM (id_team, amount, name_of_team)
values (147, 8, 'Tanoodle');
insert into TEAM (id_team, amount, name_of_team)
values (148, 3, 'Youfeed');
insert into TEAM (id_team, amount, name_of_team)
values (149, 2, 'Mita');
insert into TEAM (id_team, amount, name_of_team)
values (150, 10, 'Realbridge');
insert into TEAM (id_team, amount, name_of_team)
values (151, 8, 'Teklist');
insert into TEAM (id_team, amount, name_of_team)
values (152, 5, 'Skivee');
insert into TEAM (id_team, amount, name_of_team)
values (153, 4, 'Demivee');
insert into TEAM (id_team, amount, name_of_team)
values (154, 2, 'Zooxo');
insert into TEAM (id_team, amount, name_of_team)
values (155, 2, 'Buzzbean');
insert into TEAM (id_team, amount, name_of_team)
values (156, 2, 'Zoomcast');
insert into TEAM (id_team, amount, name_of_team)
values (157, 7, 'Twitterwire');
insert into TEAM (id_team, amount, name_of_team)
values (158, 8, 'Yotz');
insert into TEAM (id_team, amount, name_of_team)
values (159, 7, 'Fiveclub');
insert into TEAM (id_team, amount, name_of_team)
values (160, 4, 'Ntag');
insert into TEAM (id_team, amount, name_of_team)
values (161, 5, 'Shuffletag');
insert into TEAM (id_team, amount, name_of_team)
values (162, 10, 'Edgeblab');
insert into TEAM (id_team, amount, name_of_team)
values (163, 6, 'Fliptune');
insert into TEAM (id_team, amount, name_of_team)
values (164, 7, 'Dynava');
insert into TEAM (id_team, amount, name_of_team)
values (165, 4, 'Thoughtbridge');
insert into TEAM (id_team, amount, name_of_team)
values (166, 6, 'Kwideo');
insert into TEAM (id_team, amount, name_of_team)
values (167, 9, 'Topiclounge');
insert into TEAM (id_team, amount, name_of_team)
values (168, 2, 'Realpoint');
insert into TEAM (id_team, amount, name_of_team)
values (169, 10, 'Eayo');
insert into TEAM (id_team, amount, name_of_team)
values (170, 9, 'Zoonoodle');
insert into TEAM (id_team, amount, name_of_team)
values (171, 10, 'Thoughtblab');
insert into TEAM (id_team, amount, name_of_team)
values (172, 4, 'Yodel');
insert into TEAM (id_team, amount, name_of_team)
values (173, 9, 'Devcast');
insert into TEAM (id_team, amount, name_of_team)
values (174, 9, 'Shuffletag');
insert into TEAM (id_team, amount, name_of_team)
values (175, 3, 'Livefish');
insert into TEAM (id_team, amount, name_of_team)
values (176, 9, 'Shuffledrive');
insert into TEAM (id_team, amount, name_of_team)
values (177, 2, 'Bubbletube');
insert into TEAM (id_team, amount, name_of_team)
values (178, 7, 'Aibox');
insert into TEAM (id_team, amount, name_of_team)
values (179, 7, 'Aibox');
insert into TEAM (id_team, amount, name_of_team)
values (180, 10, 'Jetpulse');
insert into TEAM (id_team, amount, name_of_team)
values (181, 6, 'Jabberstorm');
insert into TEAM (id_team, amount, name_of_team)
values (182, 5, 'Eabox');
insert into TEAM (id_team, amount, name_of_team)
values (183, 7, 'Gigaclub');
insert into TEAM (id_team, amount, name_of_team)
values (184, 6, 'Realfire');
insert into TEAM (id_team, amount, name_of_team)
values (185, 4, 'Twimbo');
insert into TEAM (id_team, amount, name_of_team)
values (186, 6, 'Blogspan');
insert into TEAM (id_team, amount, name_of_team)
values (187, 9, 'Youopia');
insert into TEAM (id_team, amount, name_of_team)
values (188, 2, 'Zoomzone');
insert into TEAM (id_team, amount, name_of_team)
values (189, 10, 'Gigaclub');
insert into TEAM (id_team, amount, name_of_team)
values (190, 5, 'Yoveo');
insert into TEAM (id_team, amount, name_of_team)
values (191, 10, 'Yata');
insert into TEAM (id_team, amount, name_of_team)
values (192, 3, 'Ailane');
insert into TEAM (id_team, amount, name_of_team)
values (193, 5, 'Yombu');
insert into TEAM (id_team, amount, name_of_team)
values (194, 8, 'Midel');
insert into TEAM (id_team, amount, name_of_team)
values (195, 2, 'Jaxbean');
insert into TEAM (id_team, amount, name_of_team)
values (196, 9, 'Realfire');
insert into TEAM (id_team, amount, name_of_team)
values (197, 6, 'Riffpedia');
insert into TEAM (id_team, amount, name_of_team)
values (198, 3, 'Yadel');
insert into TEAM (id_team, amount, name_of_team)
values (199, 3, 'Eidel');
commit;
prompt 100 records committed...
insert into TEAM (id_team, amount, name_of_team)
values (200, 6, 'Kazu');
insert into TEAM (id_team, amount, name_of_team)
values (201, 8, 'Jaloo');
insert into TEAM (id_team, amount, name_of_team)
values (202, 8, 'Meejo');
insert into TEAM (id_team, amount, name_of_team)
values (203, 10, 'Livefish');
insert into TEAM (id_team, amount, name_of_team)
values (204, 5, 'Avaveo');
insert into TEAM (id_team, amount, name_of_team)
values (205, 4, 'Camimbo');
insert into TEAM (id_team, amount, name_of_team)
values (206, 2, 'Meetz');
insert into TEAM (id_team, amount, name_of_team)
values (207, 4, 'Jaxworks');
insert into TEAM (id_team, amount, name_of_team)
values (208, 4, 'Yoveo');
insert into TEAM (id_team, amount, name_of_team)
values (209, 8, 'Chatterpoint');
insert into TEAM (id_team, amount, name_of_team)
values (210, 8, 'Zoonoodle');
insert into TEAM (id_team, amount, name_of_team)
values (211, 8, 'Fivespan');
insert into TEAM (id_team, amount, name_of_team)
values (212, 6, 'Youfeed');
insert into TEAM (id_team, amount, name_of_team)
values (213, 5, 'Lazz');
insert into TEAM (id_team, amount, name_of_team)
values (214, 5, 'Kazu');
insert into TEAM (id_team, amount, name_of_team)
values (215, 10, 'Topiclounge');
insert into TEAM (id_team, amount, name_of_team)
values (216, 3, 'Einti');
insert into TEAM (id_team, amount, name_of_team)
values (217, 9, 'Blogpad');
insert into TEAM (id_team, amount, name_of_team)
values (218, 8, 'Latz');
insert into TEAM (id_team, amount, name_of_team)
values (219, 4, 'Yakitri');
insert into TEAM (id_team, amount, name_of_team)
values (220, 5, 'Trunyx');
insert into TEAM (id_team, amount, name_of_team)
values (221, 10, 'Yodel');
insert into TEAM (id_team, amount, name_of_team)
values (222, 5, 'Skimia');
insert into TEAM (id_team, amount, name_of_team)
values (223, 7, 'Ailane');
insert into TEAM (id_team, amount, name_of_team)
values (224, 3, 'Zooxo');
insert into TEAM (id_team, amount, name_of_team)
values (225, 8, 'BlogXS');
insert into TEAM (id_team, amount, name_of_team)
values (226, 10, 'Thoughtsphere');
insert into TEAM (id_team, amount, name_of_team)
values (227, 4, 'Feedbug');
insert into TEAM (id_team, amount, name_of_team)
values (228, 8, 'Centimia');
insert into TEAM (id_team, amount, name_of_team)
values (229, 8, 'Skaboo');
insert into TEAM (id_team, amount, name_of_team)
values (230, 3, 'Buzzbean');
insert into TEAM (id_team, amount, name_of_team)
values (231, 5, 'Youspan');
insert into TEAM (id_team, amount, name_of_team)
values (232, 6, 'Zooxo');
insert into TEAM (id_team, amount, name_of_team)
values (233, 6, 'Babbleset');
insert into TEAM (id_team, amount, name_of_team)
values (234, 2, 'Voolith');
insert into TEAM (id_team, amount, name_of_team)
values (235, 5, 'Babblestorm');
insert into TEAM (id_team, amount, name_of_team)
values (236, 3, 'Eidel');
insert into TEAM (id_team, amount, name_of_team)
values (237, 10, 'Browsetype');
insert into TEAM (id_team, amount, name_of_team)
values (238, 2, 'Jaxworks');
insert into TEAM (id_team, amount, name_of_team)
values (239, 8, 'Zazio');
insert into TEAM (id_team, amount, name_of_team)
values (240, 7, 'Skyba');
insert into TEAM (id_team, amount, name_of_team)
values (241, 2, 'Dabvine');
insert into TEAM (id_team, amount, name_of_team)
values (242, 9, 'Edgeify');
insert into TEAM (id_team, amount, name_of_team)
values (243, 6, 'Photospace');
insert into TEAM (id_team, amount, name_of_team)
values (244, 6, 'Jaxspan');
insert into TEAM (id_team, amount, name_of_team)
values (245, 3, 'Kayveo');
insert into TEAM (id_team, amount, name_of_team)
values (246, 5, 'Jabberbean');
insert into TEAM (id_team, amount, name_of_team)
values (247, 10, 'Bluezoom');
insert into TEAM (id_team, amount, name_of_team)
values (248, 5, 'Babbleblab');
insert into TEAM (id_team, amount, name_of_team)
values (249, 7, 'Kayveo');
insert into TEAM (id_team, amount, name_of_team)
values (250, 3, 'Innotype');
insert into TEAM (id_team, amount, name_of_team)
values (251, 3, 'Katz');
insert into TEAM (id_team, amount, name_of_team)
values (252, 10, 'Photobug');
insert into TEAM (id_team, amount, name_of_team)
values (253, 7, 'Rhycero');
insert into TEAM (id_team, amount, name_of_team)
values (254, 9, 'Eare');
insert into TEAM (id_team, amount, name_of_team)
values (255, 9, 'Skinix');
insert into TEAM (id_team, amount, name_of_team)
values (256, 5, 'Mydeo');
insert into TEAM (id_team, amount, name_of_team)
values (257, 6, 'Rhynoodle');
insert into TEAM (id_team, amount, name_of_team)
values (258, 6, 'Thoughtsphere');
insert into TEAM (id_team, amount, name_of_team)
values (259, 2, 'Meejo');
insert into TEAM (id_team, amount, name_of_team)
values (260, 6, 'Skyndu');
insert into TEAM (id_team, amount, name_of_team)
values (261, 5, 'Ntags');
insert into TEAM (id_team, amount, name_of_team)
values (262, 4, 'Yombu');
insert into TEAM (id_team, amount, name_of_team)
values (263, 4, 'Lazz');
insert into TEAM (id_team, amount, name_of_team)
values (264, 4, 'Gabtype');
insert into TEAM (id_team, amount, name_of_team)
values (265, 5, 'Kwideo');
insert into TEAM (id_team, amount, name_of_team)
values (266, 2, 'Tavu');
insert into TEAM (id_team, amount, name_of_team)
values (267, 5, 'Nlounge');
insert into TEAM (id_team, amount, name_of_team)
values (268, 5, 'Blogpad');
insert into TEAM (id_team, amount, name_of_team)
values (269, 8, 'Zoozzy');
insert into TEAM (id_team, amount, name_of_team)
values (270, 6, 'Tagpad');
insert into TEAM (id_team, amount, name_of_team)
values (271, 8, 'Dynabox');
insert into TEAM (id_team, amount, name_of_team)
values (272, 6, 'Demizz');
insert into TEAM (id_team, amount, name_of_team)
values (273, 3, 'Voomm');
insert into TEAM (id_team, amount, name_of_team)
values (274, 8, 'Skyba');
insert into TEAM (id_team, amount, name_of_team)
values (275, 5, 'Youspan');
insert into TEAM (id_team, amount, name_of_team)
values (276, 7, 'Realcube');
insert into TEAM (id_team, amount, name_of_team)
values (277, 5, 'Buzzster');
insert into TEAM (id_team, amount, name_of_team)
values (278, 7, 'Jetpulse');
insert into TEAM (id_team, amount, name_of_team)
values (279, 6, 'Meezzy');
insert into TEAM (id_team, amount, name_of_team)
values (280, 3, 'Voonder');
insert into TEAM (id_team, amount, name_of_team)
values (281, 8, 'Twinder');
insert into TEAM (id_team, amount, name_of_team)
values (282, 3, 'Avamm');
insert into TEAM (id_team, amount, name_of_team)
values (283, 2, 'Yambee');
insert into TEAM (id_team, amount, name_of_team)
values (284, 10, 'Dabvine');
insert into TEAM (id_team, amount, name_of_team)
values (285, 6, 'Eamia');
insert into TEAM (id_team, amount, name_of_team)
values (286, 10, 'Mycat');
insert into TEAM (id_team, amount, name_of_team)
values (287, 6, 'Izio');
insert into TEAM (id_team, amount, name_of_team)
values (288, 7, 'Eare');
insert into TEAM (id_team, amount, name_of_team)
values (289, 9, 'Quinu');
insert into TEAM (id_team, amount, name_of_team)
values (290, 2, 'Skiba');
insert into TEAM (id_team, amount, name_of_team)
values (291, 4, 'Oloo');
insert into TEAM (id_team, amount, name_of_team)
values (292, 10, 'Flashpoint');
insert into TEAM (id_team, amount, name_of_team)
values (293, 9, 'Topicstorm');
insert into TEAM (id_team, amount, name_of_team)
values (294, 3, 'Gabtune');
insert into TEAM (id_team, amount, name_of_team)
values (295, 7, 'Aivee');
insert into TEAM (id_team, amount, name_of_team)
values (296, 6, 'Plajo');
insert into TEAM (id_team, amount, name_of_team)
values (297, 9, 'Trudoo');
insert into TEAM (id_team, amount, name_of_team)
values (298, 3, 'Bubbletube');
insert into TEAM (id_team, amount, name_of_team)
values (299, 5, 'Yotz');
commit;
prompt 200 records committed...
insert into TEAM (id_team, amount, name_of_team)
values (300, 5, 'Rhyloo');
insert into TEAM (id_team, amount, name_of_team)
values (301, 8, 'Avamm');
insert into TEAM (id_team, amount, name_of_team)
values (302, 9, 'Dynabox');
insert into TEAM (id_team, amount, name_of_team)
values (303, 8, 'Voomm');
insert into TEAM (id_team, amount, name_of_team)
values (304, 2, 'Skyvu');
insert into TEAM (id_team, amount, name_of_team)
values (305, 6, 'Mydo');
insert into TEAM (id_team, amount, name_of_team)
values (306, 8, 'Yadel');
insert into TEAM (id_team, amount, name_of_team)
values (307, 3, 'Abata');
insert into TEAM (id_team, amount, name_of_team)
values (308, 10, 'Eabox');
insert into TEAM (id_team, amount, name_of_team)
values (309, 8, 'Tambee');
insert into TEAM (id_team, amount, name_of_team)
values (310, 8, 'Skajo');
insert into TEAM (id_team, amount, name_of_team)
values (311, 2, 'Bubblemix');
insert into TEAM (id_team, amount, name_of_team)
values (312, 4, 'Jazzy');
insert into TEAM (id_team, amount, name_of_team)
values (313, 10, 'Oodoo');
insert into TEAM (id_team, amount, name_of_team)
values (314, 3, 'Zooveo');
insert into TEAM (id_team, amount, name_of_team)
values (315, 5, 'Kaymbo');
insert into TEAM (id_team, amount, name_of_team)
values (316, 10, 'Oozz');
insert into TEAM (id_team, amount, name_of_team)
values (317, 10, 'Centidel');
insert into TEAM (id_team, amount, name_of_team)
values (318, 8, 'Youopia');
insert into TEAM (id_team, amount, name_of_team)
values (319, 9, 'Meembee');
insert into TEAM (id_team, amount, name_of_team)
values (320, 4, 'Kwilith');
insert into TEAM (id_team, amount, name_of_team)
values (321, 6, 'Oodoo');
insert into TEAM (id_team, amount, name_of_team)
values (322, 3, 'Jayo');
insert into TEAM (id_team, amount, name_of_team)
values (323, 2, 'Kaymbo');
insert into TEAM (id_team, amount, name_of_team)
values (324, 9, 'Edgeify');
insert into TEAM (id_team, amount, name_of_team)
values (325, 4, 'Mydo');
insert into TEAM (id_team, amount, name_of_team)
values (326, 6, 'Wikibox');
insert into TEAM (id_team, amount, name_of_team)
values (327, 10, 'Flipopia');
insert into TEAM (id_team, amount, name_of_team)
values (328, 4, 'Livefish');
insert into TEAM (id_team, amount, name_of_team)
values (329, 7, 'Twitternation');
insert into TEAM (id_team, amount, name_of_team)
values (330, 9, 'Oyondu');
insert into TEAM (id_team, amount, name_of_team)
values (331, 3, 'Roombo');
insert into TEAM (id_team, amount, name_of_team)
values (332, 2, 'Jayo');
insert into TEAM (id_team, amount, name_of_team)
values (333, 7, 'Layo');
insert into TEAM (id_team, amount, name_of_team)
values (334, 6, 'Yodo');
insert into TEAM (id_team, amount, name_of_team)
values (335, 9, 'Edgeify');
insert into TEAM (id_team, amount, name_of_team)
values (336, 5, 'Yabox');
insert into TEAM (id_team, amount, name_of_team)
values (337, 3, 'Kamba');
insert into TEAM (id_team, amount, name_of_team)
values (338, 2, 'Agimba');
insert into TEAM (id_team, amount, name_of_team)
values (339, 7, 'Skipfire');
insert into TEAM (id_team, amount, name_of_team)
values (340, 10, 'Mydeo');
insert into TEAM (id_team, amount, name_of_team)
values (341, 9, 'Yakijo');
insert into TEAM (id_team, amount, name_of_team)
values (342, 2, 'Nlounge');
insert into TEAM (id_team, amount, name_of_team)
values (343, 10, 'Wikizz');
insert into TEAM (id_team, amount, name_of_team)
values (344, 2, 'Geba');
insert into TEAM (id_team, amount, name_of_team)
values (345, 9, 'Flipbug');
insert into TEAM (id_team, amount, name_of_team)
values (346, 6, 'Shufflebeat');
insert into TEAM (id_team, amount, name_of_team)
values (347, 5, 'Trupe');
insert into TEAM (id_team, amount, name_of_team)
values (348, 8, 'Jetwire');
insert into TEAM (id_team, amount, name_of_team)
values (349, 10, 'Blogpad');
insert into TEAM (id_team, amount, name_of_team)
values (350, 8, 'Quaxo');
insert into TEAM (id_team, amount, name_of_team)
values (351, 5, 'Twimbo');
insert into TEAM (id_team, amount, name_of_team)
values (352, 4, 'Youtags');
insert into TEAM (id_team, amount, name_of_team)
values (353, 6, 'Dabjam');
insert into TEAM (id_team, amount, name_of_team)
values (354, 6, 'Oozz');
insert into TEAM (id_team, amount, name_of_team)
values (355, 8, 'Realmix');
insert into TEAM (id_team, amount, name_of_team)
values (356, 5, 'Aibox');
insert into TEAM (id_team, amount, name_of_team)
values (357, 10, 'Bubblebox');
insert into TEAM (id_team, amount, name_of_team)
values (358, 3, 'Thoughtworks');
insert into TEAM (id_team, amount, name_of_team)
values (359, 9, 'Izio');
insert into TEAM (id_team, amount, name_of_team)
values (360, 5, 'Oyope');
insert into TEAM (id_team, amount, name_of_team)
values (361, 4, 'Jamia');
insert into TEAM (id_team, amount, name_of_team)
values (362, 2, 'Mudo');
insert into TEAM (id_team, amount, name_of_team)
values (363, 10, 'Blogtags');
insert into TEAM (id_team, amount, name_of_team)
values (364, 10, 'Brightbean');
insert into TEAM (id_team, amount, name_of_team)
values (365, 3, 'Trudoo');
insert into TEAM (id_team, amount, name_of_team)
values (366, 2, 'Realbridge');
insert into TEAM (id_team, amount, name_of_team)
values (367, 4, 'Midel');
insert into TEAM (id_team, amount, name_of_team)
values (368, 7, 'Mydo');
insert into TEAM (id_team, amount, name_of_team)
values (369, 8, 'Roomm');
insert into TEAM (id_team, amount, name_of_team)
values (370, 2, 'Pixope');
insert into TEAM (id_team, amount, name_of_team)
values (371, 8, 'Jayo');
insert into TEAM (id_team, amount, name_of_team)
values (372, 8, 'Dabshots');
insert into TEAM (id_team, amount, name_of_team)
values (373, 5, 'Fatz');
insert into TEAM (id_team, amount, name_of_team)
values (374, 2, 'Babbleopia');
insert into TEAM (id_team, amount, name_of_team)
values (375, 7, 'Thoughtstorm');
insert into TEAM (id_team, amount, name_of_team)
values (376, 9, 'Jaxspan');
insert into TEAM (id_team, amount, name_of_team)
values (377, 6, 'Voomm');
insert into TEAM (id_team, amount, name_of_team)
values (378, 10, 'Jayo');
insert into TEAM (id_team, amount, name_of_team)
values (379, 9, 'Shuffletag');
insert into TEAM (id_team, amount, name_of_team)
values (380, 10, 'Ooba');
insert into TEAM (id_team, amount, name_of_team)
values (381, 10, 'Youopia');
insert into TEAM (id_team, amount, name_of_team)
values (382, 5, 'Trupe');
insert into TEAM (id_team, amount, name_of_team)
values (383, 2, 'Brightdog');
insert into TEAM (id_team, amount, name_of_team)
values (384, 4, 'Oyoyo');
insert into TEAM (id_team, amount, name_of_team)
values (385, 7, 'Blogspan');
insert into TEAM (id_team, amount, name_of_team)
values (386, 5, 'Realbuzz');
insert into TEAM (id_team, amount, name_of_team)
values (387, 5, 'Wikizz');
insert into TEAM (id_team, amount, name_of_team)
values (388, 8, 'Divavu');
insert into TEAM (id_team, amount, name_of_team)
values (389, 5, 'Gevee');
insert into TEAM (id_team, amount, name_of_team)
values (390, 2, 'Browsetype');
insert into TEAM (id_team, amount, name_of_team)
values (391, 9, 'Tanoodle');
insert into TEAM (id_team, amount, name_of_team)
values (392, 7, 'Skaboo');
insert into TEAM (id_team, amount, name_of_team)
values (393, 8, 'Edgeify');
insert into TEAM (id_team, amount, name_of_team)
values (394, 4, 'Quinu');
insert into TEAM (id_team, amount, name_of_team)
values (395, 5, 'Mita');
insert into TEAM (id_team, amount, name_of_team)
values (396, 7, 'Mymm');
insert into TEAM (id_team, amount, name_of_team)
values (397, 2, 'Kazio');
insert into TEAM (id_team, amount, name_of_team)
values (398, 4, 'Zazio');
insert into TEAM (id_team, amount, name_of_team)
values (399, 7, 'Thoughtbridge');
commit;
prompt 300 records committed...
insert into TEAM (id_team, amount, name_of_team)
values (400, 8, 'Gabvine');
insert into TEAM (id_team, amount, name_of_team)
values (401, 9, 'Rooxo');
insert into TEAM (id_team, amount, name_of_team)
values (402, 3, 'Gabspot');
insert into TEAM (id_team, amount, name_of_team)
values (403, 4, 'Eare');
insert into TEAM (id_team, amount, name_of_team)
values (404, 2, 'Jaxnation');
insert into TEAM (id_team, amount, name_of_team)
values (405, 9, 'Agimba');
insert into TEAM (id_team, amount, name_of_team)
values (406, 4, 'JumpXS');
insert into TEAM (id_team, amount, name_of_team)
values (407, 4, 'Jamia');
insert into TEAM (id_team, amount, name_of_team)
values (408, 7, 'Jabbercube');
insert into TEAM (id_team, amount, name_of_team)
values (409, 7, 'Jaxspan');
insert into TEAM (id_team, amount, name_of_team)
values (410, 5, 'Babblestorm');
insert into TEAM (id_team, amount, name_of_team)
values (411, 8, 'Einti');
insert into TEAM (id_team, amount, name_of_team)
values (412, 2, 'Kwideo');
insert into TEAM (id_team, amount, name_of_team)
values (413, 10, 'BlogXS');
insert into TEAM (id_team, amount, name_of_team)
values (414, 8, 'Voolith');
insert into TEAM (id_team, amount, name_of_team)
values (415, 5, 'Kamba');
insert into TEAM (id_team, amount, name_of_team)
values (416, 3, 'Avamba');
insert into TEAM (id_team, amount, name_of_team)
values (417, 6, 'Midel');
insert into TEAM (id_team, amount, name_of_team)
values (418, 5, 'Thoughtstorm');
insert into TEAM (id_team, amount, name_of_team)
values (419, 5, 'Wordpedia');
insert into TEAM (id_team, amount, name_of_team)
values (420, 4, 'Rooxo');
insert into TEAM (id_team, amount, name_of_team)
values (421, 2, 'Tagcat');
insert into TEAM (id_team, amount, name_of_team)
values (422, 5, 'Centidel');
insert into TEAM (id_team, amount, name_of_team)
values (423, 6, 'Voolia');
insert into TEAM (id_team, amount, name_of_team)
values (424, 6, 'Bluejam');
insert into TEAM (id_team, amount, name_of_team)
values (425, 8, 'Jabbercube');
insert into TEAM (id_team, amount, name_of_team)
values (426, 10, 'Latz');
insert into TEAM (id_team, amount, name_of_team)
values (427, 8, 'Skiba');
insert into TEAM (id_team, amount, name_of_team)
values (428, 2, 'Snaptags');
insert into TEAM (id_team, amount, name_of_team)
values (429, 6, 'Realpoint');
insert into TEAM (id_team, amount, name_of_team)
values (430, 10, 'Photojam');
insert into TEAM (id_team, amount, name_of_team)
values (431, 8, 'Jabberbean');
insert into TEAM (id_team, amount, name_of_team)
values (432, 6, 'Reallinks');
insert into TEAM (id_team, amount, name_of_team)
values (433, 4, 'Ooba');
insert into TEAM (id_team, amount, name_of_team)
values (434, 2, 'Dablist');
insert into TEAM (id_team, amount, name_of_team)
values (435, 4, 'Voonyx');
insert into TEAM (id_team, amount, name_of_team)
values (436, 3, 'Talane');
insert into TEAM (id_team, amount, name_of_team)
values (437, 3, 'Skippad');
insert into TEAM (id_team, amount, name_of_team)
values (438, 8, 'Oozz');
insert into TEAM (id_team, amount, name_of_team)
values (439, 8, 'Skippad');
insert into TEAM (id_team, amount, name_of_team)
values (440, 9, 'Babbleset');
insert into TEAM (id_team, amount, name_of_team)
values (441, 8, 'Ntags');
insert into TEAM (id_team, amount, name_of_team)
values (442, 10, 'Topdrive');
insert into TEAM (id_team, amount, name_of_team)
values (443, 9, 'Flipbug');
insert into TEAM (id_team, amount, name_of_team)
values (444, 8, 'Kwimbee');
insert into TEAM (id_team, amount, name_of_team)
values (445, 8, 'Geba');
insert into TEAM (id_team, amount, name_of_team)
values (446, 9, 'Topicstorm');
insert into TEAM (id_team, amount, name_of_team)
values (447, 8, 'Kwimbee');
insert into TEAM (id_team, amount, name_of_team)
values (448, 7, 'Thoughtblab');
insert into TEAM (id_team, amount, name_of_team)
values (449, 3, 'Ntags');
insert into TEAM (id_team, amount, name_of_team)
values (450, 7, 'Centidel');
insert into TEAM (id_team, amount, name_of_team)
values (451, 7, 'Ozu');
insert into TEAM (id_team, amount, name_of_team)
values (452, 4, 'Zazio');
insert into TEAM (id_team, amount, name_of_team)
values (453, 5, 'Leenti');
insert into TEAM (id_team, amount, name_of_team)
values (454, 10, 'Realblab');
insert into TEAM (id_team, amount, name_of_team)
values (455, 7, 'Jaloo');
insert into TEAM (id_team, amount, name_of_team)
values (456, 2, 'Dabvine');
insert into TEAM (id_team, amount, name_of_team)
values (457, 3, 'Skidoo');
insert into TEAM (id_team, amount, name_of_team)
values (458, 10, 'Kwimbee');
insert into TEAM (id_team, amount, name_of_team)
values (459, 6, 'Ntag');
insert into TEAM (id_team, amount, name_of_team)
values (460, 6, 'Yodoo');
insert into TEAM (id_team, amount, name_of_team)
values (461, 10, 'Mynte');
insert into TEAM (id_team, amount, name_of_team)
values (462, 3, 'Thoughtworks');
insert into TEAM (id_team, amount, name_of_team)
values (463, 2, 'Zoonoodle');
insert into TEAM (id_team, amount, name_of_team)
values (464, 10, 'Meejo');
insert into TEAM (id_team, amount, name_of_team)
values (465, 7, 'Jabberstorm');
insert into TEAM (id_team, amount, name_of_team)
values (466, 5, 'DabZ');
insert into TEAM (id_team, amount, name_of_team)
values (467, 5, 'Fiveclub');
insert into TEAM (id_team, amount, name_of_team)
values (468, 8, 'Zoozzy');
insert into TEAM (id_team, amount, name_of_team)
values (469, 5, 'Centimia');
insert into TEAM (id_team, amount, name_of_team)
values (470, 7, 'Tagchat');
insert into TEAM (id_team, amount, name_of_team)
values (471, 5, 'Bubblemix');
insert into TEAM (id_team, amount, name_of_team)
values (472, 10, 'Meevee');
insert into TEAM (id_team, amount, name_of_team)
values (473, 5, 'Quinu');
insert into TEAM (id_team, amount, name_of_team)
values (474, 7, 'Browsedrive');
insert into TEAM (id_team, amount, name_of_team)
values (475, 9, 'Riffwire');
insert into TEAM (id_team, amount, name_of_team)
values (476, 10, 'Oba');
insert into TEAM (id_team, amount, name_of_team)
values (477, 10, 'Voolia');
insert into TEAM (id_team, amount, name_of_team)
values (478, 5, 'Voonte');
insert into TEAM (id_team, amount, name_of_team)
values (479, 3, 'Layo');
insert into TEAM (id_team, amount, name_of_team)
values (480, 7, 'Jayo');
insert into TEAM (id_team, amount, name_of_team)
values (481, 10, 'Blogtag');
insert into TEAM (id_team, amount, name_of_team)
values (482, 10, 'Oyope');
insert into TEAM (id_team, amount, name_of_team)
values (483, 4, 'Omba');
insert into TEAM (id_team, amount, name_of_team)
values (484, 8, 'Meezzy');
insert into TEAM (id_team, amount, name_of_team)
values (485, 10, 'Zooveo');
insert into TEAM (id_team, amount, name_of_team)
values (486, 9, 'Geba');
insert into TEAM (id_team, amount, name_of_team)
values (487, 10, 'Quatz');
insert into TEAM (id_team, amount, name_of_team)
values (488, 6, 'Tagopia');
insert into TEAM (id_team, amount, name_of_team)
values (489, 3, 'Brightbean');
insert into TEAM (id_team, amount, name_of_team)
values (490, 8, 'Edgeclub');
insert into TEAM (id_team, amount, name_of_team)
values (491, 8, 'Plajo');
insert into TEAM (id_team, amount, name_of_team)
values (492, 2, 'Jabberbean');
insert into TEAM (id_team, amount, name_of_team)
values (493, 8, 'Realbuzz');
insert into TEAM (id_team, amount, name_of_team)
values (494, 4, 'Jaxbean');
insert into TEAM (id_team, amount, name_of_team)
values (495, 7, 'Innojam');
insert into TEAM (id_team, amount, name_of_team)
values (496, 5, 'Teklist');
insert into TEAM (id_team, amount, name_of_team)
values (497, 5, 'Myworks');
insert into TEAM (id_team, amount, name_of_team)
values (498, 8, 'Twitterlist');
insert into TEAM (id_team, amount, name_of_team)
values (499, 3, 'Kwideo');
commit;
prompt 400 records loaded
prompt Loading CALL...
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (411, 1, 'deceased', to_date('04-03-1994', 'dd-mm-yyyy'), 411, 411);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (412, 3, 'minor', to_date('26-01-2014', 'dd-mm-yyyy'), 412, 412);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (413, 4, 'minor', to_date('10-11-2015', 'dd-mm-yyyy'), 413, 413);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (414, 1, 'missing', to_date('25-09-2003', 'dd-mm-yyyy'), 414, 414);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (415, 3, 'minor', to_date('03-04-1989', 'dd-mm-yyyy'), 415, 415);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (416, 5, 'stable', to_date('10-12-1973', 'dd-mm-yyyy'), 416, 416);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (417, 3, 'missing', to_date('22-10-1981', 'dd-mm-yyyy'), 417, 417);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (418, 4, 'minor', to_date('22-04-2010', 'dd-mm-yyyy'), 418, 418);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (419, 3, 'critical', to_date('06-12-1974', 'dd-mm-yyyy'), 419, 419);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (420, 5, 'minor', to_date('01-02-1995', 'dd-mm-yyyy'), 420, 420);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (421, 3, 'deceased', to_date('02-11-2009', 'dd-mm-yyyy'), 421, 421);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (422, 1, 'deceased', to_date('26-01-1995', 'dd-mm-yyyy'), 422, 422);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (423, 5, 'minor', to_date('08-05-1979', 'dd-mm-yyyy'), 423, 423);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (424, 2, 'deceased', to_date('09-10-2004', 'dd-mm-yyyy'), 424, 424);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (425, 4, 'unconscious', to_date('26-09-2021', 'dd-mm-yyyy'), 425, 425);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (426, 5, 'minor', to_date('13-03-1991', 'dd-mm-yyyy'), 426, 426);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (427, 4, 'unconscious', to_date('30-04-2003', 'dd-mm-yyyy'), 427, 427);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (428, 4, 'deceased', to_date('05-04-1989', 'dd-mm-yyyy'), 428, 428);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (429, 5, 'minor', to_date('18-04-2011', 'dd-mm-yyyy'), 429, 429);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (430, 4, 'minor', to_date('14-12-1995', 'dd-mm-yyyy'), 430, 430);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (431, 2, 'deceased', to_date('15-03-1985', 'dd-mm-yyyy'), 431, 431);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (432, 3, 'critical', to_date('19-05-2011', 'dd-mm-yyyy'), 432, 432);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (433, 4, 'minor', to_date('05-07-1983', 'dd-mm-yyyy'), 433, 433);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (434, 1, 'unconscious', to_date('23-04-2014', 'dd-mm-yyyy'), 434, 434);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (435, 1, 'minor', to_date('06-10-1977', 'dd-mm-yyyy'), 435, 435);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (436, 4, 'critical', to_date('02-03-2006', 'dd-mm-yyyy'), 436, 436);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (437, 4, 'stable', to_date('28-01-2023', 'dd-mm-yyyy'), 437, 437);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (438, 5, 'stable', to_date('01-04-2020', 'dd-mm-yyyy'), 438, 438);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (439, 3, 'minor', to_date('13-03-1981', 'dd-mm-yyyy'), 439, 439);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (440, 5, 'unconscious', to_date('30-05-1990', 'dd-mm-yyyy'), 440, 440);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (441, 5, 'deceased', to_date('08-04-1997', 'dd-mm-yyyy'), 441, 441);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (442, 2, 'deceased', to_date('10-08-2016', 'dd-mm-yyyy'), 442, 442);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (443, 3, 'deceased', to_date('20-03-1976', 'dd-mm-yyyy'), 443, 443);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (444, 4, 'stable', to_date('27-03-1977', 'dd-mm-yyyy'), 444, 444);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (445, 3, 'missing', to_date('22-06-1987', 'dd-mm-yyyy'), 445, 445);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (446, 4, 'minor', to_date('11-07-2007', 'dd-mm-yyyy'), 446, 446);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (447, 2, 'critical', to_date('05-11-2008', 'dd-mm-yyyy'), 447, 447);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (448, 1, 'critical', to_date('12-02-1987', 'dd-mm-yyyy'), 448, 448);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (449, 5, 'critical', to_date('16-08-2003', 'dd-mm-yyyy'), 449, 449);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (450, 4, 'unconscious', to_date('01-11-1982', 'dd-mm-yyyy'), 450, 450);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (451, 5, 'deceased', to_date('26-06-1974', 'dd-mm-yyyy'), 451, 451);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (452, 1, 'unconscious', to_date('23-11-2016', 'dd-mm-yyyy'), 452, 452);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (453, 3, 'minor', to_date('02-05-1994', 'dd-mm-yyyy'), 453, 453);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (454, 5, 'deceased', to_date('22-12-1972', 'dd-mm-yyyy'), 454, 454);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (455, 4, 'stable', to_date('20-03-2012', 'dd-mm-yyyy'), 455, 455);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (456, 4, 'critical', to_date('20-01-2005', 'dd-mm-yyyy'), 456, 456);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (457, 2, 'critical', to_date('22-10-1983', 'dd-mm-yyyy'), 457, 457);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (458, 4, 'stable', to_date('29-11-1974', 'dd-mm-yyyy'), 458, 458);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (459, 4, 'deceased', to_date('29-11-1988', 'dd-mm-yyyy'), 459, 459);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (460, 1, 'missing', to_date('17-08-1978', 'dd-mm-yyyy'), 460, 460);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (461, 4, 'missing', to_date('18-07-2021', 'dd-mm-yyyy'), 461, 461);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (462, 1, 'unconscious', to_date('09-04-2005', 'dd-mm-yyyy'), 462, 462);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (463, 1, 'minor', to_date('13-04-2005', 'dd-mm-yyyy'), 463, 463);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (464, 1, 'critical', to_date('24-04-1972', 'dd-mm-yyyy'), 464, 464);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (465, 5, 'minor', to_date('05-05-2003', 'dd-mm-yyyy'), 465, 465);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (466, 3, 'minor', to_date('19-10-2021', 'dd-mm-yyyy'), 466, 466);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (467, 5, 'minor', to_date('19-01-2024', 'dd-mm-yyyy'), 467, 467);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (468, 3, 'minor', to_date('16-02-1987', 'dd-mm-yyyy'), 468, 468);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (469, 4, 'stable', to_date('22-02-1982', 'dd-mm-yyyy'), 469, 469);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (470, 4, 'stable', to_date('21-09-1981', 'dd-mm-yyyy'), 470, 470);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (471, 4, 'stable', to_date('07-01-2010', 'dd-mm-yyyy'), 471, 471);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (472, 2, 'missing', to_date('15-07-1999', 'dd-mm-yyyy'), 472, 472);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (473, 3, 'stable', to_date('28-02-2021', 'dd-mm-yyyy'), 473, 473);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (474, 2, 'minor', to_date('11-06-1978', 'dd-mm-yyyy'), 474, 474);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (475, 3, 'unconscious', to_date('19-03-1980', 'dd-mm-yyyy'), 475, 475);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (476, 1, 'unconscious', to_date('31-08-2001', 'dd-mm-yyyy'), 476, 476);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (477, 4, 'unconscious', to_date('23-10-2007', 'dd-mm-yyyy'), 477, 477);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (478, 1, 'minor', to_date('18-03-1990', 'dd-mm-yyyy'), 478, 478);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (479, 1, 'stable', to_date('09-11-1986', 'dd-mm-yyyy'), 479, 479);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (480, 2, 'critical', to_date('03-02-1972', 'dd-mm-yyyy'), 480, 480);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (481, 1, 'critical', to_date('21-05-1991', 'dd-mm-yyyy'), 481, 481);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (482, 3, 'missing', to_date('13-09-2018', 'dd-mm-yyyy'), 482, 482);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (483, 1, 'unconscious', to_date('13-10-1995', 'dd-mm-yyyy'), 483, 483);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (484, 3, 'deceased', to_date('01-02-2010', 'dd-mm-yyyy'), 484, 484);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (485, 4, 'stable', to_date('10-10-1982', 'dd-mm-yyyy'), 485, 485);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (486, 5, 'minor', to_date('26-10-1973', 'dd-mm-yyyy'), 486, 486);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (487, 1, 'stable', to_date('31-08-1989', 'dd-mm-yyyy'), 487, 487);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (488, 1, 'critical', to_date('27-05-1992', 'dd-mm-yyyy'), 488, 488);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (489, 5, 'minor', to_date('28-01-1998', 'dd-mm-yyyy'), 489, 489);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (490, 5, 'missing', to_date('10-09-2001', 'dd-mm-yyyy'), 490, 490);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (491, 5, 'deceased', to_date('05-02-1998', 'dd-mm-yyyy'), 491, 491);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (492, 1, 'critical', to_date('30-06-1972', 'dd-mm-yyyy'), 492, 492);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (493, 4, 'minor', to_date('06-08-2000', 'dd-mm-yyyy'), 493, 493);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (494, 4, 'unconscious', to_date('26-06-2010', 'dd-mm-yyyy'), 494, 494);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (495, 3, 'critical', to_date('23-05-1987', 'dd-mm-yyyy'), 495, 495);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (496, 5, 'missing', to_date('12-02-2002', 'dd-mm-yyyy'), 496, 496);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (497, 2, 'missing', to_date('25-12-2006', 'dd-mm-yyyy'), 497, 497);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (498, 2, 'critical', to_date('14-06-1987', 'dd-mm-yyyy'), 498, 498);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (499, 5, 'deceased', to_date('12-05-1991', 'dd-mm-yyyy'), 499, 499);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (280, 2, 'unconscious', to_date('10-05-1975', 'dd-mm-yyyy'), 280, 280);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (281, 5, 'stable', to_date('18-04-2015', 'dd-mm-yyyy'), 281, 281);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (282, 1, 'deceased', to_date('10-08-2017', 'dd-mm-yyyy'), 282, 282);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (283, 3, 'missing', to_date('20-05-2008', 'dd-mm-yyyy'), 283, 283);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (284, 1, 'unconscious', to_date('04-04-1981', 'dd-mm-yyyy'), 284, 284);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (285, 5, 'missing', to_date('17-07-2019', 'dd-mm-yyyy'), 285, 285);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (286, 2, 'stable', to_date('18-02-1983', 'dd-mm-yyyy'), 286, 286);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (287, 3, 'stable', to_date('08-03-1975', 'dd-mm-yyyy'), 287, 287);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (288, 2, 'critical', to_date('01-06-2014', 'dd-mm-yyyy'), 288, 288);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (289, 3, 'deceased', to_date('20-01-1972', 'dd-mm-yyyy'), 289, 289);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (290, 2, 'deceased', to_date('28-11-1992', 'dd-mm-yyyy'), 290, 290);
commit;
prompt 100 records committed...
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (291, 4, 'unconscious', to_date('26-11-2022', 'dd-mm-yyyy'), 291, 291);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (292, 5, 'missing', to_date('07-12-2011', 'dd-mm-yyyy'), 292, 292);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (293, 2, 'minor', to_date('18-10-2011', 'dd-mm-yyyy'), 293, 293);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (294, 2, 'missing', to_date('19-07-2020', 'dd-mm-yyyy'), 294, 294);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (295, 2, 'stable', to_date('04-06-1992', 'dd-mm-yyyy'), 295, 295);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (296, 1, 'stable', to_date('25-07-2023', 'dd-mm-yyyy'), 296, 296);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (297, 5, 'minor', to_date('21-12-1999', 'dd-mm-yyyy'), 297, 297);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (298, 2, 'deceased', to_date('05-01-2003', 'dd-mm-yyyy'), 298, 298);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (299, 2, 'unconscious', to_date('19-10-2002', 'dd-mm-yyyy'), 299, 299);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (161, 2, 'deceased', to_date('02-07-1999', 'dd-mm-yyyy'), 161, 161);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (162, 4, 'deceased', to_date('03-09-1972', 'dd-mm-yyyy'), 162, 162);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (163, 5, 'unconscious', to_date('27-08-1981', 'dd-mm-yyyy'), 163, 163);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (164, 5, 'stable', to_date('24-06-2005', 'dd-mm-yyyy'), 164, 164);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (165, 2, 'minor', to_date('12-02-1990', 'dd-mm-yyyy'), 165, 165);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (409, 4, 'unconscious', to_date('25-02-1984', 'dd-mm-yyyy'), 438, 282);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (248, 5, 'missing', to_date('07-09-1973', 'dd-mm-yyyy'), 310, 307);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (264, 4, 'missing', to_date('02-12-1978', 'dd-mm-yyyy'), 376, 341);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (200, 1, 'unconscious', to_date('16-10-2006', 'dd-mm-yyyy'), 317, 416);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (243, 1, 'missing', to_date('27-06-1998', 'dd-mm-yyyy'), 197, 262);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (277, 4, 'minor', to_date('22-08-2002', 'dd-mm-yyyy'), 228, 352);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (223, 5, 'critical', to_date('20-05-2001', 'dd-mm-yyyy'), 354, 220);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (267, 1, 'minor', to_date('29-05-1976', 'dd-mm-yyyy'), 209, 155);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (221, 2, 'minor', to_date('13-11-2007', 'dd-mm-yyyy'), 253, 327);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (254, 5, 'deceased', to_date('11-08-1972', 'dd-mm-yyyy'), 126, 388);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (404, 3, 'stable', to_date('25-01-2001', 'dd-mm-yyyy'), 291, 166);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (226, 5, 'stable', to_date('17-04-2014', 'dd-mm-yyyy'), 116, 310);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (403, 5, 'missing', to_date('19-08-1971', 'dd-mm-yyyy'), 330, 141);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (274, 4, 'unconscious', to_date('11-05-1994', 'dd-mm-yyyy'), 238, 331);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (247, 5, 'critical', to_date('30-04-1973', 'dd-mm-yyyy'), 368, 283);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (238, 5, 'deceased', to_date('17-09-2009', 'dd-mm-yyyy'), 432, 213);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (216, 5, 'deceased', to_date('15-03-1978', 'dd-mm-yyyy'), 277, 166);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (272, 2, 'minor', to_date('26-07-2010', 'dd-mm-yyyy'), 243, 149);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (228, 1, 'critical', to_date('24-11-2007', 'dd-mm-yyyy'), 164, 121);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (266, 1, 'stable', to_date('26-10-2021', 'dd-mm-yyyy'), 164, 357);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (251, 4, 'minor', to_date('03-09-2014', 'dd-mm-yyyy'), 414, 264);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (268, 5, 'critical', to_date('17-12-1970', 'dd-mm-yyyy'), 211, 428);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (256, 2, 'unconscious', to_date('27-03-1980', 'dd-mm-yyyy'), 420, 310);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (235, 5, 'stable', to_date('27-08-2009', 'dd-mm-yyyy'), 226, 234);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (263, 2, 'stable', to_date('25-12-1997', 'dd-mm-yyyy'), 415, 338);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (241, 4, 'deceased', to_date('12-11-2010', 'dd-mm-yyyy'), 376, 211);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (262, 5, 'deceased', to_date('14-04-2010', 'dd-mm-yyyy'), 354, 293);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (217, 2, 'minor', to_date('08-10-1992', 'dd-mm-yyyy'), 158, 435);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (351, 3, 'unconscious', to_date('08-01-1990', 'dd-mm-yyyy'), 163, 390);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (236, 1, 'missing', to_date('08-12-2016', 'dd-mm-yyyy'), 134, 294);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (219, 2, 'stable', to_date('23-04-2003', 'dd-mm-yyyy'), 241, 154);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (278, 5, 'unconscious', to_date('24-12-2016', 'dd-mm-yyyy'), 295, 292);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (301, 2, 'missing', to_date('18-06-1988', 'dd-mm-yyyy'), 122, 178);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (258, 3, 'critical', to_date('28-09-2007', 'dd-mm-yyyy'), 263, 212);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (259, 2, 'critical', to_date('28-09-2008', 'dd-mm-yyyy'), 216, 296);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (246, 2, 'stable', to_date('28-04-1998', 'dd-mm-yyyy'), 267, 311);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (242, 3, 'unconscious', to_date('24-08-2015', 'dd-mm-yyyy'), 202, 220);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (240, 4, 'unconscious', to_date('14-07-2009', 'dd-mm-yyyy'), 402, 327);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (234, 1, 'deceased', to_date('22-09-1976', 'dd-mm-yyyy'), 152, 345);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (225, 3, 'missing', to_date('14-02-1971', 'dd-mm-yyyy'), 378, 432);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (220, 1, 'missing', to_date('26-06-1997', 'dd-mm-yyyy'), 439, 140);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (273, 1, 'missing', to_date('07-09-1972', 'dd-mm-yyyy'), 184, 377);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (407, 1, 'stable', to_date('04-01-1970', 'dd-mm-yyyy'), 297, 255);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (218, 4, 'stable', to_date('09-12-2022', 'dd-mm-yyyy'), 441, 274);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (260, 5, 'missing', to_date('25-07-1987', 'dd-mm-yyyy'), 364, 374);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (253, 4, 'deceased', to_date('24-11-2007', 'dd-mm-yyyy'), 119, 294);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (265, 5, 'minor', to_date('25-08-2010', 'dd-mm-yyyy'), 384, 388);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (276, 4, 'critical', to_date('13-11-1997', 'dd-mm-yyyy'), 157, 398);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (239, 5, 'stable', to_date('24-02-1976', 'dd-mm-yyyy'), 379, 285);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (269, 4, 'minor', to_date('25-11-1970', 'dd-mm-yyyy'), 418, 129);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (244, 4, 'minor', to_date('10-12-1994', 'dd-mm-yyyy'), 112, 367);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (252, 1, 'stable', to_date('04-01-2019', 'dd-mm-yyyy'), 331, 253);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (237, 1, 'missing', to_date('04-02-2001', 'dd-mm-yyyy'), 308, 170);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (257, 2, 'minor', to_date('24-08-1977', 'dd-mm-yyyy'), 145, 437);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (405, 1, 'missing', to_date('09-02-1984', 'dd-mm-yyyy'), 431, 422);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (408, 4, 'critical', to_date('05-07-1982', 'dd-mm-yyyy'), 241, 176);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (229, 4, 'missing', to_date('28-05-2011', 'dd-mm-yyyy'), 164, 219);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (261, 2, 'critical', to_date('05-09-1995', 'dd-mm-yyyy'), 438, 170);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (222, 2, 'minor', to_date('30-01-2001', 'dd-mm-yyyy'), 212, 190);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (350, 4, 'stable', to_date('19-05-1986', 'dd-mm-yyyy'), 369, 135);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (224, 1, 'unconscious', to_date('12-12-2001', 'dd-mm-yyyy'), 248, 443);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (279, 1, 'missing', to_date('12-11-1985', 'dd-mm-yyyy'), 389, 327);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (231, 2, 'stable', to_date('26-04-1987', 'dd-mm-yyyy'), 244, 299);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (233, 2, 'minor', to_date('09-01-2017', 'dd-mm-yyyy'), 156, 254);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (872, 3, 'critical', to_date('19-06-1993', 'dd-mm-yyyy'), 352, 427);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (586, 4, 'unconscious', to_date('23-03-1991', 'dd-mm-yyyy'), 318, 159);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (554, 3, 'missing', to_date('23-04-1984', 'dd-mm-yyyy'), 128, 250);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (732, 1, 'missing', to_date('29-09-1978', 'dd-mm-yyyy'), 351, 327);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (849, 5, 'stable', to_date('21-08-1996', 'dd-mm-yyyy'), 332, 436);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (828, 1, 'unconscious', to_date('05-05-2022', 'dd-mm-yyyy'), 360, 261);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (819, 5, 'minor', to_date('31-12-2019', 'dd-mm-yyyy'), 168, 365);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (628, 3, 'critical', to_date('18-09-2014', 'dd-mm-yyyy'), 151, 373);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (791, 5, 'minor', to_date('07-11-1999', 'dd-mm-yyyy'), 144, 221);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (761, 3, 'unconscious', to_date('03-12-2016', 'dd-mm-yyyy'), 144, 355);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (651, 1, 'deceased', to_date('24-03-2013', 'dd-mm-yyyy'), 424, 228);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (515, 2, 'stable', to_date('22-07-2023', 'dd-mm-yyyy'), 124, 339);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (526, 2, 'deceased', to_date('04-01-2011', 'dd-mm-yyyy'), 262, 199);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (867, 3, 'minor', to_date('05-02-1978', 'dd-mm-yyyy'), 241, 114);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (566, 2, 'deceased', to_date('14-07-2014', 'dd-mm-yyyy'), 215, 324);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (805, 1, 'minor', to_date('12-06-1993', 'dd-mm-yyyy'), 275, 195);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (793, 2, 'deceased', to_date('21-06-1997', 'dd-mm-yyyy'), 173, 202);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (873, 4, 'unconscious', to_date('03-01-2024', 'dd-mm-yyyy'), 340, 322);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (959, 2, 'critical', to_date('23-06-1981', 'dd-mm-yyyy'), 294, 122);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (856, 1, 'critical', to_date('22-04-1991', 'dd-mm-yyyy'), 425, 322);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (689, 4, 'deceased', to_date('13-08-1970', 'dd-mm-yyyy'), 143, 377);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (665, 2, 'stable', to_date('17-03-2003', 'dd-mm-yyyy'), 271, 203);
commit;
prompt 200 records committed...
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (167, 4, 'deceased', to_date('05-08-1975', 'dd-mm-yyyy'), 167, 167);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (168, 2, 'missing', to_date('29-05-1970', 'dd-mm-yyyy'), 168, 168);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (169, 4, 'minor', to_date('03-11-1992', 'dd-mm-yyyy'), 169, 169);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (170, 1, 'critical', to_date('20-05-1990', 'dd-mm-yyyy'), 170, 170);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (171, 3, 'minor', to_date('23-04-1996', 'dd-mm-yyyy'), 171, 171);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (172, 5, 'minor', to_date('15-07-1980', 'dd-mm-yyyy'), 172, 172);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (173, 3, 'missing', to_date('04-09-2019', 'dd-mm-yyyy'), 173, 173);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (174, 2, 'minor', to_date('25-08-2011', 'dd-mm-yyyy'), 174, 174);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (175, 2, 'minor', to_date('17-09-1988', 'dd-mm-yyyy'), 175, 175);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (176, 3, 'missing', to_date('03-08-1999', 'dd-mm-yyyy'), 176, 176);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (177, 3, 'unconscious', to_date('01-10-1982', 'dd-mm-yyyy'), 177, 177);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (178, 4, 'minor', to_date('07-09-2004', 'dd-mm-yyyy'), 178, 178);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (179, 1, 'unconscious', to_date('14-08-1985', 'dd-mm-yyyy'), 179, 179);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (180, 3, 'critical', to_date('26-03-1991', 'dd-mm-yyyy'), 180, 180);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (181, 4, 'critical', to_date('18-09-1985', 'dd-mm-yyyy'), 181, 181);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (182, 3, 'deceased', to_date('19-08-1973', 'dd-mm-yyyy'), 182, 182);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (183, 3, 'stable', to_date('05-10-2006', 'dd-mm-yyyy'), 183, 183);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (184, 3, 'minor', to_date('15-12-1991', 'dd-mm-yyyy'), 184, 184);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (185, 1, 'missing', to_date('17-08-2006', 'dd-mm-yyyy'), 185, 185);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (186, 4, 'critical', to_date('19-05-1983', 'dd-mm-yyyy'), 186, 186);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (187, 3, 'stable', to_date('26-08-1971', 'dd-mm-yyyy'), 187, 187);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (188, 2, 'minor', to_date('21-11-1973', 'dd-mm-yyyy'), 188, 188);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (189, 4, 'missing', to_date('11-12-1983', 'dd-mm-yyyy'), 189, 189);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (190, 1, 'unconscious', to_date('18-01-2009', 'dd-mm-yyyy'), 190, 190);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (191, 3, 'stable', to_date('25-12-1991', 'dd-mm-yyyy'), 191, 191);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (192, 4, 'missing', to_date('22-06-1988', 'dd-mm-yyyy'), 192, 192);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (193, 3, 'deceased', to_date('22-07-2017', 'dd-mm-yyyy'), 193, 193);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (194, 1, 'unconscious', to_date('03-05-1990', 'dd-mm-yyyy'), 194, 194);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (195, 3, 'critical', to_date('22-09-1974', 'dd-mm-yyyy'), 195, 195);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (196, 2, 'deceased', to_date('16-02-1994', 'dd-mm-yyyy'), 196, 196);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (197, 4, 'critical', to_date('01-02-1976', 'dd-mm-yyyy'), 197, 197);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (198, 3, 'minor', to_date('03-09-1989', 'dd-mm-yyyy'), 198, 198);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (199, 5, 'deceased', to_date('09-01-1980', 'dd-mm-yyyy'), 199, 199);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (201, 2, 'unconscious', to_date('14-05-1988', 'dd-mm-yyyy'), 201, 201);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (202, 4, 'stable', to_date('25-06-1986', 'dd-mm-yyyy'), 202, 202);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (203, 1, 'missing', to_date('28-06-2020', 'dd-mm-yyyy'), 203, 203);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (204, 5, 'critical', to_date('21-09-1979', 'dd-mm-yyyy'), 204, 204);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (205, 4, 'deceased', to_date('04-07-1996', 'dd-mm-yyyy'), 205, 205);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (206, 4, 'missing', to_date('05-04-1994', 'dd-mm-yyyy'), 206, 206);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (207, 2, 'unconscious', to_date('25-07-2012', 'dd-mm-yyyy'), 207, 207);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (208, 4, 'deceased', to_date('30-10-2014', 'dd-mm-yyyy'), 208, 208);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (209, 4, 'unconscious', to_date('26-04-1984', 'dd-mm-yyyy'), 209, 209);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (210, 5, 'missing', to_date('20-08-2005', 'dd-mm-yyyy'), 210, 210);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (211, 1, 'stable', to_date('02-05-2006', 'dd-mm-yyyy'), 211, 211);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (212, 4, 'missing', to_date('05-01-1972', 'dd-mm-yyyy'), 212, 212);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (213, 1, 'critical', to_date('10-04-2009', 'dd-mm-yyyy'), 213, 213);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (214, 4, 'minor', to_date('14-04-1990', 'dd-mm-yyyy'), 214, 214);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (215, 4, 'deceased', to_date('27-12-2018', 'dd-mm-yyyy'), 215, 215);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (300, 3, 'missing', to_date('26-01-1985', 'dd-mm-yyyy'), 300, 300);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (302, 1, 'missing', to_date('30-01-2008', 'dd-mm-yyyy'), 302, 302);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (303, 2, 'deceased', to_date('27-04-1995', 'dd-mm-yyyy'), 303, 303);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (304, 5, 'minor', to_date('03-06-2022', 'dd-mm-yyyy'), 304, 304);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (305, 4, 'deceased', to_date('04-01-2010', 'dd-mm-yyyy'), 305, 305);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (306, 1, 'minor', to_date('02-10-1992', 'dd-mm-yyyy'), 306, 306);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (307, 5, 'unconscious', to_date('20-07-2005', 'dd-mm-yyyy'), 307, 307);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (308, 3, 'stable', to_date('05-08-1993', 'dd-mm-yyyy'), 308, 308);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (309, 2, 'minor', to_date('07-09-2002', 'dd-mm-yyyy'), 309, 309);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (310, 2, 'critical', to_date('13-09-1994', 'dd-mm-yyyy'), 310, 310);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (311, 4, 'unconscious', to_date('04-12-2013', 'dd-mm-yyyy'), 311, 311);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (312, 2, 'deceased', to_date('02-12-1993', 'dd-mm-yyyy'), 312, 312);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (313, 5, 'deceased', to_date('03-06-1997', 'dd-mm-yyyy'), 313, 313);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (314, 5, 'unconscious', to_date('04-09-2023', 'dd-mm-yyyy'), 314, 314);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (315, 3, 'deceased', to_date('22-11-2010', 'dd-mm-yyyy'), 315, 315);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (316, 1, 'unconscious', to_date('22-02-1999', 'dd-mm-yyyy'), 316, 316);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (317, 1, 'deceased', to_date('23-02-2017', 'dd-mm-yyyy'), 317, 317);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (318, 1, 'critical', to_date('10-07-1998', 'dd-mm-yyyy'), 318, 318);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (319, 3, 'unconscious', to_date('08-01-1975', 'dd-mm-yyyy'), 319, 319);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (320, 1, 'missing', to_date('10-06-2008', 'dd-mm-yyyy'), 320, 320);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (321, 1, 'deceased', to_date('26-06-1986', 'dd-mm-yyyy'), 321, 321);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (322, 2, 'missing', to_date('20-11-1975', 'dd-mm-yyyy'), 322, 322);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (323, 4, 'stable', to_date('16-03-2014', 'dd-mm-yyyy'), 323, 323);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (324, 2, 'stable', to_date('03-08-2018', 'dd-mm-yyyy'), 324, 324);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (325, 1, 'missing', to_date('26-05-1974', 'dd-mm-yyyy'), 325, 325);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (326, 5, 'deceased', to_date('28-06-2013', 'dd-mm-yyyy'), 326, 326);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (327, 2, 'unconscious', to_date('04-12-1979', 'dd-mm-yyyy'), 327, 327);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (328, 4, 'unconscious', to_date('13-11-1982', 'dd-mm-yyyy'), 328, 328);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (329, 1, 'critical', to_date('18-05-2000', 'dd-mm-yyyy'), 329, 329);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (330, 5, 'missing', to_date('15-08-2018', 'dd-mm-yyyy'), 330, 330);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (331, 3, 'unconscious', to_date('11-01-2002', 'dd-mm-yyyy'), 331, 331);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (332, 3, 'missing', to_date('06-05-1976', 'dd-mm-yyyy'), 332, 332);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (333, 3, 'unconscious', to_date('22-12-1988', 'dd-mm-yyyy'), 333, 333);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (334, 1, 'missing', to_date('03-05-2000', 'dd-mm-yyyy'), 334, 334);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (335, 5, 'missing', to_date('16-02-1982', 'dd-mm-yyyy'), 335, 335);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (336, 4, 'missing', to_date('30-08-1987', 'dd-mm-yyyy'), 336, 336);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (337, 5, 'minor', to_date('15-04-1982', 'dd-mm-yyyy'), 337, 337);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (338, 2, 'critical', to_date('08-07-2016', 'dd-mm-yyyy'), 338, 338);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (339, 4, 'critical', to_date('22-03-2009', 'dd-mm-yyyy'), 339, 339);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (340, 4, 'unconscious', to_date('20-09-2020', 'dd-mm-yyyy'), 340, 340);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (341, 4, 'critical', to_date('20-10-1972', 'dd-mm-yyyy'), 341, 341);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (342, 4, 'missing', to_date('02-11-1989', 'dd-mm-yyyy'), 342, 342);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (343, 2, 'critical', to_date('07-02-1980', 'dd-mm-yyyy'), 343, 343);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (111, 5, 'stable', to_date('07-03-2005', 'dd-mm-yyyy'), 111, 111);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (112, 2, 'critical', to_date('15-05-2004', 'dd-mm-yyyy'), 112, 112);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (113, 1, 'critical', to_date('19-10-1992', 'dd-mm-yyyy'), 113, 113);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (114, 3, 'stable', to_date('01-02-2005', 'dd-mm-yyyy'), 114, 114);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (115, 1, 'critical', to_date('06-07-2012', 'dd-mm-yyyy'), 115, 115);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (116, 1, 'missing', to_date('15-02-1974', 'dd-mm-yyyy'), 116, 116);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (117, 3, 'unconscious', to_date('15-01-1980', 'dd-mm-yyyy'), 117, 117);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (118, 2, 'stable', to_date('01-03-1991', 'dd-mm-yyyy'), 118, 118);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (119, 2, 'stable', to_date('20-01-2023', 'dd-mm-yyyy'), 119, 119);
commit;
prompt 300 records committed...
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (120, 2, 'unconscious', to_date('19-08-1985', 'dd-mm-yyyy'), 120, 120);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (121, 5, 'missing', to_date('11-06-1976', 'dd-mm-yyyy'), 121, 121);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (122, 5, 'minor', to_date('11-09-2013', 'dd-mm-yyyy'), 122, 122);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (123, 3, 'deceased', to_date('24-10-1982', 'dd-mm-yyyy'), 123, 123);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (124, 4, 'minor', to_date('14-02-1971', 'dd-mm-yyyy'), 124, 124);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (125, 5, 'deceased', to_date('29-05-1977', 'dd-mm-yyyy'), 125, 125);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (126, 2, 'stable', to_date('29-10-2005', 'dd-mm-yyyy'), 126, 126);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (127, 2, 'critical', to_date('11-07-1975', 'dd-mm-yyyy'), 127, 127);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (128, 2, 'minor', to_date('18-10-1992', 'dd-mm-yyyy'), 128, 128);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (129, 4, 'missing', to_date('06-09-1972', 'dd-mm-yyyy'), 129, 129);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (130, 3, 'critical', to_date('28-03-2004', 'dd-mm-yyyy'), 130, 130);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (131, 5, 'deceased', to_date('24-08-1979', 'dd-mm-yyyy'), 131, 131);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (132, 4, 'critical', to_date('27-07-1992', 'dd-mm-yyyy'), 132, 132);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (133, 4, 'missing', to_date('13-09-1994', 'dd-mm-yyyy'), 133, 133);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (134, 5, 'missing', to_date('22-09-1992', 'dd-mm-yyyy'), 134, 134);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (135, 3, 'deceased', to_date('29-09-1991', 'dd-mm-yyyy'), 135, 135);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (136, 3, 'stable', to_date('28-09-1970', 'dd-mm-yyyy'), 136, 136);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (137, 5, 'unconscious', to_date('26-07-2000', 'dd-mm-yyyy'), 137, 137);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (138, 5, 'minor', to_date('22-11-1979', 'dd-mm-yyyy'), 138, 138);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (139, 5, 'critical', to_date('16-05-1970', 'dd-mm-yyyy'), 139, 139);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (140, 2, 'unconscious', to_date('13-09-2003', 'dd-mm-yyyy'), 140, 140);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (141, 3, 'missing', to_date('12-06-1999', 'dd-mm-yyyy'), 141, 141);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (142, 2, 'minor', to_date('12-06-1999', 'dd-mm-yyyy'), 142, 142);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (143, 5, 'missing', to_date('24-10-1991', 'dd-mm-yyyy'), 143, 143);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (144, 5, 'minor', to_date('06-02-2013', 'dd-mm-yyyy'), 144, 144);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (145, 3, 'minor', to_date('05-05-1981', 'dd-mm-yyyy'), 145, 145);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (146, 3, 'deceased', to_date('08-10-2006', 'dd-mm-yyyy'), 146, 146);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (147, 2, 'stable', to_date('28-04-1990', 'dd-mm-yyyy'), 147, 147);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (148, 1, 'minor', to_date('23-05-1973', 'dd-mm-yyyy'), 148, 148);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (149, 5, 'missing', to_date('10-07-1977', 'dd-mm-yyyy'), 149, 149);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (150, 3, 'minor', to_date('06-01-1985', 'dd-mm-yyyy'), 150, 150);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (151, 5, 'critical', to_date('21-05-1990', 'dd-mm-yyyy'), 151, 151);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (152, 4, 'critical', to_date('19-05-2008', 'dd-mm-yyyy'), 152, 152);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (153, 1, 'missing', to_date('02-10-1998', 'dd-mm-yyyy'), 153, 153);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (154, 1, 'missing', to_date('02-12-1989', 'dd-mm-yyyy'), 154, 154);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (155, 2, 'stable', to_date('12-06-2013', 'dd-mm-yyyy'), 155, 155);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (156, 5, 'minor', to_date('04-03-2004', 'dd-mm-yyyy'), 156, 156);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (157, 4, 'unconscious', to_date('26-05-1991', 'dd-mm-yyyy'), 157, 157);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (158, 3, 'unconscious', to_date('30-09-1984', 'dd-mm-yyyy'), 158, 158);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (159, 5, 'missing', to_date('05-03-1996', 'dd-mm-yyyy'), 159, 159);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (160, 5, 'stable', to_date('08-05-2009', 'dd-mm-yyyy'), 160, 160);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (166, 2, 'missing', to_date('10-07-1978', 'dd-mm-yyyy'), 166, 166);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (344, 2, 'unconscious', to_date('31-12-2007', 'dd-mm-yyyy'), 344, 344);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (345, 1, 'minor', to_date('09-04-1982', 'dd-mm-yyyy'), 345, 345);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (346, 1, 'missing', to_date('16-11-2014', 'dd-mm-yyyy'), 346, 346);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (347, 5, 'missing', to_date('14-09-1980', 'dd-mm-yyyy'), 347, 347);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (348, 4, 'missing', to_date('24-04-1974', 'dd-mm-yyyy'), 348, 348);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (349, 1, 'deceased', to_date('22-07-1993', 'dd-mm-yyyy'), 349, 349);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (352, 3, 'minor', to_date('22-05-2021', 'dd-mm-yyyy'), 352, 352);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (353, 5, 'deceased', to_date('09-02-1972', 'dd-mm-yyyy'), 353, 353);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (354, 2, 'critical', to_date('13-02-1998', 'dd-mm-yyyy'), 354, 354);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (355, 2, 'stable', to_date('11-01-1984', 'dd-mm-yyyy'), 355, 355);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (356, 4, 'stable', to_date('22-01-1976', 'dd-mm-yyyy'), 356, 356);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (357, 4, 'critical', to_date('12-04-2001', 'dd-mm-yyyy'), 357, 357);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (358, 2, 'critical', to_date('27-09-1988', 'dd-mm-yyyy'), 358, 358);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (359, 5, 'minor', to_date('29-03-1988', 'dd-mm-yyyy'), 359, 359);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (360, 3, 'minor', to_date('21-10-1988', 'dd-mm-yyyy'), 360, 360);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (361, 2, 'minor', to_date('04-03-2023', 'dd-mm-yyyy'), 361, 361);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (362, 2, 'missing', to_date('29-11-2007', 'dd-mm-yyyy'), 362, 362);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (363, 1, 'unconscious', to_date('08-10-2022', 'dd-mm-yyyy'), 363, 363);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (364, 1, 'stable', to_date('17-06-1991', 'dd-mm-yyyy'), 364, 364);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (365, 3, 'stable', to_date('30-09-2001', 'dd-mm-yyyy'), 365, 365);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (366, 2, 'missing', to_date('22-06-2015', 'dd-mm-yyyy'), 366, 366);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (367, 2, 'unconscious', to_date('29-08-1975', 'dd-mm-yyyy'), 367, 367);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (368, 2, 'minor', to_date('02-02-1979', 'dd-mm-yyyy'), 368, 368);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (369, 3, 'missing', to_date('31-01-1986', 'dd-mm-yyyy'), 369, 369);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (370, 4, 'stable', to_date('08-05-1981', 'dd-mm-yyyy'), 370, 370);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (371, 2, 'minor', to_date('17-11-1984', 'dd-mm-yyyy'), 371, 371);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (372, 3, 'missing', to_date('20-01-2017', 'dd-mm-yyyy'), 372, 372);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (373, 3, 'missing', to_date('16-05-1979', 'dd-mm-yyyy'), 373, 373);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (374, 2, 'stable', to_date('21-09-2010', 'dd-mm-yyyy'), 374, 374);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (375, 1, 'stable', to_date('15-01-1997', 'dd-mm-yyyy'), 375, 375);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (376, 5, 'minor', to_date('04-07-2023', 'dd-mm-yyyy'), 376, 376);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (377, 1, 'unconscious', to_date('11-03-1999', 'dd-mm-yyyy'), 377, 377);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (378, 3, 'unconscious', to_date('13-08-1983', 'dd-mm-yyyy'), 378, 378);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (379, 2, 'missing', to_date('29-07-1974', 'dd-mm-yyyy'), 379, 379);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (380, 2, 'minor', to_date('14-11-1976', 'dd-mm-yyyy'), 380, 380);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (381, 2, 'stable', to_date('18-09-2010', 'dd-mm-yyyy'), 381, 381);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (382, 2, 'deceased', to_date('20-01-1990', 'dd-mm-yyyy'), 382, 382);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (383, 1, 'stable', to_date('10-02-2005', 'dd-mm-yyyy'), 383, 383);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (384, 1, 'missing', to_date('04-01-2016', 'dd-mm-yyyy'), 384, 384);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (385, 5, 'stable', to_date('22-05-1971', 'dd-mm-yyyy'), 385, 385);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (386, 2, 'critical', to_date('15-09-1975', 'dd-mm-yyyy'), 386, 386);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (387, 1, 'deceased', to_date('11-02-2015', 'dd-mm-yyyy'), 387, 387);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (388, 3, 'critical', to_date('08-12-2022', 'dd-mm-yyyy'), 388, 388);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (389, 3, 'critical', to_date('24-11-2021', 'dd-mm-yyyy'), 389, 389);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (390, 1, 'critical', to_date('20-12-2014', 'dd-mm-yyyy'), 390, 390);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (391, 2, 'missing', to_date('13-08-1998', 'dd-mm-yyyy'), 391, 391);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (392, 1, 'minor', to_date('04-02-1976', 'dd-mm-yyyy'), 392, 392);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (393, 4, 'stable', to_date('24-06-2002', 'dd-mm-yyyy'), 393, 393);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (394, 3, 'critical', to_date('02-09-1979', 'dd-mm-yyyy'), 394, 394);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (395, 1, 'stable', to_date('14-05-2001', 'dd-mm-yyyy'), 395, 395);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (396, 4, 'critical', to_date('31-10-1984', 'dd-mm-yyyy'), 396, 396);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (397, 4, 'stable', to_date('15-07-1986', 'dd-mm-yyyy'), 397, 397);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (398, 1, 'critical', to_date('24-01-1993', 'dd-mm-yyyy'), 398, 398);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (399, 1, 'deceased', to_date('13-05-1983', 'dd-mm-yyyy'), 399, 399);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (400, 2, 'deceased', to_date('23-03-2016', 'dd-mm-yyyy'), 400, 400);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (401, 3, 'stable', to_date('26-06-2005', 'dd-mm-yyyy'), 401, 401);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (410, 2, 'missing', to_date('19-06-1993', 'dd-mm-yyyy'), 410, 410);
insert into CALL (id_call, urgency, details, date_call, id_team, id_hospital)
values (633, 3, 'critical', to_date('09-04-1982', 'dd-mm-yyyy'), 205, 126);
commit;
prompt 400 records loaded
prompt Loading EMPLOYEE...
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (111, 'Paul', 9264, 334);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (112, null, 2715, 348);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (121, 'Aiden', 12681, 404);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (140, 'Leah', 14621, 495);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (171, 'Alice', 2349, 253);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (200, 'Vera', 1058, 489);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (300, 'Ben', 5972, 329);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (951, 'Eli', 14392, 338);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (411, 'Ava', 5627, 280);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (965, 'Amy', 14860, 404);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (937, 'Eli', 13899, 268);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (538, 'Amy', 13349, 139);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (810, 'Amy', 1750, 134);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (447, 'Ava', 10726, 100);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (483, 'Ava', 13216, 455);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (554, 'Amy', 9876, 300);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (750, 'Eli', 4119, 433);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (792, 'Ben', 3882, 174);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (390, 'Amy', 9609, 225);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (591, 'Ava', 7501, 279);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (508, 'Amy', 4570, 205);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (787, 'Ava', 5504, 115);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (867, 'Ava', 2906, 346);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (327, 'Eli', 13907, 468);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (823, 'Ava', 3704, 130);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (374, 'Ben', 2059, 283);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (639, 'Eli', 8264, 178);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (396, 'Eli', 11628, 464);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (408, 'Ben', 10012, 414);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (956, 'Amy', 10435, 186);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (757, 'Amy', 13288, 343);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (595, 'Eli', 13186, 150);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (454, 'Ava', 10998, 266);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (804, 'Ben', 7064, 350);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (702, 'Amy', 5159, 205);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (895, 'Ben', 4207, 368);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (734, 'Amy', 14303, 171);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (962, 'Ava', 11050, 197);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (794, 'Ben', 11763, 140);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (339, 'Eli', 12552, 390);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (615, 'Ava', 4834, 167);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (651, 'Eli', 13291, 322);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (395, 'Ben', 2808, 215);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (856, 'Ava', 9437, 198);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (758, 'Amy', 13886, 118);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (382, 'Eli', 3602, 363);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (318, 'Eli', 14957, 461);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (562, 'Ava', 6561, 358);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (629, 'Eli', 6265, 391);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (855, 'Eli', 11849, 481);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (332, 'Ben', 10944, 349);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (369, 'Ava', 13233, 292);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (900, 'Ben', 5422, 129);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (471, 'Amy', 9062, 430);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (868, 'Eli', 4710, 263);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (963, 'Eli', 8565, 327);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (532, 'Amy', 4569, 237);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (526, 'Ben', 4518, 178);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (850, 'Ava', 5229, 321);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (654, 'Eli', 3118, 475);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (581, 'Amy', 12085, 332);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (480, 'Eli', 3331, 427);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (437, 'Ava', 5221, 195);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (469, 'Ava', 4002, 134);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (389, 'Eli', 7701, 304);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (623, 'Eli', 9289, 206);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (942, 'Eli', 6167, 407);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (301, 'Ava', 5669, 306);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (551, 'Ava', 8824, 388);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (510, 'Eli', 6386, 175);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (365, 'Eli', 3099, 161);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (586, 'Eli', 7710, 166);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (896, 'Eli', 2867, 407);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (710, 'Amy', 1443, 120);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (504, 'Ava', 5308, 247);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (933, 'Ava', 8078, 400);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (944, 'Ava', 4886, 439);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (443, 'Eli', 3696, 252);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (727, 'Ben', 1762, 286);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (624, 'Amy', 7659, 345);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (722, 'Ava', 9780, 285);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (846, 'Eli', 12184, 273);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (761, 'Eli', 14829, 341);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (908, 'Eli', 8572, 247);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (617, 'Amy', 11971, 109);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (970, 'Ava', 7901, 324);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (737, 'Ben', 5542, 196);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (618, 'Eli', 8741, 397);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (367, 'Amy', 11307, 466);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (864, 'Ava', 3248, 273);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (978, 'Eli', 3496, 473);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (981, 'Eli', 2716, 424);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (377, 'Ben', 8549, 289);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (633, 'Ben', 10734, 258);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (346, 'Ava', 2139, 456);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (428, 'Ben', 7675, 363);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (779, 'Ava', 14877, 176);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (753, 'Eli', 11574, 247);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (533, 'Amy', 3657, 309);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (505, 'Amy', 13167, 179);
commit;
prompt 100 records committed...
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (356, 'Ben', 7968, 215);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (405, 'Amy', 6612, 483);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (380, 'Amy', 9359, 193);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (853, 'Ben', 12984, 258);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (696, 'Amy', 6567, 121);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (820, 'Amy', 14738, 106);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (435, 'Ava', 12508, 394);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (741, 'Ben', 7279, 405);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (813, 'Eli', 2039, 118);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (601, 'Eli', 3928, 450);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (749, 'Eli', 12128, 314);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (599, 'Ava', 14911, 109);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (588, 'Amy', 7659, 123);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (879, 'Ava', 1528, 352);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (552, 'Amy', 14617, 208);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (824, 'Amy', 10547, 189);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (360, 'Ava', 8498, 486);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (439, 'Ava', 8668, 268);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (886, 'Ava', 1210, 365);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (450, 'Eli', 9002, 349);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (697, 'Eli', 10473, 396);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (686, 'Eli', 3028, 120);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (911, 'Ava', 14632, 399);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (907, 'Amy', 12081, 279);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (909, 'Eli', 14666, 292);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (780, 'Ben', 13972, 222);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (950, 'Ben', 1224, 328);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (590, 'Ava', 4483, 292);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (320, 'Ava', 1612, 226);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (897, 'Amy', 7620, 199);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (704, 'Eli', 2169, 459);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (609, 'Amy', 12645, 271);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (960, 'Ben', 14791, 301);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (842, 'Ben', 2452, 352);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (777, 'Ava', 8226, 407);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (630, 'Ben', 4902, 246);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (903, 'Eli', 10973, 460);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (730, 'Amy', 7950, 473);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (362, 'Eli', 11937, 251);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (610, 'Ben', 11997, 475);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (980, 'Ava', 5883, 218);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (492, 'Ava', 12165, 455);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (498, 'Ava', 11257, 209);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (537, 'Eli', 9416, 273);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (892, 'Eli', 3215, 310);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (992, 'Ben', 1548, 211);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (809, 'Ben', 14925, 473);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (685, 'Amy', 5450, 283);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (762, 'Eli', 9428, 462);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (627, 'Eli', 13191, 391);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (788, 'Ava', 5829, 125);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (934, 'Ben', 14645, 426);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (423, 'Eli', 2373, 260);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (973, 'Ava', 12703, 161);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (512, 'Ava', 2107, 378);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (388, 'Amy', 13864, 482);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (999, 'Eli', 9533, 349);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (493, 'Ava', 12773, 117);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (502, 'Eli', 7692, 316);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (348, 'Ben', 5318, 165);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (720, 'Ben', 4066, 452);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (500, 'Ava', 14930, 119);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (968, 'Ben', 4025, 274);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (808, 'Eli', 12854, 479);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (477, 'Ava', 14510, 447);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (444, 'Ava', 2051, 448);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (606, 'Ava', 12567, 117);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (540, 'Eli', 4477, 301);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (391, 'Eli', 13101, 260);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (989, 'Amy', 5010, 237);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (561, 'Ava', 3222, 312);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (863, 'Ava', 6990, 222);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (418, 'Ben', 13112, 399);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (333, 'Amy', 10546, 126);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (622, 'Ben', 9979, 236);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (914, 'Amy', 2046, 447);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (468, 'Amy', 11522, 386);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (628, 'Amy', 3292, 182);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (478, 'Ben', 6203, 318);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (988, 'Eli', 9385, 172);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (690, 'Ben', 11814, 374);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (632, 'Eli', 2047, 301);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (400, 'Amy', 7744, 195);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (765, 'Eli', 10771, 141);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (481, 'Eli', 5524, 264);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (957, 'Amy', 7597, 391);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (873, 'Ava', 9527, 310);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (566, 'Amy', 6456, 198);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (495, 'Ava', 3038, 293);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (467, 'Ava', 5042, 383);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (409, 'Eli', 12637, 357);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (791, 'Ben', 11470, 431);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (546, 'Eli', 10932, 213);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (865, 'Ben', 10553, 358);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (445, 'Ben', 13565, 485);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (731, 'Ben', 14424, 287);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (650, 'Eli', 6780, 434);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (501, 'Amy', 8561, 136);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (564, 'Eli', 4435, 218);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (799, 'Eli', 2276, 214);
commit;
prompt 200 records committed...
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (949, 'Amy', 9152, 271);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (835, 'Eli', 8525, 236);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (817, 'Amy', 11463, 354);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (304, 'Amy', 6438, 325);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (403, 'Eli', 12497, 192);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (407, 'Amy', 11128, 362);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (977, 'Amy', 12000, 447);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (862, 'Eli', 7023, 101);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (375, 'Ben', 4445, 150);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (658, 'Ben', 7437, 195);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (381, 'Eli', 9178, 484);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (363, 'Eli', 10917, 273);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (519, 'Amy', 12060, 178);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (830, 'Ben', 13271, 430);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (991, 'Ava', 10953, 349);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (941, 'Ava', 2526, 235);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (345, 'Ava', 13675, 432);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (422, 'Ava', 10947, 357);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (419, 'Eli', 5721, 289);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (845, 'Eli', 12824, 435);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (997, 'Ava', 8952, 357);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (329, 'Ava', 11720, 149);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (844, 'Ben', 10176, 376);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (706, 'Amy', 13759, 314);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (783, 'Ava', 2864, 495);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (805, 'Eli', 2317, 159);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (515, 'Eli', 14305, 213);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (466, 'Eli', 7167, 358);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (653, 'Ava', 13994, 479);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (668, 'Amy', 8238, 424);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (990, 'Ava', 12334, 126);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (491, 'Ava', 4227, 430);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (732, 'Ben', 8791, 394);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (384, 'Ben', 13973, 462);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (790, 'Ava', 13400, 123);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (683, 'Ava', 12265, 388);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (915, 'Amy', 13173, 418);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (438, 'Ben', 11471, 258);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (503, 'Eli', 4037, 310);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (995, 'Ava', 1631, 100);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (486, 'Ben', 13687, 380);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (420, 'Ben', 2197, 314);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (520, 'Amy', 14906, 416);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (728, 'Ben', 3597, 310);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (619, 'Ava', 14690, 262);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (424, 'Ava', 5318, 119);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (691, 'Eli', 6105, 363);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (427, 'Ben', 3772, 377);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (866, 'Ben', 2273, 319);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (860, 'Eli', 13206, 363);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (919, 'Amy', 3775, 121);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (398, 'Ava', 4790, 418);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (924, 'Ava', 10236, 208);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (642, 'Ava', 4743, 223);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (644, 'Amy', 2989, 382);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (625, 'Amy', 3112, 497);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (404, 'Ava', 4404, 146);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (433, 'Ava', 12402, 441);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (782, 'Ben', 1944, 105);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (558, 'Amy', 4535, 341);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (341, 'Eli', 14945, 133);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (476, 'Ben', 7992, 193);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (878, 'Amy', 1119, 394);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (672, 'Amy', 9162, 229);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (542, 'Amy', 10033, 227);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (559, 'Amy', 13722, 433);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (507, 'Ava', 1687, 468);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (955, 'Ava', 3850, 326);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (917, 'Eli', 7135, 454);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (664, 'Eli', 7281, 142);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (775, 'Eli', 13619, 474);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (705, 'Ava', 14315, 182);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (882, 'Ben', 14147, 421);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (918, 'Ava', 4105, 320);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (976, 'Ava', 11085, 403);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (603, 'Eli', 10422, 391);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (744, 'Ava', 2270, 387);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (661, 'Eli', 14958, 440);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (738, 'Ben', 9934, 301);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (906, 'Ben', 9233, 105);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (475, 'Eli', 6475, 185);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (449, 'Ben', 7148, 119);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (413, 'Amy', 3972, 188);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (473, 'Amy', 7957, 366);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (330, 'Amy', 1706, 116);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (816, 'Eli', 9977, 417);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (673, 'Amy', 13914, 493);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (936, 'Ben', 6483, 308);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (355, 'Ben', 13138, 497);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (899, 'Ava', 7375, 316);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (700, 'Amy', 13701, 327);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (969, 'Ava', 9896, 368);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (848, 'Amy', 5614, 493);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (885, 'Ben', 7073, 301);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (838, 'Amy', 13242, 368);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (993, 'Amy', 11022, 432);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (572, 'Ben', 4405, 266);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (539, 'Ben', 8535, 341);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (410, 'Ava', 8773, 286);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (828, 'Amy', 8419, 107);
commit;
prompt 300 records committed...
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (531, 'Amy', 6831, 345);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (499, 'Eli', 13383, 496);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (347, 'Eli', 1079, 166);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (811, 'Eli', 5885, 227);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (461, 'Amy', 6797, 158);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (523, 'Eli', 4542, 202);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (793, 'Ben', 11222, 370);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (938, 'Ava', 10165, 266);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (351, 'Eli', 12883, 359);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (874, 'Amy', 14308, 128);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (602, 'Ben', 6149, 312);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (870, 'Ava', 10213, 388);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (785, 'Ava', 11730, 260);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (698, 'Amy', 10189, 390);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (335, 'Eli', 10791, 229);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (825, 'Eli', 10832, 217);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (964, 'Ben', 3377, 306);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (442, 'Amy', 3414, 454);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (638, 'Eli', 6554, 365);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (987, 'Ava', 9503, 374);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (975, 'Ava', 3352, 323);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (305, 'Eli', 14260, 484);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (612, 'Ava', 3590, 490);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (883, 'Ava', 12409, 477);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (721, 'Ben', 13940, 242);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (932, 'Ava', 8631, 419);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (484, 'Eli', 14867, 271);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (717, 'Eli', 14521, 406);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (543, 'Ava', 9643, 478);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (984, 'Ava', 8318, 494);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (465, 'Ben', 6462, 430);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (663, 'Amy', 5273, 223);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (516, 'Amy', 6426, 337);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (966, 'Eli', 1842, 493);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (657, 'Amy', 13159, 310);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (549, 'Amy', 10209, 301);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (574, 'Ava', 1744, 397);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (430, 'Ava', 5358, 174);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (774, 'Ben', 12812, 447);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (926, 'Amy', 1952, 259);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (674, 'Amy', 12548, 371);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (649, 'Amy', 8451, 369);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (925, 'Eli', 14534, 250);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (306, 'Amy', 3382, 116);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (669, 'Ben', 5678, 276);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (739, 'Eli', 13100, 101);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (534, 'Eli', 5158, 378);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (652, 'Ben', 13051, 406);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (527, 'Eli', 1979, 313);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (763, 'Ben', 14232, 428);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (536, 'Amy', 7628, 261);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (514, 'Ava', 12147, 285);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (859, 'Amy', 1096, 196);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (614, 'Ben', 12873, 252);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (890, 'Eli', 13798, 444);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (719, 'Amy', 7082, 370);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (385, 'Eli', 1637, 182);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (307, 'Ava', 10608, 434);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (616, 'Amy', 2095, 427);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (877, 'Ben', 14538, 487);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (928, 'Eli', 7454, 141);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (452, 'Ben', 6077, 277);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (354, 'Eli', 8863, 276);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (634, 'Eli', 14080, 253);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (858, 'Ben', 10896, 194);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (701, 'Eli', 8496, 196);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (881, 'Ben', 1768, 217);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (506, 'Eli', 2268, 387);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (822, 'Amy', 12236, 279);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (695, 'Ben', 2224, 183);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (448, 'Ava', 2921, 140);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (798, 'Eli', 14650, 196);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (416, 'Eli', 9016, 169);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (453, 'Eli', 11035, 225);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (961, 'Ben', 9359, 219);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (733, 'Ben', 1278, 213);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (317, 'Ava', 4356, 422);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (579, 'Amy', 3415, 456);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (457, 'Ben', 9201, 181);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (302, 'Amy', 12078, 235);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (935, 'Eli', 12590, 181);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (600, 'Eli', 12121, 374);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (594, 'Ava', 12013, 342);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (724, 'Ben', 4457, 188);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (613, 'Ben', 2060, 398);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (607, 'Eli', 9561, 335);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (479, 'Eli', 5983, 476);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (898, 'Amy', 10327, 413);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (692, 'Amy', 10597, 460);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (577, 'Eli', 2453, 363);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (379, 'Eli', 14711, 344);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (344, 'Amy', 1055, 170);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (736, 'Amy', 11649, 386);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (485, 'Eli', 10544, 356);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (756, 'Ben', 10850, 160);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (383, 'Ava', 4097, 320);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (759, 'Ben', 2924, 427);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (525, 'Amy', 5567, 181);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (832, 'Eli', 1023, 154);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (578, 'Ben', 3465, 167);
commit;
prompt 400 records committed...
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (646, 'Amy', 4397, 408);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (463, 'Ben', 5789, 237);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (729, 'Ben', 11247, 101);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (740, 'Ava', 13921, 356);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (431, 'Ben', 7711, 452);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (760, 'Amy', 11126, 222);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (680, 'Ava', 10416, 316);
insert into EMPLOYEE (id_employee, name_emp, salary, id_team)
values (547, 'Eli', 3848, 278);
commit;
prompt 408 records loaded
prompt Loading EQUIPMENT...
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('07-10-2011', 'dd-mm-yyyy'), 'Tape measure', 465, 1, 335);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('29-03-2019', 'dd-mm-yyyy'), 'Welder', 477, 0, 539);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('26-05-2007', 'dd-mm-yyyy'), 'Flashlight', 450, 0, 779);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('05-03-2008', 'dd-mm-yyyy'), 'Generator', 934, 0, 601);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('07-02-2009', 'dd-mm-yyyy'), 'Welder', 982, 0, 590);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('29-10-2009', 'dd-mm-yyyy'), 'Wrench', 292, 1, 858);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('16-02-2006', 'dd-mm-yyyy'), 'Sander', 759, 1, 965);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('31-10-2008', 'dd-mm-yyyy'), 'Chisel', 245, 1, 882);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('29-06-2013', 'dd-mm-yyyy'), 'Stud finder', 254, 0, 595);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('07-01-2022', 'dd-mm-yyyy'), 'Compressor', 964, 0, 989);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('17-02-2020', 'dd-mm-yyyy'), 'Pliers', 202, 0, 700);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('19-02-2021', 'dd-mm-yyyy'), 'Wrench', 591, 1, 976);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('28-07-2007', 'dd-mm-yyyy'), 'Sander', 773, 0, 435);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('06-03-2023', 'dd-mm-yyyy'), 'Goggles', 334, 0, 112);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('18-01-2023', 'dd-mm-yyyy'), 'Helmet', 435, 1, 765);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('15-09-2021', 'dd-mm-yyyy'), 'Stud finder', 592, 0, 744);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('04-06-2010', 'dd-mm-yyyy'), 'Helmet', 841, 1, 379);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('25-10-2014', 'dd-mm-yyyy'), 'Stud finder', 343, 1, 873);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('21-10-2014', 'dd-mm-yyyy'), 'Rope', 340, 0, 512);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('10-09-2016', 'dd-mm-yyyy'), 'Compressor', 576, 1, 960);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('15-11-2013', 'dd-mm-yyyy'), 'Toolbox', 261, 1, 639);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('09-03-2019', 'dd-mm-yyyy'), 'Axe', 816, 1, 503);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('15-08-2021', 'dd-mm-yyyy'), 'Crowbar', 420, 0, 375);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('30-01-2011', 'dd-mm-yyyy'), 'Generator', 890, 0, 649);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('15-09-2013', 'dd-mm-yyyy'), 'Sander', 997, 0, 991);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('23-06-2012', 'dd-mm-yyyy'), 'Drill', 708, 1, 956);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('24-03-2009', 'dd-mm-yyyy'), 'Hammer', 666, 0, 537);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('14-07-2016', 'dd-mm-yyyy'), 'Axe', 922, 1, 762);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('06-03-2004', 'dd-mm-yyyy'), 'Rope', 176, 1, 536);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('28-08-2015', 'dd-mm-yyyy'), 'Nail gun', 369, 1, 932);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('06-08-2006', 'dd-mm-yyyy'), 'Pliers', 493, 1, 111);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-11-2022', 'dd-mm-yyyy'), 'Chisel', 638, 0, 547);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('06-04-2019', 'dd-mm-yyyy'), 'Clamp', 791, 1, 609);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('13-01-2023', 'dd-mm-yyyy'), 'Hammer', 431, 0, 897);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('16-02-2021', 'dd-mm-yyyy'), 'Ladder', 559, 1, 520);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('24-03-2007', 'dd-mm-yyyy'), 'Welder', 336, 1, 907);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('04-08-2020', 'dd-mm-yyyy'), 'Shovel', 883, 1, 599);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('09-07-2010', 'dd-mm-yyyy'), 'Toolbox', 346, 1, 830);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('10-09-2011', 'dd-mm-yyyy'), 'Saw', 216, 1, 911);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('18-01-2020', 'dd-mm-yyyy'), 'Saw', 855, 0, 566);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('10-06-2014', 'dd-mm-yyyy'), 'Flashlight', 503, 1, 467);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('12-03-2023', 'dd-mm-yyyy'), 'Chisel', 706, 1, 738);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('21-06-2005', 'dd-mm-yyyy'), 'Compressor', 751, 1, 879);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-02-2019', 'dd-mm-yyyy'), 'Ladder', 394, 0, 720);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('23-06-2022', 'dd-mm-yyyy'), 'Saw', 291, 1, 388);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('24-03-2017', 'dd-mm-yyyy'), 'Crowbar', 249, 1, 685);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('08-12-2016', 'dd-mm-yyyy'), 'Generator', 515, 1, 813);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('09-08-2016', 'dd-mm-yyyy'), 'Gloves', 541, 0, 817);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('11-05-2010', 'dd-mm-yyyy'), 'Tape measure', 817, 1, 877);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('18-09-2022', 'dd-mm-yyyy'), 'Axe', 213, 0, 578);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('30-06-2009', 'dd-mm-yyyy'), 'Helmet', 660, 1, 838);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-09-2015', 'dd-mm-yyyy'), 'Axe', 106, 1, 612);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('10-01-2007', 'dd-mm-yyyy'), 'Helmet', 372, 1, 330);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('13-02-2024', 'dd-mm-yyyy'), 'Wrench', 191, 0, 935);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('29-11-2021', 'dd-mm-yyyy'), 'Saw', 815, 0, 330);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('14-06-2021', 'dd-mm-yyyy'), 'Utility knife', 608, 0, 882);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('04-09-2013', 'dd-mm-yyyy'), 'Screwdriver', 813, 1, 520);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('18-07-2011', 'dd-mm-yyyy'), 'Wrench', 419, 1, 915);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('20-07-2009', 'dd-mm-yyyy'), 'Ladder', 282, 1, 859);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('14-02-2006', 'dd-mm-yyyy'), 'Gloves', 670, 1, 422);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('22-06-2018', 'dd-mm-yyyy'), 'Shovel', 238, 0, 823);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('29-03-2022', 'dd-mm-yyyy'), 'Goggles', 632, 1, 845);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('15-03-2024', 'dd-mm-yyyy'), 'Heat gun', 200, 0, 842);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('07-04-2015', 'dd-mm-yyyy'), 'Flashlight', 814, 1, 433);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('26-11-2018', 'dd-mm-yyyy'), 'Screwdriver', 565, 1, 978);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('27-05-2006', 'dd-mm-yyyy'), 'Ladder', 177, 0, 879);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('05-05-2004', 'dd-mm-yyyy'), 'Utility knife', 246, 1, 374);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('26-04-2015', 'dd-mm-yyyy'), 'Toolbox', 121, 0, 554);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-09-2019', 'dd-mm-yyyy'), 'Screwdriver', 622, 1, 965);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('17-04-2011', 'dd-mm-yyyy'), 'Crowbar', 134, 1, 949);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('08-03-2005', 'dd-mm-yyyy'), 'Goggles', 918, 0, 897);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('17-04-2007', 'dd-mm-yyyy'), 'Chisel', 642, 0, 950);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('13-12-2016', 'dd-mm-yyyy'), 'Hammer', 764, 1, 877);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('04-09-2005', 'dd-mm-yyyy'), 'Tape measure', 712, 0, 785);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('14-06-2008', 'dd-mm-yyyy'), 'Wrench', 258, 1, 532);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('12-01-2022', 'dd-mm-yyyy'), 'Utility knife', 794, 0, 980);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('16-04-2007', 'dd-mm-yyyy'), 'Sander', 159, 0, 559);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('12-05-2017', 'dd-mm-yyyy'), 'Ladder', 560, 1, 951);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('09-07-2019', 'dd-mm-yyyy'), 'Generator', 677, 0, 926);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('08-07-2015', 'dd-mm-yyyy'), 'Axe', 633, 1, 430);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('25-12-2016', 'dd-mm-yyyy'), 'Screwdriver', 313, 0, 932);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('18-03-2020', 'dd-mm-yyyy'), 'Heat gun', 110, 1, 860);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('08-10-2018', 'dd-mm-yyyy'), 'Screwdriver', 370, 1, 915);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('17-12-2003', 'dd-mm-yyyy'), 'Level', 597, 0, 741);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('22-12-2021', 'dd-mm-yyyy'), 'Pliers', 753, 1, 171);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('29-09-2016', 'dd-mm-yyyy'), 'Nail gun', 975, 0, 739);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('04-01-2013', 'dd-mm-yyyy'), 'Goggles', 309, 0, 955);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('11-12-2011', 'dd-mm-yyyy'), 'Pliers', 341, 1, 409);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('25-04-2004', 'dd-mm-yyyy'), 'Toolbox', 399, 0, 532);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('06-12-2011', 'dd-mm-yyyy'), 'Toolbox', 862, 1, 992);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('25-08-2014', 'dd-mm-yyyy'), 'Stud finder', 742, 1, 577);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('24-02-2006', 'dd-mm-yyyy'), 'Chisel', 407, 0, 942);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('22-10-2019', 'dd-mm-yyyy'), 'Rope', 137, 0, 507);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('12-03-2018', 'dd-mm-yyyy'), 'Hammer', 527, 1, 549);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('30-04-2005', 'dd-mm-yyyy'), 'Crowbar', 326, 0, 531);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('24-08-2017', 'dd-mm-yyyy'), 'Helmet', 757, 0, 919);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('20-07-2018', 'dd-mm-yyyy'), 'Ladder', 243, 1, 845);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('11-06-2009', 'dd-mm-yyyy'), 'Shovel', 908, 1, 878);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('03-01-2014', 'dd-mm-yyyy'), 'Utility knife', 688, 0, 514);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('24-09-2023', 'dd-mm-yyyy'), 'Utility knife', 776, 1, 782);
commit;
prompt 100 records committed...
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('25-01-2023', 'dd-mm-yyyy'), 'Multimeter', 952, 1, 615);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('25-09-2020', 'dd-mm-yyyy'), 'Utility knife', 990, 0, 846);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('02-08-2017', 'dd-mm-yyyy'), 'Goggles', 325, 0, 606);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('13-10-2007', 'dd-mm-yyyy'), 'Tape measure', 583, 1, 805);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('30-12-2003', 'dd-mm-yyyy'), 'Hammer', 400, 0, 705);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('04-04-2011', 'dd-mm-yyyy'), 'Welder', 294, 1, 400);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('11-04-2021', 'dd-mm-yyyy'), 'Multimeter', 232, 0, 966);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('24-08-2015', 'dd-mm-yyyy'), 'Chainsaw', 567, 1, 448);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('16-06-2023', 'dd-mm-yyyy'), 'Welder', 131, 0, 627);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('25-11-2016', 'dd-mm-yyyy'), 'Screwdriver', 307, 1, 540);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('04-08-2008', 'dd-mm-yyyy'), 'Flashlight', 511, 0, 442);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('04-03-2007', 'dd-mm-yyyy'), 'Ladder', 497, 0, 508);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('05-05-2014', 'dd-mm-yyyy'), 'Welder', 386, 0, 480);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('05-11-2022', 'dd-mm-yyyy'), 'Pliers', 740, 0, 466);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('07-08-2004', 'dd-mm-yyyy'), 'Utility knife', 963, 1, 860);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-11-2023', 'dd-mm-yyyy'), 'Gloves', 900, 0, 651);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('30-09-2011', 'dd-mm-yyyy'), 'Chainsaw', 194, 0, 590);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('30-07-2019', 'dd-mm-yyyy'), 'Pliers', 470, 0, 919);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('04-07-2010', 'dd-mm-yyyy'), 'Multimeter', 308, 0, 906);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('20-06-2022', 'dd-mm-yyyy'), 'Drill', 713, 1, 721);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('21-01-2022', 'dd-mm-yyyy'), 'Chainsaw', 825, 0, 906);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('15-06-2023', 'dd-mm-yyyy'), 'Ladder', 317, 1, 628);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('23-02-2022', 'dd-mm-yyyy'), 'Clamp', 893, 0, 924);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('22-05-2008', 'dd-mm-yyyy'), 'Goggles', 612, 0, 644);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('11-03-2014', 'dd-mm-yyyy'), 'Toolbox', 140, 1, 475);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('23-05-2022', 'dd-mm-yyyy'), 'Wrench', 716, 1, 961);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('08-03-2018', 'dd-mm-yyyy'), 'Flashlight', 554, 1, 774);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('04-11-2003', 'dd-mm-yyyy'), 'Ladder', 118, 0, 333);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('19-05-2020', 'dd-mm-yyyy'), 'Rope', 368, 1, 493);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('19-12-2012', 'dd-mm-yyyy'), 'Crowbar', 310, 1, 566);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('24-07-2017', 'dd-mm-yyyy'), 'Screwdriver', 891, 1, 341);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('18-02-2007', 'dd-mm-yyyy'), 'Screwdriver', 418, 0, 991);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('29-05-2010', 'dd-mm-yyyy'), 'Multimeter', 700, 0, 525);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('07-02-2020', 'dd-mm-yyyy'), 'Sander', 661, 0, 610);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('31-03-2007', 'dd-mm-yyyy'), 'Chainsaw', 628, 0, 975);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('12-04-2012', 'dd-mm-yyyy'), 'Toolbox', 840, 1, 616);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('06-06-2004', 'dd-mm-yyyy'), 'Sander', 448, 1, 594);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('26-04-2014', 'dd-mm-yyyy'), 'Helmet', 723, 1, 356);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('19-10-2012', 'dd-mm-yyyy'), 'Crowbar', 797, 1, 737);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('08-10-2007', 'dd-mm-yyyy'), 'Wrench', 641, 1, 809);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('26-12-2010', 'dd-mm-yyyy'), 'Nail gun', 209, 1, 760);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('03-01-2009', 'dd-mm-yyyy'), 'Clamp', 634, 1, 792);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('07-06-2015', 'dd-mm-yyyy'), 'Ladder', 711, 1, 805);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('04-10-2005', 'dd-mm-yyyy'), 'Axe', 119, 0, 551);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('03-02-2023', 'dd-mm-yyyy'), 'Compressor', 335, 0, 411);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('30-10-2015', 'dd-mm-yyyy'), 'Utility knife', 114, 1, 669);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('24-10-2006', 'dd-mm-yyyy'), 'Saw', 996, 0, 453);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('24-10-2023', 'dd-mm-yyyy'), 'Utility knife', 425, 1, 825);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-04-2019', 'dd-mm-yyyy'), 'Helmet', 928, 1, 969);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('07-08-2013', 'dd-mm-yyyy'), 'Pliers', 913, 1, 463);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('16-10-2023', 'dd-mm-yyyy'), 'Multimeter', 832, 1, 454);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('14-09-2020', 'dd-mm-yyyy'), 'Ladder', 530, 1, 900);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('19-02-2024', 'dd-mm-yyyy'), 'Saw', 727, 0, 760);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('15-06-2014', 'dd-mm-yyyy'), 'Chainsaw', 148, 0, 906);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('11-05-2014', 'dd-mm-yyyy'), 'Gloves', 220, 1, 877);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('12-11-2009', 'dd-mm-yyyy'), 'Screwdriver', 685, 1, 625);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('21-01-2010', 'dd-mm-yyyy'), 'Saw', 585, 0, 942);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('28-10-2019', 'dd-mm-yyyy'), 'Ladder', 784, 0, 379);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('28-04-2005', 'dd-mm-yyyy'), 'Heat gun', 329, 1, 480);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('04-07-2014', 'dd-mm-yyyy'), 'Screwdriver', 681, 1, 962);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('02-12-2017', 'dd-mm-yyyy'), 'Pliers', 553, 0, 686);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('08-06-2008', 'dd-mm-yyyy'), 'Saw', 275, 0, 970);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('30-01-2005', 'dd-mm-yyyy'), 'Saw', 129, 1, 554);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('17-09-2004', 'dd-mm-yyyy'), 'Saw', 979, 1, 855);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('29-10-2013', 'dd-mm-yyyy'), 'Ladder', 593, 1, 683);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('31-10-2019', 'dd-mm-yyyy'), 'Ladder', 323, 0, 564);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('30-03-2004', 'dd-mm-yyyy'), 'Screwdriver', 210, 0, 600);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('24-12-2005', 'dd-mm-yyyy'), 'Rope', 550, 1, 320);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('27-09-2013', 'dd-mm-yyyy'), 'Rope', 741, 0, 514);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('24-06-2018', 'dd-mm-yyyy'), 'Crowbar', 490, 1, 558);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('22-10-2009', 'dd-mm-yyyy'), 'Stud finder', 138, 1, 685);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('20-03-2006', 'dd-mm-yyyy'), 'Axe', 860, 0, 808);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('30-01-2007', 'dd-mm-yyyy'), 'Ladder', 911, 1, 450);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('07-12-2017', 'dd-mm-yyyy'), 'Tape measure', 747, 0, 200);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('05-04-2023', 'dd-mm-yyyy'), 'Wrench', 455, 1, 853);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('07-02-2024', 'dd-mm-yyyy'), 'Rope', 602, 1, 581);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('23-10-2009', 'dd-mm-yyyy'), 'Rope', 809, 0, 685);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('25-11-2015', 'dd-mm-yyyy'), 'Toolbox', 829, 1, 625);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('06-09-2013', 'dd-mm-yyyy'), 'Chainsaw', 410, 1, 572);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('29-01-2022', 'dd-mm-yyyy'), 'Rope', 175, 1, 602);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-04-2005', 'dd-mm-yyyy'), 'Saw', 588, 1, 564);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('25-12-2013', 'dd-mm-yyyy'), 'Clamp', 691, 1, 200);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('20-12-2012', 'dd-mm-yyyy'), 'Gloves', 798, 0, 431);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('25-11-2008', 'dd-mm-yyyy'), 'Welder', 783, 0, 485);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('13-11-2015', 'dd-mm-yyyy'), 'Shovel', 935, 1, 878);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('05-05-2011', 'dd-mm-yyyy'), 'Welder', 212, 0, 722);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('29-01-2012', 'dd-mm-yyyy'), 'Stud finder', 304, 0, 354);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('06-10-2022', 'dd-mm-yyyy'), 'Welder', 852, 0, 306);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('25-03-2020', 'dd-mm-yyyy'), 'Generator', 624, 0, 356);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('19-06-2013', 'dd-mm-yyyy'), 'Nail gun', 707, 0, 989);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('22-10-2014', 'dd-mm-yyyy'), 'Level', 787, 0, 828);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('21-01-2006', 'dd-mm-yyyy'), 'Shovel', 549, 0, 993);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('31-08-2015', 'dd-mm-yyyy'), 'Tape measure', 286, 0, 363);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('08-03-2016', 'dd-mm-yyyy'), 'Compressor', 539, 1, 599);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('09-01-2006', 'dd-mm-yyyy'), 'Gloves', 144, 0, 765);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-03-2006', 'dd-mm-yyyy'), 'Ladder', 109, 1, 305);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('22-05-2012', 'dd-mm-yyyy'), 'Hammer', 444, 1, 613);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('06-10-2010', 'dd-mm-yyyy'), 'Drill', 242, 1, 674);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('10-08-2007', 'dd-mm-yyyy'), 'Sander', 384, 0, 510);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('08-09-2019', 'dd-mm-yyyy'), 'Tape measure', 260, 0, 731);
commit;
prompt 200 records committed...
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('14-02-2019', 'dd-mm-yyyy'), 'Wrench', 929, 1, 577);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('20-08-2010', 'dd-mm-yyyy'), 'Toolbox', 221, 1, 792);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('14-07-2014', 'dd-mm-yyyy'), 'Welder', 406, 0, 832);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-01-2024', 'dd-mm-yyyy'), 'Screwdriver', 472, 1, 335);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('21-10-2023', 'dd-mm-yyyy'), 'Chainsaw', 564, 1, 925);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('22-10-2014', 'dd-mm-yyyy'), 'Screwdriver', 822, 0, 411);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('14-12-2011', 'dd-mm-yyyy'), 'Drill', 720, 0, 403);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('29-04-2024', 'dd-mm-yyyy'), 'Ladder', 101, 1, 300);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('20-04-2011', 'dd-mm-yyyy'), 'Gloves', 940, 0, 629);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('23-09-2007', 'dd-mm-yyyy'), 'Rope', 648, 1, 111);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('06-04-2006', 'dd-mm-yyyy'), 'Axe', 582, 0, 760);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('30-01-2017', 'dd-mm-yyyy'), 'Utility knife', 413, 1, 525);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('28-12-2010', 'dd-mm-yyyy'), 'Generator', 133, 0, 960);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('18-12-2018', 'dd-mm-yyyy'), 'Goggles', 995, 0, 820);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('02-01-2018', 'dd-mm-yyyy'), 'Axe', 169, 0, 388);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('10-01-2010', 'dd-mm-yyyy'), 'Drill', 854, 1, 351);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('03-07-2009', 'dd-mm-yyyy'), 'Ladder', 610, 1, 594);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('28-01-2013', 'dd-mm-yyyy'), 'Screwdriver', 951, 0, 855);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('25-09-2004', 'dd-mm-yyyy'), 'Goggles', 182, 1, 733);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('02-10-2019', 'dd-mm-yyyy'), 'Ladder', 578, 0, 382);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('29-08-2010', 'dd-mm-yyyy'), 'Toolbox', 382, 1, 374);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('09-03-2011', 'dd-mm-yyyy'), 'Compressor', 771, 1, 468);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('20-01-2021', 'dd-mm-yyyy'), 'Flashlight', 687, 1, 690);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('11-10-2007', 'dd-mm-yyyy'), 'Utility knife', 557, 0, 649);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('11-10-2007', 'dd-mm-yyyy'), 'Helmet', 819, 0, 907);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('09-11-2008', 'dd-mm-yyyy'), 'Shovel', 981, 0, 633);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('28-07-2018', 'dd-mm-yyyy'), 'Heat gun', 136, 1, 594);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('25-02-2005', 'dd-mm-yyyy'), 'Generator', 229, 0, 990);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('05-05-2009', 'dd-mm-yyyy'), 'Toolbox', 320, 0, 471);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('10-05-2018', 'dd-mm-yyyy'), 'Toolbox', 676, 0, 886);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('25-04-2005', 'dd-mm-yyyy'), 'Saw', 725, 0, 442);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('25-09-2008', 'dd-mm-yyyy'), 'Clamp', 857, 1, 595);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('04-06-2015', 'dd-mm-yyyy'), 'Toolbox', 547, 0, 886);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('11-09-2009', 'dd-mm-yyyy'), 'Crowbar', 754, 0, 853);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('04-12-2009', 'dd-mm-yyyy'), 'Welder', 728, 0, 476);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('02-07-2010', 'dd-mm-yyyy'), 'Wrench', 480, 1, 695);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-05-2013', 'dd-mm-yyyy'), 'Ladder', 812, 0, 389);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('06-08-2020', 'dd-mm-yyyy'), 'Saw', 845, 1, 842);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('27-11-2022', 'dd-mm-yyyy'), 'Multimeter', 349, 0, 600);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('16-01-2017', 'dd-mm-yyyy'), 'Level', 163, 1, 661);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('12-11-2016', 'dd-mm-yyyy'), 'Flashlight', 518, 0, 909);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('11-10-2013', 'dd-mm-yyyy'), 'Rope', 312, 1, 906);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('17-10-2023', 'dd-mm-yyyy'), 'Saw', 423, 0, 493);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-08-2007', 'dd-mm-yyyy'), 'Hammer', 224, 0, 628);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('08-09-2018', 'dd-mm-yyyy'), 'Nail gun', 160, 1, 793);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('24-12-2016', 'dd-mm-yyyy'), 'Tape measure', 217, 0, 672);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('13-01-2015', 'dd-mm-yyyy'), 'Tape measure', 271, 0, 792);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('12-08-2014', 'dd-mm-yyyy'), 'Welder', 656, 1, 480);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('15-03-2022', 'dd-mm-yyyy'), 'Welder', 943, 0, 810);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('15-10-2016', 'dd-mm-yyyy'), 'Welder', 892, 1, 911);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('12-12-2013', 'dd-mm-yyyy'), 'Screwdriver', 544, 0, 463);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('07-12-2017', 'dd-mm-yyyy'), 'Stud finder', 255, 0, 355);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('18-06-2016', 'dd-mm-yyyy'), 'Axe', 884, 0, 964);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('08-10-2021', 'dd-mm-yyyy'), 'Multimeter', 872, 1, 510);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('23-01-2024', 'dd-mm-yyyy'), 'Shovel', 947, 1, 673);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('06-01-2012', 'dd-mm-yyyy'), 'Rope', 321, 1, 534);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('15-10-2009', 'dd-mm-yyyy'), 'Clamp', 528, 0, 651);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('04-04-2007', 'dd-mm-yyyy'), 'Stud finder', 579, 0, 863);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('04-02-2019', 'dd-mm-yyyy'), 'Generator', 760, 1, 467);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('10-03-2014', 'dd-mm-yyyy'), 'Generator', 166, 1, 657);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('23-01-2007', 'dd-mm-yyyy'), 'Crowbar', 351, 1, 805);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('07-05-2006', 'dd-mm-yyyy'), 'Stud finder', 769, 1, 465);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('12-08-2015', 'dd-mm-yyyy'), 'Nail gun', 474, 1, 835);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('13-07-2018', 'dd-mm-yyyy'), 'Drill', 352, 0, 886);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('25-06-2007', 'dd-mm-yyyy'), 'Toolbox', 917, 1, 758);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('03-12-2010', 'dd-mm-yyyy'), 'Tape measure', 445, 0, 817);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('09-04-2010', 'dd-mm-yyyy'), 'Flashlight', 895, 1, 924);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-12-2015', 'dd-mm-yyyy'), 'Clamp', 722, 1, 437);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('29-10-2020', 'dd-mm-yyyy'), 'Clamp', 120, 0, 536);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('28-08-2016', 'dd-mm-yyyy'), 'Nail gun', 831, 1, 579);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('07-10-2019', 'dd-mm-yyyy'), 'Saw', 141, 0, 475);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('30-10-2010', 'dd-mm-yyyy'), 'Clamp', 779, 0, 793);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('20-11-2006', 'dd-mm-yyyy'), 'Screwdriver', 719, 0, 728);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('18-04-2014', 'dd-mm-yyyy'), 'Multimeter', 599, 0, 332);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('14-07-2017', 'dd-mm-yyyy'), 'Generator', 247, 0, 955);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('10-08-2018', 'dd-mm-yyyy'), 'Multimeter', 512, 0, 307);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-12-2022', 'dd-mm-yyyy'), 'Utility knife', 536, 1, 595);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('07-09-2022', 'dd-mm-yyyy'), 'Stud finder', 902, 1, 868);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('09-08-2011', 'dd-mm-yyyy'), 'Chainsaw', 993, 0, 864);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-10-2019', 'dd-mm-yyyy'), 'Compressor', 595, 0, 878);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('20-12-2018', 'dd-mm-yyyy'), 'Compressor', 810, 1, 775);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('06-09-2005', 'dd-mm-yyyy'), 'Nail gun', 278, 1, 574);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('19-02-2013', 'dd-mm-yyyy'), 'Axe', 886, 1, 704);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('20-03-2024', 'dd-mm-yyyy'), 'Multimeter', 128, 0, 483);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('12-08-2008', 'dd-mm-yyyy'), 'Crowbar', 154, 0, 463);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('19-11-2010', 'dd-mm-yyyy'), 'Heat gun', 327, 1, 878);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('05-02-2021', 'dd-mm-yyyy'), 'Nail gun', 215, 0, 403);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('19-02-2010', 'dd-mm-yyyy'), 'Shovel', 603, 1, 808);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('24-06-2013', 'dd-mm-yyyy'), 'Hammer', 414, 1, 758);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('22-10-2014', 'dd-mm-yyyy'), 'Clamp', 417, 0, 877);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('12-10-2003', 'dd-mm-yyyy'), 'Drill', 827, 0, 442);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('15-05-2016', 'dd-mm-yyyy'), 'Ladder', 464, 1, 964);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('22-01-2022', 'dd-mm-yyyy'), 'Compressor', 871, 0, 991);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('27-06-2018', 'dd-mm-yyyy'), 'Crowbar', 926, 1, 973);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('29-07-2020', 'dd-mm-yyyy'), 'Level', 180, 1, 514);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('31-07-2005', 'dd-mm-yyyy'), 'Wrench', 396, 0, 973);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('05-11-2015', 'dd-mm-yyyy'), 'Welder', 142, 0, 673);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('29-02-2008', 'dd-mm-yyyy'), 'Sander', 449, 1, 622);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('21-09-2021', 'dd-mm-yyyy'), 'Nail gun', 339, 0, 680);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('17-07-2020', 'dd-mm-yyyy'), 'Level', 500, 1, 976);
commit;
prompt 300 records committed...
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('28-12-2005', 'dd-mm-yyyy'), 'Crowbar', 135, 0, 992);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-03-2019', 'dd-mm-yyyy'), 'Flashlight', 745, 1, 658);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('04-05-2019', 'dd-mm-yyyy'), 'Wrench', 836, 0, 734);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('23-08-2019', 'dd-mm-yyyy'), 'Welder', 972, 1, 744);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('21-10-2017', 'dd-mm-yyyy'), 'Goggles', 426, 0, 471);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('23-06-2013', 'dd-mm-yyyy'), 'Chainsaw', 714, 1, 558);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('07-01-2012', 'dd-mm-yyyy'), 'Generator', 359, 1, 537);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-02-2007', 'dd-mm-yyyy'), 'Heat gun', 986, 0, 505);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('23-01-2011', 'dd-mm-yyyy'), 'Screwdriver', 938, 1, 736);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('09-09-2022', 'dd-mm-yyyy'), 'Chisel', 267, 0, 697);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('02-07-2018', 'dd-mm-yyyy'), 'Helmet', 132, 0, 408);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-11-2017', 'dd-mm-yyyy'), 'Screwdriver', 793, 1, 669);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('04-04-2012', 'dd-mm-yyyy'), 'Welder', 227, 1, 391);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('09-09-2021', 'dd-mm-yyyy'), 'Flashlight', 460, 0, 507);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('03-05-2007', 'dd-mm-yyyy'), 'Toolbox', 551, 0, 909);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('25-03-2013', 'dd-mm-yyyy'), 'Gloves', 454, 1, 804);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('07-07-2011', 'dd-mm-yyyy'), 'Crowbar', 863, 0, 520);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('25-06-2021', 'dd-mm-yyyy'), 'Crowbar', 821, 1, 793);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('05-01-2013', 'dd-mm-yyyy'), 'Generator', 665, 1, 668);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('09-03-2004', 'dd-mm-yyyy'), 'Welder', 839, 0, 853);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('12-04-2018', 'dd-mm-yyyy'), 'Crowbar', 354, 0, 787);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('14-11-2003', 'dd-mm-yyyy'), 'Toolbox', 397, 0, 828);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('03-06-2016', 'dd-mm-yyyy'), 'Ladder', 526, 1, 785);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('09-07-2012', 'dd-mm-yyyy'), 'Crowbar', 607, 0, 683);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('13-09-2011', 'dd-mm-yyyy'), 'Compressor', 880, 0, 327);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('02-12-2013', 'dd-mm-yyyy'), 'Pliers', 206, 0, 542);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('28-06-2006', 'dd-mm-yyyy'), 'Goggles', 916, 0, 435);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-07-2020', 'dd-mm-yyyy'), 'Tape measure', 904, 0, 835);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('12-10-2014', 'dd-mm-yyyy'), 'Screwdriver', 388, 0, 673);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('02-08-2019', 'dd-mm-yyyy'), 'Hammer', 856, 0, 374);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('13-01-2022', 'dd-mm-yyyy'), 'Sander', 115, 0, 873);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('07-04-2007', 'dd-mm-yyyy'), 'Helmet', 944, 1, 416);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-10-2019', 'dd-mm-yyyy'), 'Sander', 302, 1, 377);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('13-06-2017', 'dd-mm-yyyy'), 'Gloves', 529, 1, 559);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('25-06-2022', 'dd-mm-yyyy'), 'Goggles', 458, 1, 601);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('04-08-2017', 'dd-mm-yyyy'), 'Nail gun', 775, 1, 654);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('10-08-2014', 'dd-mm-yyyy'), 'Screwdriver', 324, 1, 404);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('15-10-2019', 'dd-mm-yyyy'), 'Chisel', 901, 0, 955);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('17-03-2023', 'dd-mm-yyyy'), 'Level', 469, 1, 542);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('23-05-2013', 'dd-mm-yyyy'), 'Goggles', 613, 0, 650);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('06-08-2013', 'dd-mm-yyyy'), 'Level', 328, 1, 855);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-01-2007', 'dd-mm-yyyy'), 'Nail gun', 300, 0, 874);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-11-2017', 'dd-mm-yyyy'), 'Compressor', 102, 0, 933);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('04-05-2019', 'dd-mm-yyyy'), 'Nail gun', 915, 0, 638);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('16-06-2006', 'dd-mm-yyyy'), 'Heat gun', 152, 1, 809);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('24-06-2021', 'dd-mm-yyyy'), 'Level', 804, 0, 644);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('09-03-2014', 'dd-mm-yyyy'), 'Heat gun', 946, 1, 320);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('25-11-2020', 'dd-mm-yyyy'), 'Wrench', 505, 1, 846);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('16-07-2006', 'dd-mm-yyyy'), 'Chisel', 543, 0, 984);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('10-06-2007', 'dd-mm-yyyy'), 'Helmet', 724, 0, 367);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('29-09-2007', 'dd-mm-yyyy'), 'Toolbox', 171, 1, 591);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('09-11-2019', 'dd-mm-yyyy'), 'Screwdriver', 994, 0, 938);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('21-08-2021', 'dd-mm-yyyy'), 'Compressor', 178, 0, 502);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('05-08-2017', 'dd-mm-yyyy'), 'Utility knife', 651, 0, 915);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('28-10-2016', 'dd-mm-yyyy'), 'Nail gun', 649, 0, 305);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('26-12-2008', 'dd-mm-yyyy'), 'Sander', 931, 1, 966);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('24-07-2008', 'dd-mm-yyyy'), 'Rope', 885, 1, 389);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-09-2010', 'dd-mm-yyyy'), 'Utility knife', 146, 0, 860);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('15-04-2019', 'dd-mm-yyyy'), 'Gloves', 752, 1, 616);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('18-07-2016', 'dd-mm-yyyy'), 'Helmet', 988, 1, 475);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('22-06-2007', 'dd-mm-yyyy'), 'Heat gun', 639, 1, 757);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('24-07-2023', 'dd-mm-yyyy'), 'Crowbar', 654, 1, 969);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('23-03-2009', 'dd-mm-yyyy'), 'Helmet', 924, 1, 140);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('21-06-2021', 'dd-mm-yyyy'), 'Crowbar', 361, 0, 915);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('09-01-2015', 'dd-mm-yyyy'), 'Chainsaw', 218, 0, 356);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('14-01-2023', 'dd-mm-yyyy'), 'Helmet', 684, 0, 491);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('27-08-2008', 'dd-mm-yyyy'), 'Multimeter', 743, 0, 452);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('17-01-2008', 'dd-mm-yyyy'), 'Hammer', 401, 0, 612);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('09-03-2021', 'dd-mm-yyyy'), 'Welder', 347, 1, 638);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('20-02-2016', 'dd-mm-yyyy'), 'Clamp', 955, 0, 112);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('29-11-2007', 'dd-mm-yyyy'), 'Generator', 409, 1, 341);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('25-10-2004', 'dd-mm-yyyy'), 'Gloves', 270, 1, 481);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('28-11-2003', 'dd-mm-yyyy'), 'Utility knife', 570, 1, 865);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('08-06-2012', 'dd-mm-yyyy'), 'Clamp', 240, 1, 449);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-10-2009', 'dd-mm-yyyy'), 'Multimeter', 330, 1, 335);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('25-01-2022', 'dd-mm-yyyy'), 'Welder', 531, 1, 638);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('23-09-2021', 'dd-mm-yyyy'), 'Heat gun', 107, 0, 701);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('24-04-2017', 'dd-mm-yyyy'), 'Screwdriver', 998, 0, 907);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('14-09-2011', 'dd-mm-yyyy'), 'Heat gun', 640, 0, 428);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('24-03-2014', 'dd-mm-yyyy'), 'Utility knife', 103, 1, 835);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('17-08-2005', 'dd-mm-yyyy'), 'Gloves', 650, 1, 515);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('19-11-2021', 'dd-mm-yyyy'), 'Clamp', 451, 1, 683);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('26-11-2014', 'dd-mm-yyyy'), 'Toolbox', 482, 0, 720);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-08-2017', 'dd-mm-yyyy'), 'Heat gun', 362, 1, 574);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('18-09-2018', 'dd-mm-yyyy'), 'Nail gun', 318, 1, 369);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('19-07-2021', 'dd-mm-yyyy'), 'Flashlight', 605, 1, 542);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('17-09-2004', 'dd-mm-yyyy'), 'Flashlight', 909, 0, 476);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('06-04-2019', 'dd-mm-yyyy'), 'Screwdriver', 803, 0, 603);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('21-10-2005', 'dd-mm-yyyy'), 'Helmet', 823, 1, 442);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('09-05-2016', 'dd-mm-yyyy'), 'Shovel', 155, 0, 672);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('23-04-2006', 'dd-mm-yyyy'), 'Pliers', 395, 0, 960);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('14-06-2014', 'dd-mm-yyyy'), 'Toolbox', 296, 0, 938);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('19-03-2017', 'dd-mm-yyyy'), 'Nail gun', 262, 1, 495);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('27-10-2013', 'dd-mm-yyyy'), 'Rope', 379, 1, 838);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('29-04-2017', 'dd-mm-yyyy'), 'Screwdriver', 894, 0, 463);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('07-09-2019', 'dd-mm-yyyy'), 'Multimeter', 486, 1, 527);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('22-01-2004', 'dd-mm-yyyy'), 'Heat gun', 364, 0, 824);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('05-09-2013', 'dd-mm-yyyy'), 'Crowbar', 718, 0, 547);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('08-07-2005', 'dd-mm-yyyy'), 'Chisel', 130, 1, 915);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('09-03-2004', 'dd-mm-yyyy'), 'Utility knife', 837, 1, 586);
commit;
prompt 400 records committed...
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('21-06-2010', 'dd-mm-yyyy'), 'Multimeter', 957, 0, 733);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('05-04-2019', 'dd-mm-yyyy'), 'Axe', 848, 0, 408);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('01-10-2019', 'dd-mm-yyyy'), 'Multimeter', 889, 1, 968);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('27-10-2023', 'dd-mm-yyyy'), 'Axe', 959, 1, 304);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('20-03-2010', 'dd-mm-yyyy'), 'Axe', 376, 0, 498);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('29-12-2015', 'dd-mm-yyyy'), 'Screwdriver', 116, 0, 642);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('12-10-2013', 'dd-mm-yyyy'), 'Gloves', 322, 1, 937);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('31-05-2006', 'dd-mm-yyyy'), 'Toolbox', 488, 1, 965);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('09-09-2021', 'dd-mm-yyyy'), 'Hammer', 785, 1, 112);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('12-12-2021', 'dd-mm-yyyy'), 'Ladder', 696, 1, 388);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('09-01-2009', 'dd-mm-yyyy'), 'Chainsaw', 709, 1, 892);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('17-04-2011', 'dd-mm-yyyy'), 'Level', 196, 0, 690);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('23-10-2022', 'dd-mm-yyyy'), 'Chisel', 174, 0, 987);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('21-08-2023', 'dd-mm-yyyy'), 'Stud finder', 153, 0, 900);
insert into EQUIPMENT (date_borrow, name_e, id_equipment, status_e, id_employee)
values (to_date('24-02-2020', 'dd-mm-yyyy'), 'Welder', 510, 0, 503);
commit;
prompt 415 records loaded
prompt Loading PATIENT...
insert into PATIENT (id_patient, name_p, age, id_call)
values (496, 'Pam', 48, 236);
insert into PATIENT (id_patient, name_p, age, id_call)
values (554, 'Moe', 45, 241);
insert into PATIENT (id_patient, name_p, age, id_call)
values (958, 'Vic', 44, 164);
insert into PATIENT (id_patient, name_p, age, id_call)
values (715, 'Ted', 17, 282);
insert into PATIENT (id_patient, name_p, age, id_call)
values (617, 'Eve', 52, 225);
insert into PATIENT (id_patient, name_p, age, id_call)
values (773, 'Dan', 44, 223);
insert into PATIENT (id_patient, name_p, age, id_call)
values (917, 'Lia', 49, 322);
insert into PATIENT (id_patient, name_p, age, id_call)
values (912, 'Dan', 81, 294);
insert into PATIENT (id_patient, name_p, age, id_call)
values (748, 'Dan', 38, 313);
insert into PATIENT (id_patient, name_p, age, id_call)
values (484, 'Dan', 26, 467);
insert into PATIENT (id_patient, name_p, age, id_call)
values (784, 'Vic', 37, 363);
insert into PATIENT (id_patient, name_p, age, id_call)
values (439, 'Zed', 17, 425);
insert into PATIENT (id_patient, name_p, age, id_call)
values (988, 'Eve', 57, 117);
insert into PATIENT (id_patient, name_p, age, id_call)
values (863, 'Gus', 25, 299);
insert into PATIENT (id_patient, name_p, age, id_call)
values (433, null, 86, 586);
insert into PATIENT (id_patient, name_p, age, id_call)
values (822, 'Moe', 58, 386);
insert into PATIENT (id_patient, name_p, age, id_call)
values (318, 'Ted', 82, 300);
insert into PATIENT (id_patient, name_p, age, id_call)
values (509, 'Ann', 117, 169);
insert into PATIENT (id_patient, name_p, age, id_call)
values (299, 'Wes', 89, 239);
insert into PATIENT (id_patient, name_p, age, id_call)
values (303, 'Wes', 58, 325);
insert into PATIENT (id_patient, name_p, age, id_call)
values (721, 'Ann', 13, 298);
insert into PATIENT (id_patient, name_p, age, id_call)
values (331, 'Lia', 49, 315);
insert into PATIENT (id_patient, name_p, age, id_call)
values (536, 'Cal', 80, 285);
insert into PATIENT (id_patient, name_p, age, id_call)
values (378, 'Lia', 37, 309);
insert into PATIENT (id_patient, name_p, age, id_call)
values (350, 'Ned', 78, 145);
insert into PATIENT (id_patient, name_p, age, id_call)
values (351, 'Kit', 117, 385);
insert into PATIENT (id_patient, name_p, age, id_call)
values (678, 'Lou', 30, 488);
insert into PATIENT (id_patient, name_p, age, id_call)
values (358, 'Ray', 16, 317);
insert into PATIENT (id_patient, name_p, age, id_call)
values (986, 'Lou', 116, 260);
insert into PATIENT (id_patient, name_p, age, id_call)
values (529, 'Ted', 12, 417);
insert into PATIENT (id_patient, name_p, age, id_call)
values (488, 'Jed', 8, 403);
insert into PATIENT (id_patient, name_p, age, id_call)
values (519, 'Lou', 79, 376);
insert into PATIENT (id_patient, name_p, age, id_call)
values (755, 'Ray', 91, 180);
insert into PATIENT (id_patient, name_p, age, id_call)
values (790, null, 68, 273);
insert into PATIENT (id_patient, name_p, age, id_call)
values (714, 'Viv', 63, 225);
insert into PATIENT (id_patient, name_p, age, id_call)
values (793, 'Zed', 16, 489);
insert into PATIENT (id_patient, name_p, age, id_call)
values (263, 'Cal', 52, 354);
insert into PATIENT (id_patient, name_p, age, id_call)
values (357, 'Ann', 97, 128);
insert into PATIENT (id_patient, name_p, age, id_call)
values (687, 'Pam', 111, 472);
insert into PATIENT (id_patient, name_p, age, id_call)
values (798, 'Dan', 43, 312);
insert into PATIENT (id_patient, name_p, age, id_call)
values (468, 'Viv', 43, 340);
insert into PATIENT (id_patient, name_p, age, id_call)
values (133, 'Jed', 51, 122);
insert into PATIENT (id_patient, name_p, age, id_call)
values (572, 'Ned', 53, 234);
insert into PATIENT (id_patient, name_p, age, id_call)
values (226, 'Jed', 100, 224);
insert into PATIENT (id_patient, name_p, age, id_call)
values (275, 'Ray', 90, 450);
insert into PATIENT (id_patient, name_p, age, id_call)
values (278, 'Cal', 10, 491);
insert into PATIENT (id_patient, name_p, age, id_call)
values (581, 'Kit', 119, 380);
insert into PATIENT (id_patient, name_p, age, id_call)
values (836, 'Cal', 56, 339);
insert into PATIENT (id_patient, name_p, age, id_call)
values (139, 'Ned', 7, 370);
insert into PATIENT (id_patient, name_p, age, id_call)
values (390, 'Lou', 21, 135);
insert into PATIENT (id_patient, name_p, age, id_call)
values (363, 'Gus', 89, 165);
insert into PATIENT (id_patient, name_p, age, id_call)
values (110, 'Lou', 107, 472);
insert into PATIENT (id_patient, name_p, age, id_call)
values (374, 'Lou', 14, 279);
insert into PATIENT (id_patient, name_p, age, id_call)
values (839, 'Jed', 106, 260);
insert into PATIENT (id_patient, name_p, age, id_call)
values (549, 'Wes', 29, 148);
insert into PATIENT (id_patient, name_p, age, id_call)
values (709, 'Hal', 69, 372);
insert into PATIENT (id_patient, name_p, age, id_call)
values (682, 'Sid', 62, 223);
insert into PATIENT (id_patient, name_p, age, id_call)
values (326, 'Lou', 49, 235);
insert into PATIENT (id_patient, name_p, age, id_call)
values (847, 'Vic', 109, 401);
insert into PATIENT (id_patient, name_p, age, id_call)
values (396, 'Pam', 89, 209);
insert into PATIENT (id_patient, name_p, age, id_call)
values (953, 'Zed', 43, 526);
insert into PATIENT (id_patient, name_p, age, id_call)
values (270, 'Ned', 93, 411);
insert into PATIENT (id_patient, name_p, age, id_call)
values (335, 'Dan', 72, 315);
insert into PATIENT (id_patient, name_p, age, id_call)
values (557, null, 35, 426);
insert into PATIENT (id_patient, name_p, age, id_call)
values (364, 'Lia', 12, 289);
insert into PATIENT (id_patient, name_p, age, id_call)
values (315, 'Viv', 9, 347);
insert into PATIENT (id_patient, name_p, age, id_call)
values (639, null, 72, 464);
insert into PATIENT (id_patient, name_p, age, id_call)
values (797, 'Ned', 73, 229);
insert into PATIENT (id_patient, name_p, age, id_call)
values (525, 'Kit', 49, 390);
insert into PATIENT (id_patient, name_p, age, id_call)
values (774, 'Pam', 85, 498);
insert into PATIENT (id_patient, name_p, age, id_call)
values (882, 'Lia', 111, 434);
insert into PATIENT (id_patient, name_p, age, id_call)
values (227, 'Gus', 117, 474);
insert into PATIENT (id_patient, name_p, age, id_call)
values (245, 'Wes', 23, 360);
insert into PATIENT (id_patient, name_p, age, id_call)
values (215, 'Ned', 10, 131);
insert into PATIENT (id_patient, name_p, age, id_call)
values (236, 'Kit', 6, 448);
insert into PATIENT (id_patient, name_p, age, id_call)
values (770, 'Ted', 37, 421);
insert into PATIENT (id_patient, name_p, age, id_call)
values (897, 'Vic', 69, 389);
insert into PATIENT (id_patient, name_p, age, id_call)
values (425, 'Pam', 45, 483);
insert into PATIENT (id_patient, name_p, age, id_call)
values (355, 'Cal', 105, 449);
insert into PATIENT (id_patient, name_p, age, id_call)
values (972, 'Ray', 82, 116);
insert into PATIENT (id_patient, name_p, age, id_call)
values (630, 'Zed', 17, 416);
insert into PATIENT (id_patient, name_p, age, id_call)
values (654, 'Eve', 11, 412);
insert into PATIENT (id_patient, name_p, age, id_call)
values (671, null, 9, 158);
insert into PATIENT (id_patient, name_p, age, id_call)
values (841, 'Pam', 76, 297);
insert into PATIENT (id_patient, name_p, age, id_call)
values (764, 'Vic', 17, 416);
insert into PATIENT (id_patient, name_p, age, id_call)
values (265, 'Cal', 116, 215);
insert into PATIENT (id_patient, name_p, age, id_call)
values (939, 'Kit', 76, 393);
insert into PATIENT (id_patient, name_p, age, id_call)
values (829, 'Zed', 95, 761);
insert into PATIENT (id_patient, name_p, age, id_call)
values (965, 'Jed', 88, 147);
insert into PATIENT (id_patient, name_p, age, id_call)
values (879, 'Eve', 14, 455);
insert into PATIENT (id_patient, name_p, age, id_call)
values (320, 'Ray', 35, 122);
insert into PATIENT (id_patient, name_p, age, id_call)
values (976, 'Lou', 11, 246);
insert into PATIENT (id_patient, name_p, age, id_call)
values (932, 'Ray', 102, 444);
insert into PATIENT (id_patient, name_p, age, id_call)
values (936, 'Ray', 22, 466);
insert into PATIENT (id_patient, name_p, age, id_call)
values (329, 'Viv', 114, 180);
insert into PATIENT (id_patient, name_p, age, id_call)
values (426, 'Zed', 11, 448);
insert into PATIENT (id_patient, name_p, age, id_call)
values (826, 'Dan', 56, 297);
insert into PATIENT (id_patient, name_p, age, id_call)
values (832, 'Viv', 106, 264);
insert into PATIENT (id_patient, name_p, age, id_call)
values (653, 'Eve', 80, 197);
insert into PATIENT (id_patient, name_p, age, id_call)
values (999, 'Dan', 70, 132);
commit;
prompt 100 records committed...
insert into PATIENT (id_patient, name_p, age, id_call)
values (373, 'Eve', 66, 184);
insert into PATIENT (id_patient, name_p, age, id_call)
values (387, 'Moe', 113, 460);
insert into PATIENT (id_patient, name_p, age, id_call)
values (775, 'Viv', 34, 450);
insert into PATIENT (id_patient, name_p, age, id_call)
values (277, 'Jed', 42, 183);
insert into PATIENT (id_patient, name_p, age, id_call)
values (806, 'Gus', 120, 378);
insert into PATIENT (id_patient, name_p, age, id_call)
values (906, 'Gus', 34, 223);
insert into PATIENT (id_patient, name_p, age, id_call)
values (697, 'Ned', 75, 346);
insert into PATIENT (id_patient, name_p, age, id_call)
values (231, 'Viv', 10, 872);
insert into PATIENT (id_patient, name_p, age, id_call)
values (423, 'Kit', 9, 425);
insert into PATIENT (id_patient, name_p, age, id_call)
values (632, 'Cal', 4, 196);
insert into PATIENT (id_patient, name_p, age, id_call)
values (476, 'Moe', 27, 268);
insert into PATIENT (id_patient, name_p, age, id_call)
values (447, 'Vic', 79, 378);
insert into PATIENT (id_patient, name_p, age, id_call)
values (111, 'Pam', 107, 428);
insert into PATIENT (id_patient, name_p, age, id_call)
values (589, 'Hal', 42, 122);
insert into PATIENT (id_patient, name_p, age, id_call)
values (156, 'Lou', 69, 300);
insert into PATIENT (id_patient, name_p, age, id_call)
values (614, 'Ted', 24, 337);
insert into PATIENT (id_patient, name_p, age, id_call)
values (744, 'Sid', 21, 167);
insert into PATIENT (id_patient, name_p, age, id_call)
values (620, 'Zed', 43, 386);
insert into PATIENT (id_patient, name_p, age, id_call)
values (233, 'Kit', 120, 342);
insert into PATIENT (id_patient, name_p, age, id_call)
values (658, 'Ned', 44, 310);
insert into PATIENT (id_patient, name_p, age, id_call)
values (157, 'Ann', 31, 299);
insert into PATIENT (id_patient, name_p, age, id_call)
values (608, null, 101, 166);
insert into PATIENT (id_patient, name_p, age, id_call)
values (169, 'Eve', 21, 371);
insert into PATIENT (id_patient, name_p, age, id_call)
values (389, 'Lou', 30, 349);
insert into PATIENT (id_patient, name_p, age, id_call)
values (542, 'Lou', 66, 184);
insert into PATIENT (id_patient, name_p, age, id_call)
values (296, 'Eve', 109, 443);
insert into PATIENT (id_patient, name_p, age, id_call)
values (824, 'Lia', 94, 340);
insert into PATIENT (id_patient, name_p, age, id_call)
values (105, 'Eve', 84, 472);
insert into PATIENT (id_patient, name_p, age, id_call)
values (731, 'Lia', 114, 139);
insert into PATIENT (id_patient, name_p, age, id_call)
values (628, 'Ted', 37, 254);
insert into PATIENT (id_patient, name_p, age, id_call)
values (837, 'Ray', 13, 393);
insert into PATIENT (id_patient, name_p, age, id_call)
values (494, 'Lou', 66, 285);
insert into PATIENT (id_patient, name_p, age, id_call)
values (659, 'Zed', 77, 412);
insert into PATIENT (id_patient, name_p, age, id_call)
values (520, 'Dan', 39, 331);
insert into PATIENT (id_patient, name_p, age, id_call)
values (723, 'Hal', 88, 210);
insert into PATIENT (id_patient, name_p, age, id_call)
values (634, 'Jed', 18, 314);
insert into PATIENT (id_patient, name_p, age, id_call)
values (273, 'Moe', 54, 398);
insert into PATIENT (id_patient, name_p, age, id_call)
values (761, 'Gus', 67, 319);
insert into PATIENT (id_patient, name_p, age, id_call)
values (978, 'Ned', 38, 192);
insert into PATIENT (id_patient, name_p, age, id_call)
values (913, 'Kit', 72, 386);
insert into PATIENT (id_patient, name_p, age, id_call)
values (862, 'Jed', 91, 363);
insert into PATIENT (id_patient, name_p, age, id_call)
values (206, 'Dan', 76, 761);
insert into PATIENT (id_patient, name_p, age, id_call)
values (664, 'Eve', 92, 791);
insert into PATIENT (id_patient, name_p, age, id_call)
values (218, 'Kit', 55, 473);
insert into PATIENT (id_patient, name_p, age, id_call)
values (136, 'Ann', 112, 405);
insert into PATIENT (id_patient, name_p, age, id_call)
values (967, 'Eve', 85, 293);
insert into PATIENT (id_patient, name_p, age, id_call)
values (459, 'Pam', 98, 204);
insert into PATIENT (id_patient, name_p, age, id_call)
values (204, 'Ted', 64, 195);
insert into PATIENT (id_patient, name_p, age, id_call)
values (485, 'Ray', 22, 341);
insert into PATIENT (id_patient, name_p, age, id_call)
values (119, 'Jed', 92, 253);
insert into PATIENT (id_patient, name_p, age, id_call)
values (692, 'Hal', 27, 274);
insert into PATIENT (id_patient, name_p, age, id_call)
values (544, 'Ted', 120, 411);
insert into PATIENT (id_patient, name_p, age, id_call)
values (699, 'Lia', 46, 376);
insert into PATIENT (id_patient, name_p, age, id_call)
values (381, 'Lia', 116, 176);
insert into PATIENT (id_patient, name_p, age, id_call)
values (868, 'Ted', 40, 395);
insert into PATIENT (id_patient, name_p, age, id_call)
values (115, 'Hal', 31, 139);
insert into PATIENT (id_patient, name_p, age, id_call)
values (809, 'Ray', 37, 335);
insert into PATIENT (id_patient, name_p, age, id_call)
values (974, 'Kit', 17, 442);
insert into PATIENT (id_patient, name_p, age, id_call)
values (395, 'Ted', 95, 452);
insert into PATIENT (id_patient, name_p, age, id_call)
values (272, 'Sid', 5, 419);
insert into PATIENT (id_patient, name_p, age, id_call)
values (991, 'Dan', 41, 390);
insert into PATIENT (id_patient, name_p, age, id_call)
values (416, 'Lia', 17, 309);
insert into PATIENT (id_patient, name_p, age, id_call)
values (267, 'Jed', 65, 373);
insert into PATIENT (id_patient, name_p, age, id_call)
values (758, 'Ted', 102, 134);
insert into PATIENT (id_patient, name_p, age, id_call)
values (411, 'Ted', 13, 633);
insert into PATIENT (id_patient, name_p, age, id_call)
values (185, 'Dan', 55, 143);
insert into PATIENT (id_patient, name_p, age, id_call)
values (311, 'Ned', 68, 633);
insert into PATIENT (id_patient, name_p, age, id_call)
values (104, 'Ted', 44, 451);
insert into PATIENT (id_patient, name_p, age, id_call)
values (147, 'Hal', 80, 446);
insert into PATIENT (id_patient, name_p, age, id_call)
values (594, 'Lia', 103, 444);
insert into PATIENT (id_patient, name_p, age, id_call)
values (244, 'Lou', 7, 218);
insert into PATIENT (id_patient, name_p, age, id_call)
values (366, 'Ann', 111, 164);
insert into PATIENT (id_patient, name_p, age, id_call)
values (578, 'Ned', 15, 281);
insert into PATIENT (id_patient, name_p, age, id_call)
values (538, 'Ray', 96, 208);
insert into PATIENT (id_patient, name_p, age, id_call)
values (794, 'Moe', 81, 135);
insert into PATIENT (id_patient, name_p, age, id_call)
values (596, 'Ray', 118, 628);
insert into PATIENT (id_patient, name_p, age, id_call)
values (767, 'Moe', 52, 450);
insert into PATIENT (id_patient, name_p, age, id_call)
values (332, 'Sid', 35, 498);
insert into PATIENT (id_patient, name_p, age, id_call)
values (898, 'Ted', 71, 191);
insert into PATIENT (id_patient, name_p, age, id_call)
values (576, 'Ned', 37, 345);
insert into PATIENT (id_patient, name_p, age, id_call)
values (887, 'Moe', 69, 119);
insert into PATIENT (id_patient, name_p, age, id_call)
values (891, 'Hal', 47, 301);
insert into PATIENT (id_patient, name_p, age, id_call)
values (438, 'Gus', 67, 442);
insert into PATIENT (id_patient, name_p, age, id_call)
values (899, 'Jed', 117, 425);
insert into PATIENT (id_patient, name_p, age, id_call)
values (877, 'Vic', 71, 215);
insert into PATIENT (id_patient, name_p, age, id_call)
values (850, 'Moe', 21, 242);
insert into PATIENT (id_patient, name_p, age, id_call)
values (759, 'Wes', 85, 435);
insert into PATIENT (id_patient, name_p, age, id_call)
values (424, 'Dan', 40, 314);
insert into PATIENT (id_patient, name_p, age, id_call)
values (187, 'Viv', 4, 135);
insert into PATIENT (id_patient, name_p, age, id_call)
values (527, 'Eve', 78, 210);
insert into PATIENT (id_patient, name_p, age, id_call)
values (760, 'Lia', 99, 466);
insert into PATIENT (id_patient, name_p, age, id_call)
values (607, 'Ray', 23, 459);
insert into PATIENT (id_patient, name_p, age, id_call)
values (474, null, 39, 204);
insert into PATIENT (id_patient, name_p, age, id_call)
values (188, 'Ray', 29, 484);
insert into PATIENT (id_patient, name_p, age, id_call)
values (587, 'Jed', 65, 284);
insert into PATIENT (id_patient, name_p, age, id_call)
values (930, 'Dan', 55, 267);
insert into PATIENT (id_patient, name_p, age, id_call)
values (619, 'Ned', 42, 185);
insert into PATIENT (id_patient, name_p, age, id_call)
values (412, 'Cal', 52, 515);
insert into PATIENT (id_patient, name_p, age, id_call)
values (383, 'Wes', 104, 496);
insert into PATIENT (id_patient, name_p, age, id_call)
values (162, 'Jed', 48, 142);
commit;
prompt 200 records committed...
insert into PATIENT (id_patient, name_p, age, id_call)
values (948, 'Ned', 20, 163);
insert into PATIENT (id_patient, name_p, age, id_call)
values (901, 'Zed', 52, 350);
insert into PATIENT (id_patient, name_p, age, id_call)
values (927, 'Hal', 38, 307);
insert into PATIENT (id_patient, name_p, age, id_call)
values (705, 'Dan', 83, 329);
insert into PATIENT (id_patient, name_p, age, id_call)
values (651, 'Ray', 102, 732);
insert into PATIENT (id_patient, name_p, age, id_call)
values (192, 'Ned', 74, 872);
insert into PATIENT (id_patient, name_p, age, id_call)
values (950, 'Ted', 100, 237);
insert into PATIENT (id_patient, name_p, age, id_call)
values (406, 'Ned', 52, 222);
insert into PATIENT (id_patient, name_p, age, id_call)
values (458, 'Sky', 9, 261);
insert into PATIENT (id_patient, name_p, age, id_call)
values (963, 'Mya', 3, 333);
insert into PATIENT (id_patient, name_p, age, id_call)
values (955, 'Bev', 44, 447);
insert into PATIENT (id_patient, name_p, age, id_call)
values (769, 'Gia', 55, 476);
insert into PATIENT (id_patient, name_p, age, id_call)
values (151, 'Eli', 94, 401);
insert into PATIENT (id_patient, name_p, age, id_call)
values (239, 'Ira', 15, 375);
insert into PATIENT (id_patient, name_p, age, id_call)
values (825, 'Hed', 83, 332);
insert into PATIENT (id_patient, name_p, age, id_call)
values (235, 'Eli', 16, 313);
insert into PATIENT (id_patient, name_p, age, id_call)
values (130, 'Dot', 42, 395);
insert into PATIENT (id_patient, name_p, age, id_call)
values (776, 'Mya', 73, 484);
insert into PATIENT (id_patient, name_p, age, id_call)
values (274, 'Hed', 99, 118);
insert into PATIENT (id_patient, name_p, age, id_call)
values (603, 'Ren', 16, 214);
insert into PATIENT (id_patient, name_p, age, id_call)
values (896, 'Lee', 20, 335);
insert into PATIENT (id_patient, name_p, age, id_call)
values (301, 'Ari', 19, 336);
insert into PATIENT (id_patient, name_p, age, id_call)
values (531, 'Ren', 109, 279);
insert into PATIENT (id_patient, name_p, age, id_call)
values (174, 'Sky', 2, 439);
insert into PATIENT (id_patient, name_p, age, id_call)
values (359, null, 119, 180);
insert into PATIENT (id_patient, name_p, age, id_call)
values (100, 'Ira', 115, 407);
insert into PATIENT (id_patient, name_p, age, id_call)
values (141, 'Jan', 41, 184);
insert into PATIENT (id_patient, name_p, age, id_call)
values (328, 'Gia', 66, 149);
insert into PATIENT (id_patient, name_p, age, id_call)
values (455, 'Ora', 88, 318);
insert into PATIENT (id_patient, name_p, age, id_call)
values (559, 'Una', 44, 121);
insert into PATIENT (id_patient, name_p, age, id_call)
values (889, 'Tia', 43, 327);
insert into PATIENT (id_patient, name_p, age, id_call)
values (728, 'Ora', 62, 337);
insert into PATIENT (id_patient, name_p, age, id_call)
values (316, 'Fay', 9, 453);
insert into PATIENT (id_patient, name_p, age, id_call)
values (240, 'Fay', 4, 472);
insert into PATIENT (id_patient, name_p, age, id_call)
values (558, 'Ira', 33, 253);
insert into PATIENT (id_patient, name_p, age, id_call)
values (908, 'Ren', 38, 761);
insert into PATIENT (id_patient, name_p, age, id_call)
values (382, 'Pia', 87, 195);
insert into PATIENT (id_patient, name_p, age, id_call)
values (752, 'Ira', 72, 233);
insert into PATIENT (id_patient, name_p, age, id_call)
values (546, null, 105, 414);
insert into PATIENT (id_patient, name_p, age, id_call)
values (786, 'Ari', 102, 340);
insert into PATIENT (id_patient, name_p, age, id_call)
values (386, 'Eli', 33, 428);
insert into PATIENT (id_patient, name_p, age, id_call)
values (124, 'Ken', 42, 446);
insert into PATIENT (id_patient, name_p, age, id_call)
values (994, 'Lee', 17, 327);
insert into PATIENT (id_patient, name_p, age, id_call)
values (313, 'Tia', 7, 188);
insert into PATIENT (id_patient, name_p, age, id_call)
values (561, 'Dot', 67, 342);
insert into PATIENT (id_patient, name_p, age, id_call)
values (870, 'Pia', 70, 219);
insert into PATIENT (id_patient, name_p, age, id_call)
values (706, 'Bev', 91, 164);
insert into PATIENT (id_patient, name_p, age, id_call)
values (788, 'Tia', 89, 450);
insert into PATIENT (id_patient, name_p, age, id_call)
values (440, 'Noe', 80, 490);
insert into PATIENT (id_patient, name_p, age, id_call)
values (701, 'Ken', 81, 178);
insert into PATIENT (id_patient, name_p, age, id_call)
values (851, 'Tia', 84, 315);
insert into PATIENT (id_patient, name_p, age, id_call)
values (208, 'Dot', 80, 323);
insert into PATIENT (id_patient, name_p, age, id_call)
values (957, 'Hed', 40, 375);
insert into PATIENT (id_patient, name_p, age, id_call)
values (947, null, 119, 449);
insert into PATIENT (id_patient, name_p, age, id_call)
values (861, 'Gia', 68, 307);
insert into PATIENT (id_patient, name_p, age, id_call)
values (735, 'Cia', 53, 209);
insert into PATIENT (id_patient, name_p, age, id_call)
values (361, 'Una', 70, 456);
insert into PATIENT (id_patient, name_p, age, id_call)
values (398, 'Una', 32, 235);
insert into PATIENT (id_patient, name_p, age, id_call)
values (741, 'Ira', 93, 368);
insert into PATIENT (id_patient, name_p, age, id_call)
values (838, 'Mya', 60, 381);
insert into PATIENT (id_patient, name_p, age, id_call)
values (960, 'Eli', 14, 197);
insert into PATIENT (id_patient, name_p, age, id_call)
values (940, 'Mya', 3, 335);
insert into PATIENT (id_patient, name_p, age, id_call)
values (916, 'Noe', 108, 456);
insert into PATIENT (id_patient, name_p, age, id_call)
values (734, 'Cia', 21, 315);
insert into PATIENT (id_patient, name_p, age, id_call)
values (609, 'Jan', 120, 138);
insert into PATIENT (id_patient, name_p, age, id_call)
values (973, 'Lee', 36, 382);
insert into PATIENT (id_patient, name_p, age, id_call)
values (627, 'Gia', 59, 395);
insert into PATIENT (id_patient, name_p, age, id_call)
values (670, 'Tia', 22, 208);
insert into PATIENT (id_patient, name_p, age, id_call)
values (866, 'Lee', 90, 138);
insert into PATIENT (id_patient, name_p, age, id_call)
values (193, 'Mya', 108, 182);
insert into PATIENT (id_patient, name_p, age, id_call)
values (347, 'Ira', 101, 294);
insert into PATIENT (id_patient, name_p, age, id_call)
values (293, 'Bev', 107, 167);
insert into PATIENT (id_patient, name_p, age, id_call)
values (812, 'Tia', 64, 384);
insert into PATIENT (id_patient, name_p, age, id_call)
values (524, 'Gia', 72, 355);
insert into PATIENT (id_patient, name_p, age, id_call)
values (537, 'Eli', 42, 337);
insert into PATIENT (id_patient, name_p, age, id_call)
values (203, 'Tia', 51, 320);
insert into PATIENT (id_patient, name_p, age, id_call)
values (946, 'Ken', 14, 476);
insert into PATIENT (id_patient, name_p, age, id_call)
values (661, 'Pia', 78, 398);
insert into PATIENT (id_patient, name_p, age, id_call)
values (102, 'Tia', 52, 229);
insert into PATIENT (id_patient, name_p, age, id_call)
values (161, 'Una', 5, 148);
insert into PATIENT (id_patient, name_p, age, id_call)
values (152, 'Sky', 84, 145);
insert into PATIENT (id_patient, name_p, age, id_call)
values (771, 'Tia', 52, 298);
insert into PATIENT (id_patient, name_p, age, id_call)
values (694, 'Dot', 57, 224);
insert into PATIENT (id_patient, name_p, age, id_call)
values (413, 'Noe', 28, 345);
insert into PATIENT (id_patient, name_p, age, id_call)
values (516, 'Ira', 13, 129);
insert into PATIENT (id_patient, name_p, age, id_call)
values (875, 'Jan', 71, 354);
insert into PATIENT (id_patient, name_p, age, id_call)
values (739, 'Pia', 86, 340);
insert into PATIENT (id_patient, name_p, age, id_call)
values (471, 'Lee', 26, 142);
insert into PATIENT (id_patient, name_p, age, id_call)
values (605, 'Hed', 4, 357);
insert into PATIENT (id_patient, name_p, age, id_call)
values (128, 'Ari', 58, 346);
insert into PATIENT (id_patient, name_p, age, id_call)
values (880, 'Jan', 87, 566);
insert into PATIENT (id_patient, name_p, age, id_call)
values (489, 'Bev', 82, 154);
insert into PATIENT (id_patient, name_p, age, id_call)
values (101, null, 21, 344);
insert into PATIENT (id_patient, name_p, age, id_call)
values (432, 'Mya', 46, 320);
insert into PATIENT (id_patient, name_p, age, id_call)
values (401, 'Ren', 46, 446);
insert into PATIENT (id_patient, name_p, age, id_call)
values (249, 'Tia', 112, 348);
insert into PATIENT (id_patient, name_p, age, id_call)
values (823, 'Ken', 97, 171);
insert into PATIENT (id_patient, name_p, age, id_call)
values (388, 'Ora', 93, 216);
insert into PATIENT (id_patient, name_p, age, id_call)
values (197, 'Tia', 52, 263);
insert into PATIENT (id_patient, name_p, age, id_call)
values (123, 'Fay', 6, 433);
commit;
prompt 300 records committed...
insert into PATIENT (id_patient, name_p, age, id_call)
values (858, 'Ari', 96, 340);
insert into PATIENT (id_patient, name_p, age, id_call)
values (888, 'Una', 83, 266);
insert into PATIENT (id_patient, name_p, age, id_call)
values (821, 'Bev', 25, 262);
insert into PATIENT (id_patient, name_p, age, id_call)
values (336, 'Fay', 27, 333);
insert into PATIENT (id_patient, name_p, age, id_call)
values (563, 'Lee', 5, 244);
insert into PATIENT (id_patient, name_p, age, id_call)
values (648, 'Mya', 54, 239);
insert into PATIENT (id_patient, name_p, age, id_call)
values (153, 'Ken', 45, 856);
insert into PATIENT (id_patient, name_p, age, id_call)
values (673, 'Eli', 4, 316);
insert into PATIENT (id_patient, name_p, age, id_call)
values (392, 'Ken', 27, 260);
insert into PATIENT (id_patient, name_p, age, id_call)
values (579, null, 83, 486);
insert into PATIENT (id_patient, name_p, age, id_call)
values (282, 'Ken', 25, 339);
insert into PATIENT (id_patient, name_p, age, id_call)
values (405, 'Dot', 71, 265);
insert into PATIENT (id_patient, name_p, age, id_call)
values (568, 'Ari', 117, 494);
insert into PATIENT (id_patient, name_p, age, id_call)
values (787, 'Ren', 57, 413);
insert into PATIENT (id_patient, name_p, age, id_call)
values (998, 'Bev', 88, 350);
insert into PATIENT (id_patient, name_p, age, id_call)
values (935, 'Eli', 20, 449);
insert into PATIENT (id_patient, name_p, age, id_call)
values (650, 'Fay', 38, 129);
insert into PATIENT (id_patient, name_p, age, id_call)
values (640, 'Dot', 10, 133);
insert into PATIENT (id_patient, name_p, age, id_call)
values (253, 'Eli', 66, 246);
insert into PATIENT (id_patient, name_p, age, id_call)
values (564, 'Ren', 15, 450);
insert into PATIENT (id_patient, name_p, age, id_call)
values (921, 'Pia', 49, 453);
insert into PATIENT (id_patient, name_p, age, id_call)
values (125, 'Bev', 96, 455);
insert into PATIENT (id_patient, name_p, age, id_call)
values (780, 'Pia', 114, 476);
insert into PATIENT (id_patient, name_p, age, id_call)
values (905, 'Pia', 72, 251);
insert into PATIENT (id_patient, name_p, age, id_call)
values (672, 'Ora', 67, 176);
insert into PATIENT (id_patient, name_p, age, id_call)
values (248, 'Una', 87, 300);
insert into PATIENT (id_patient, name_p, age, id_call)
values (924, 'Jan', 57, 123);
insert into PATIENT (id_patient, name_p, age, id_call)
values (621, 'Tia', 92, 392);
insert into PATIENT (id_patient, name_p, age, id_call)
values (511, 'Tia', 116, 466);
insert into PATIENT (id_patient, name_p, age, id_call)
values (747, 'Eli', 9, 297);
insert into PATIENT (id_patient, name_p, age, id_call)
values (846, 'Bev', 21, 298);
insert into PATIENT (id_patient, name_p, age, id_call)
values (637, 'Ora', 2, 352);
insert into PATIENT (id_patient, name_p, age, id_call)
values (467, 'Ari', 95, 499);
insert into PATIENT (id_patient, name_p, age, id_call)
values (170, 'Jan', 5, 152);
insert into PATIENT (id_patient, name_p, age, id_call)
values (852, 'Ken', 41, 363);
insert into PATIENT (id_patient, name_p, age, id_call)
values (287, 'Pia', 46, 366);
insert into PATIENT (id_patient, name_p, age, id_call)
values (164, 'Jan', 85, 284);
insert into PATIENT (id_patient, name_p, age, id_call)
values (751, 'Noe', 56, 333);
insert into PATIENT (id_patient, name_p, age, id_call)
values (833, 'Noe', 17, 405);
insert into PATIENT (id_patient, name_p, age, id_call)
values (666, 'Jan', 44, 479);
insert into PATIENT (id_patient, name_p, age, id_call)
values (551, 'Tia', 117, 168);
insert into PATIENT (id_patient, name_p, age, id_call)
values (708, 'Fay', 114, 327);
insert into PATIENT (id_patient, name_p, age, id_call)
values (860, 'Eli', 69, 314);
insert into PATIENT (id_patient, name_p, age, id_call)
values (159, 'Bev', 111, 689);
insert into PATIENT (id_patient, name_p, age, id_call)
values (800, 'Sky', 119, 121);
insert into PATIENT (id_patient, name_p, age, id_call)
values (729, 'Noe', 73, 651);
insert into PATIENT (id_patient, name_p, age, id_call)
values (246, 'Ken', 109, 849);
insert into PATIENT (id_patient, name_p, age, id_call)
values (884, 'Tia', 58, 381);
insert into PATIENT (id_patient, name_p, age, id_call)
values (251, 'Dot', 107, 481);
insert into PATIENT (id_patient, name_p, age, id_call)
values (716, 'Tia', 114, 328);
insert into PATIENT (id_patient, name_p, age, id_call)
values (281, 'Ora', 118, 410);
insert into PATIENT (id_patient, name_p, age, id_call)
values (762, 'Ken', 109, 332);
insert into PATIENT (id_patient, name_p, age, id_call)
values (691, 'Noe', 30, 138);
insert into PATIENT (id_patient, name_p, age, id_call)
values (816, 'Ora', 86, 254);
insert into PATIENT (id_patient, name_p, age, id_call)
values (372, 'Mya', 3, 481);
insert into PATIENT (id_patient, name_p, age, id_call)
values (726, 'Gia', 27, 356);
insert into PATIENT (id_patient, name_p, age, id_call)
values (802, null, 118, 382);
insert into PATIENT (id_patient, name_p, age, id_call)
values (171, 'Una', 60, 218);
insert into PATIENT (id_patient, name_p, age, id_call)
values (626, 'Tia', 80, 185);
insert into PATIENT (id_patient, name_p, age, id_call)
values (482, 'Sky', 14, 181);
insert into PATIENT (id_patient, name_p, age, id_call)
values (402, 'Ora', 60, 320);
insert into PATIENT (id_patient, name_p, age, id_call)
values (545, 'Hed', 78, 246);
insert into PATIENT (id_patient, name_p, age, id_call)
values (742, null, 18, 345);
insert into PATIENT (id_patient, name_p, age, id_call)
values (352, 'Ari', 112, 208);
insert into PATIENT (id_patient, name_p, age, id_call)
values (160, 'Hed', 110, 276);
insert into PATIENT (id_patient, name_p, age, id_call)
values (441, 'Ren', 28, 113);
insert into PATIENT (id_patient, name_p, age, id_call)
values (113, null, 72, 263);
insert into PATIENT (id_patient, name_p, age, id_call)
values (956, 'Fay', 113, 399);
insert into PATIENT (id_patient, name_p, age, id_call)
values (120, 'Jan', 41, 189);
insert into PATIENT (id_patient, name_p, age, id_call)
values (859, 'Tia', 85, 323);
insert into PATIENT (id_patient, name_p, age, id_call)
values (600, 'Cia', 85, 327);
insert into PATIENT (id_patient, name_p, age, id_call)
values (261, 'Ira', 24, 856);
insert into PATIENT (id_patient, name_p, age, id_call)
values (294, 'Mya', 4, 455);
insert into PATIENT (id_patient, name_p, age, id_call)
values (907, 'Eli', 10, 204);
insert into PATIENT (id_patient, name_p, age, id_call)
values (919, 'Ren', 54, 442);
insert into PATIENT (id_patient, name_p, age, id_call)
values (642, 'Cia', 84, 350);
insert into PATIENT (id_patient, name_p, age, id_call)
values (360, 'Tia', 57, 475);
insert into PATIENT (id_patient, name_p, age, id_call)
values (656, null, 27, 242);
insert into PATIENT (id_patient, name_p, age, id_call)
values (782, 'Tia', 99, 247);
insert into PATIENT (id_patient, name_p, age, id_call)
values (910, 'Bev', 24, 204);
insert into PATIENT (id_patient, name_p, age, id_call)
values (611, 'Hed', 32, 251);
insert into PATIENT (id_patient, name_p, age, id_call)
values (223, 'Ora', 4, 554);
insert into PATIENT (id_patient, name_p, age, id_call)
values (434, 'Ora', 120, 418);
insert into PATIENT (id_patient, name_p, age, id_call)
values (938, 'Cia', 47, 414);
insert into PATIENT (id_patient, name_p, age, id_call)
values (380, 'Sky', 59, 408);
insert into PATIENT (id_patient, name_p, age, id_call)
values (256, 'Cia', 94, 434);
insert into PATIENT (id_patient, name_p, age, id_call)
values (845, 'Eli', 58, 289);
insert into PATIENT (id_patient, name_p, age, id_call)
values (865, 'Sky', 8, 526);
insert into PATIENT (id_patient, name_p, age, id_call)
values (308, 'Ari', 98, 140);
insert into PATIENT (id_patient, name_p, age, id_call)
values (893, 'Noe', 58, 420);
insert into PATIENT (id_patient, name_p, age, id_call)
values (964, 'Gia', 82, 201);
insert into PATIENT (id_patient, name_p, age, id_call)
values (178, 'Ren', 17, 424);
insert into PATIENT (id_patient, name_p, age, id_call)
values (216, 'Jan', 116, 477);
insert into PATIENT (id_patient, name_p, age, id_call)
values (700, 'Jan', 14, 337);
insert into PATIENT (id_patient, name_p, age, id_call)
values (835, 'Pia', 91, 493);
insert into PATIENT (id_patient, name_p, age, id_call)
values (914, 'Tia', 106, 356);
insert into PATIENT (id_patient, name_p, age, id_call)
values (155, 'Sky', 37, 342);
insert into PATIENT (id_patient, name_p, age, id_call)
values (890, 'Fay', 97, 293);
insert into PATIENT (id_patient, name_p, age, id_call)
values (778, null, 96, 215);
insert into PATIENT (id_patient, name_p, age, id_call)
values (400, 'Una', 72, 411);
commit;
prompt 400 records committed...
insert into PATIENT (id_patient, name_p, age, id_call)
values (693, 'Eli', 23, 216);
insert into PATIENT (id_patient, name_p, age, id_call)
values (420, null, 7, 384);
insert into PATIENT (id_patient, name_p, age, id_call)
values (853, 'Cia', 58, 128);
commit;
prompt 403 records loaded
prompt Enabling foreign key constraints for CALL...
alter table CALL enable constraint SYS_C007121;
alter table CALL enable constraint SYS_C007122;
prompt Enabling foreign key constraints for EMPLOYEE...
alter table EMPLOYEE enable constraint SYS_C007128;
prompt Enabling foreign key constraints for EQUIPMENT...
alter table EQUIPMENT enable constraint SYS_C007131;
prompt Enabling foreign key constraints for PATIENT...
alter table PATIENT enable constraint SYS_C007125;
prompt Enabling triggers for HOSPITAL...
alter table HOSPITAL enable all triggers;
prompt Enabling triggers for TEAM...
alter table TEAM enable all triggers;
prompt Enabling triggers for CALL...
alter table CALL enable all triggers;
prompt Enabling triggers for EMPLOYEE...
alter table EMPLOYEE enable all triggers;
prompt Enabling triggers for EQUIPMENT...
alter table EQUIPMENT enable all triggers;
prompt Enabling triggers for PATIENT...
alter table PATIENT enable all triggers;
set feedback on
set define on
prompt Done.

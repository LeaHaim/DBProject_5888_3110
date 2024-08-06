prompt PL/SQL Developer import file
prompt Created on �������� 06 ������ 2024 by Hadar Sarusi
set feedback off
set define off
prompt Creating HOSPITAL...
create table HOSPITAL
(
  id_hospital NUMBER(3) not null,
  city        VARCHAR2(15),
  phone       NUMBER(10)
)
;
alter table HOSPITAL
  add primary key (ID_HOSPITAL);

prompt Creating TEAM...
create table TEAM
(
  id_team      NUMBER(3) not null,
  amount       NUMBER(3),
  name_of_team VARCHAR2(15)
)
;
alter table TEAM
  add primary key (ID_TEAM);

prompt Creating CALL...
create table CALL
(
  id_call     NUMBER(3) not null,
  urgency     NUMBER(1),
  details     VARCHAR2(15),
  date_call   DATE not null,
  id_team     NUMBER(3),
  id_hospital NUMBER(3)
)
;
alter table CALL
  add primary key (ID_CALL);
alter table CALL
  add foreign key (ID_TEAM)
  references TEAM (ID_TEAM);
alter table CALL
  add foreign key (ID_HOSPITAL)
  references HOSPITAL (ID_HOSPITAL);
alter table CALL
  add constraint CNSTR_URGENCY
  check (urgency Between 1 and 5);

prompt Creating NEW_EMPLOYEE...
create table NEW_EMPLOYEE
(
  id_employee NUMBER(3),
  name_emp    VARCHAR2(15),
  salary      NUMBER,
  id_team     NUMBER(3)
)
;
alter table NEW_EMPLOYEE
  add constraint FK_TEAM_EMPLOYEE foreign key (ID_TEAM)
  references TEAM (ID_TEAM);

prompt Creating ORDERS...
create table ORDERS
(
  ordate        DATE not null,
  oserialnumber NUMBER(3) not null,
  paymentmethod VARCHAR2(15),
  id_team       NUMBER(3)
)
;
alter table ORDERS
  add primary key (OSERIALNUMBER);
alter table ORDERS
  add constraint FK_TEAM_ORDERS foreign key (ID_TEAM)
  references TEAM (ID_TEAM);
alter table ORDERS
  add check (paymentmethod='bit' or paymentmethod='paybox' or paymentmethod='cash' or paymentmethod='credit card');

prompt Creating NEW_EQUIPMENT...
create table NEW_EQUIPMENT
(
  id_equipment  NUMBER(3),
  date_borrow   DATE,
  status_e      NUMBER,
  oserialnumber NUMBER(3)
)
;
alter table NEW_EQUIPMENT
  add constraint FK_ID_ORDERS foreign key (OSERIALNUMBER)
  references ORDERS (OSERIALNUMBER);

prompt Creating PATIENT...
create table PATIENT
(
  id_patient NUMBER(3) not null,
  name_p     VARCHAR2(15),
  age        NUMBER(3),
  id_call    NUMBER(3)
)
;
alter table PATIENT
  add primary key (ID_PATIENT);
alter table PATIENT
  add foreign key (ID_CALL)
  references CALL (ID_CALL);

prompt Disabling triggers for HOSPITAL...
alter table HOSPITAL disable all triggers;
prompt Disabling triggers for TEAM...
alter table TEAM disable all triggers;
prompt Disabling triggers for CALL...
alter table CALL disable all triggers;
prompt Disabling triggers for NEW_EMPLOYEE...
alter table NEW_EMPLOYEE disable all triggers;
prompt Disabling triggers for ORDERS...
alter table ORDERS disable all triggers;
prompt Disabling triggers for NEW_EQUIPMENT...
alter table NEW_EQUIPMENT disable all triggers;
prompt Disabling triggers for PATIENT...
alter table PATIENT disable all triggers;
prompt Disabling foreign key constraints for CALL...
alter table CALL disable constraint SYS_C007646;
alter table CALL disable constraint SYS_C007647;
prompt Disabling foreign key constraints for NEW_EMPLOYEE...
alter table NEW_EMPLOYEE disable constraint FK_TEAM_EMPLOYEE;
prompt Disabling foreign key constraints for ORDERS...
alter table ORDERS disable constraint FK_TEAM_ORDERS;
prompt Disabling foreign key constraints for NEW_EQUIPMENT...
alter table NEW_EQUIPMENT disable constraint FK_ID_ORDERS;
prompt Disabling foreign key constraints for PATIENT...
alter table PATIENT disable constraint SYS_C007658;
prompt Deleting PATIENT...
delete from PATIENT;
commit;
prompt Deleting NEW_EQUIPMENT...
delete from NEW_EQUIPMENT;
commit;
prompt Deleting ORDERS...
delete from ORDERS;
commit;
prompt Deleting NEW_EMPLOYEE...
delete from NEW_EMPLOYEE;
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
values (456, 5, 'critical', to_date('20-01-2005', 'dd-mm-yyyy'), 456, 456);
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
values (492, 5, 'critical', to_date('30-06-1972', 'dd-mm-yyyy'), 492, 492);
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
values (408, 5, 'critical', to_date('05-07-1982', 'dd-mm-yyyy'), 241, 176);
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
values (195, 5, 'critical', to_date('22-09-1974', 'dd-mm-yyyy'), 195, 195);
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
values (338, 5, 'critical', to_date('08-07-2016', 'dd-mm-yyyy'), 338, 338);
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
values (390, 5, 'critical', to_date('20-12-2014', 'dd-mm-yyyy'), 390, 390);
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
prompt Loading NEW_EMPLOYEE...
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (1, 'Liev Austin', 148348, 296);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (2, 'Ruth Gleeson', 645605, 199);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (3, 'Miki Nugent', 489873, 144);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (4, 'George Ball', 36824, 342);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (5, 'Rawlins Rankin', 64665, 325);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (6, 'Jamie Chan', 507884, 471);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (7, 'Micky Hudson', 103706, 340);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (8, 'Hikaru Hong', 618597, 212);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (9, 'Aidan Chaplin', 121201, 194);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (10, 'Orlando Goldblu', 648397, 289);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (11, 'Eileen Savage', 187434, 424);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (12, 'Carrie-Anne Vau', 95648, 279);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (13, 'Rosanna Hobson', 240003, 191);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (14, 'Buffy Quinones', 974573, 439);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (15, 'Coley Dysart', 770046, 214);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (16, 'Isaac Suvari', 586897, 446);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (17, 'Martin Rubinek', 979263, 265);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (18, 'Junior Cumming', 867686, 287);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (19, 'Scott MacDonald', 939429, 406);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (20, 'Simon Forrest', 595574, 386);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (21, 'Sydney Berenger', 503943, 492);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (22, 'Lenny Sedaka', 300446, 320);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (23, 'Melanie Belle', 232885, 351);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (24, 'Mary Stewart', 146725, 464);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (25, 'Stellan Farrell', 509350, 213);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (26, 'Emilio Phillipp', 38521, 447);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (27, 'Lesley MacNeil', 871525, 350);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (28, 'Johnny Lapointe', 115084, 251);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (29, 'Casey Stiers', 446459, 219);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (30, 'Carolyn Scorses', 442088, 197);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (31, 'Reese Flemyng', 801720, 135);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (32, 'Tramaine Gates', 379336, 187);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (33, 'Miriam Owen', 606533, 215);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (34, 'Balthazar Dukak', 631284, 299);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (35, 'Carole Lorenz', 723529, 489);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (36, 'Pierce Faithful', 689465, 404);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (37, 'Noah Tempest', 906335, 224);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (38, 'Debbie Maxwell', 29154, 485);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (39, 'Dar Sizemore', 583771, 444);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (40, 'Ewan DeVito', 391705, 484);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (41, 'Bruce Murphy', 446983, 355);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (42, 'Wade Emmett', 549460, 202);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (43, 'Ali Weisberg', 222166, 140);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (44, 'Eric Stigers', 398308, 150);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (45, 'Xander Loeb', 172235, 364);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (46, 'Miriam LaBelle', 953474, 369);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (47, 'Andrew Braugher', 127722, 278);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (48, 'Samantha Kidman', 50119, 159);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (49, 'Hookah Tomlin', 212764, 317);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (50, 'Giancarlo Lofgr', 124582, 246);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (51, 'Cherry Lapointe', 510282, 490);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (52, 'Jay Foley', 750695, 167);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (53, 'Marina Dillon', 735709, 237);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (54, 'Alan Palmieri', 285350, 395);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (55, 'Campbell Eastwo', 138902, 126);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (56, 'Judge Hanks', 528453, 347);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (57, 'Radney Vinton', 383555, 341);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (58, 'Mae Mollard', 432372, 139);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (59, 'Carol Gosdin', 644496, 428);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (60, 'Ramsey McGill', 896069, 324);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (61, 'Pelvic O''Connor', 622135, 240);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (62, 'Judd Cumming', 484038, 154);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (63, 'Sally Forrest', 255896, 491);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (64, 'Meredith Sepulv', 673138, 204);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (65, 'Jude Shandling', 591308, 427);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (66, 'Alfred Levine', 922068, 303);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (67, 'Angie Gracie', 149279, 222);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (68, 'Rufus Dalton', 638797, 109);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (69, 'Gerald Thomson', 268599, 338);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (70, 'Tommy Hurley', 939419, 415);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (71, 'Judge Nelson', 886600, 297);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (72, 'Jann Secada', 173820, 121);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (73, 'Sona Moffat', 35855, 384);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (74, 'Chloe Chambers', 354937, 145);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (75, 'Taylor Tah', 634481, 160);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (76, 'Carlos Grant', 268415, 147);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (77, 'Joy Fonda', 972717, 334);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (78, 'Josh Giamatti', 814851, 268);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (79, 'Candice Rhys-Da', 111711, 346);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (80, 'Andrea Rauhofer', 548694, 203);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (81, 'Joy Vai', 460441, 182);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (82, 'Dwight Allison', 52976, 398);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (83, 'Lorraine Moraz', 482284, 177);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (84, 'Joely Moreno', 202568, 190);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (85, 'Renee Johansen', 906387, 326);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (86, 'Wade Allan', 204224, 302);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (87, 'Brian Mitchell', 640653, 470);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (88, 'Lari Bracco', 947540, 103);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (89, 'Curtis Saxon', 698199, 161);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (90, 'Gloria Weiland', 466801, 285);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (91, 'Eric Borden', 585604, 211);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (92, 'Mia Foster', 442631, 155);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (93, 'Shawn Heron', 682486, 476);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (94, 'Geraldine Berry', 602181, 272);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (95, 'Buddy Soul', 845945, 327);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (96, 'Tracy Robards', 760434, 143);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (97, 'Lily Witherspoo', 771559, 459);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (98, 'Denise Tierney', 53723, 456);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (99, 'Merrilee Wills', 158919, 181);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (100, 'Jeffrey Evans', 841016, 416);
commit;
prompt 100 records committed...
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (101, 'Sally Heatherly', 492497, 321);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (102, 'Merrill Eder', 691546, 245);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (103, 'Penelope Rosas', 845003, 452);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (104, 'Kirsten Baez', 41158, 263);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (105, 'Antonio Hewett', 559607, 422);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (106, 'Dar Peet', 462011, 372);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (107, 'Gwyneth Herndon', 603546, 443);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (108, 'Robby Guzman', 182176, 304);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (109, 'Udo Rio', 803078, 322);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (110, 'Balthazar Carra', 434929, 449);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (111, 'Paul', 9264, 463);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (112, null, 2715, 273);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (113, 'Ian Biel', 26360, 217);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (114, 'Nelly Zevon', 39346, 451);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (115, 'Illeana Seagal', 444349, 381);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (116, 'Liev Gore', 71288, 131);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (117, 'Clive Coltrane', 617573, 112);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (118, 'Lindsey Martine', 483520, 298);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (119, 'Julianne Crowe', 392438, 425);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (120, 'Humberto Cervin', 769977, 385);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (121, 'Aiden', 12681, 277);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (122, 'Manu Faithfull', 640454, 100);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (123, 'Percy Sharp', 318882, 477);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (124, 'Dylan Lewin', 643624, 264);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (125, 'Whoopi Curtis', 295449, 382);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (126, 'Kurt Paul', 899073, 318);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (127, 'Pat Fichtner', 574476, 373);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (128, 'Lee Tilly', 838413, 434);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (129, 'Tal Monk', 583033, 242);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (130, 'Leonardo Singh', 760939, 122);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (131, 'Nikki Shand', 36976, 494);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (132, 'Hope Rains', 82615, 486);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (133, 'Bernard Deschan', 937678, 466);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (134, 'Andie Mahood', 188074, 153);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (135, 'Alicia Amos', 432273, 345);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (136, 'LeVar Schreiber', 147985, 333);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (137, 'Drew Rifkin', 958385, 256);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (138, 'Sinead Shaw', 971291, 437);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (139, 'Sander Hatfield', 697761, 284);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (140, 'Leah', 14621, 460);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (141, 'Delroy McGriff', 338059, 198);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (142, 'Avenged Brooke', 642101, 305);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (143, 'Gabrielle Santa', 322078, 493);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (144, 'Rowan Olin', 867118, 420);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (145, 'Bernie Lindo', 976446, 387);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (146, 'Jay Kristoffers', 672091, 176);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (147, 'Heather Love', 875123, 367);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (148, 'Emmylou Guest', 306246, 290);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (149, 'Dave Burton', 485471, 483);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (150, 'Kenny Alexander', 4365, 283);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (151, 'Tyrone Weber', 187043, 358);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (152, 'Sigourney Place', 438802, 179);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (153, 'Geoff Ryder', 142038, 227);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (154, 'Faye Gambon', 156399, 414);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (155, 'Daryle Rickman', 857599, 130);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (156, 'Crispin Gaines', 718703, 123);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (157, 'Peter Tambor', 643066, 357);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (158, 'Wally Reno', 431447, 119);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (159, 'CeCe Grant', 82084, 421);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (160, 'Sydney Johansso', 682812, 432);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (161, 'Russell Cheadle', 226333, 239);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (162, 'Corey Harrison', 986326, 293);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (163, 'Kazem Tilly', 956717, 352);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (164, 'Jonny Lee Malon', 974385, 291);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (165, 'Kevin Keen', 979402, 411);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (166, 'Garland Moss', 784215, 188);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (167, 'Buffy Warden', 761187, 454);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (168, 'Natalie Bello', 726611, 482);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (169, 'Alannah Tilly', 437697, 169);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (170, 'Patrick McAnall', 687805, 243);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (171, 'Alice', 2349, 400);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (172, 'Mika Colman', 687478, 295);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (173, 'Edgar Day', 767509, 328);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (174, 'Christopher Str', 219933, 247);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (175, 'Ralph Bonham', 331145, 453);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (176, 'Reese Elizondo', 737940, 148);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (177, 'Rita Hutch', 147483, 377);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (178, 'Leonardo Bush', 744536, 455);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (179, 'Richard Smith', 145986, 475);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (180, 'Carole Farrell', 685130, 282);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (181, 'Treat Coburn', 142895, 261);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (182, 'Bo Stewart', 98553, 275);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (183, 'Tal Newton', 957738, 173);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (184, 'Victoria Weston', 475100, 312);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (185, 'Lindsay Skerrit', 179748, 467);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (186, 'Christian Vanne', 918126, 457);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (187, 'Ivan Choice', 608257, 270);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (188, 'Katrin Byrne', 215318, 288);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (189, 'Tobey Weiss', 425493, 186);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (190, 'Mike Gibson', 207203, 274);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (191, 'Winona Berkeley', 649347, 132);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (192, 'Brittany Close', 646916, 253);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (193, 'Carlene Vega', 666924, 208);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (194, 'Merillee Dillon', 873419, 394);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (195, 'Rufus Scott', 985139, 473);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (196, 'Ike Lindo', 960412, 108);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (197, 'Fiona Gayle', 8538, 348);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (198, 'Gladys Puckett', 291850, 113);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (199, 'Lili Ali', 88007, 363);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (200, 'Vera', 1058, 128);
commit;
prompt 200 records committed...
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (201, 'Ossie Lang', 466410, 286);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (202, 'Dave Carlton', 118005, 151);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (203, 'Rawlins Presley', 491418, 120);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (204, 'Javon DeGraw', 873419, 175);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (205, 'Chrissie Ricci', 799385, 230);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (206, 'Christian Kudro', 902163, 114);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (207, 'Buffy Anderson', 531900, 152);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (209, 'Elle Tempest', 136115, 353);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (210, 'Kenneth Chapman', 251922, 480);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (211, 'Jet Grier', 515056, 306);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (212, 'Kyra Li', 813927, 185);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (213, 'Avril Ifans', 237268, 330);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (215, 'Lara Squier', 781277, 376);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (216, 'Stewart Burke', 479003, 390);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (217, 'Jean-Luc Willis', 476927, 389);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (218, 'Raymond Brolin', 536548, 260);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (220, 'Nicholas LuPone', 7716, 220);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (221, 'Jesus Nakai', 855992, 234);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (222, 'Meryl Vai', 188416, 258);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (223, 'Donal Rockwell', 200827, 178);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (225, 'Swoosie Fiennes', 638130, 111);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (226, 'Rachael Rock', 768672, 210);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (227, 'William Plummer', 77975, 374);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (228, 'Sheryl Choice', 310079, 200);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (229, 'Colin Flanery', 428563, 301);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (231, 'Oliver Janssen', 805481, 105);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (232, 'Shelby Ratzenbe', 622743, 356);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (233, 'Nick O''Neill', 780750, 472);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (234, 'Kyra Russell', 470763, 409);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (236, 'Dorry Gleeson', 291816, 481);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (237, 'Chi Askew', 655756, 196);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (238, 'Tara Glenn', 379702, 487);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (239, 'Morris Suvari', 417649, 180);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (241, 'Lloyd Watley', 307846, 107);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (242, 'Arnold LaSalle', 391417, 115);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (243, 'Mike Feuerstein', 135182, 294);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (244, 'Tobey Davies', 126917, 379);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (245, 'Tcheky Diaz', 432623, 412);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (247, 'Rosario Amos', 871899, 201);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (248, 'Belinda Gilliam', 128689, 438);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (249, 'Ivan Farrell', 652730, 316);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (250, 'Larry Wells', 321997, 281);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (252, 'Pat Li', 298940, 405);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (253, 'Graham Skaggs', 665935, 359);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (254, 'Brenda Gosdin', 290333, 371);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (255, 'Carlos Collie', 298073, 233);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (256, 'Brittany Molina', 240109, 255);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (258, 'Nils von Sydow', 222462, 156);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (259, 'Robby Giraldo', 79693, 129);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (260, 'Karen Reeve', 120068, 388);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (261, 'Lois Baker', 662564, 262);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (263, 'Miles Gleeson', 451838, 498);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (264, 'Donna Brock', 795105, 310);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (265, 'Carol Withers', 383302, 423);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (266, 'Ray Arden', 660374, 209);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (268, 'Lily Shatner', 58859, 496);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (269, 'Maureen Lynch', 74798, 165);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (270, 'Geena Dreyfuss', 292632, 216);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (271, 'Bebe Evans', 121680, 410);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (272, 'Miki Ford', 642183, 442);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (273, 'Courtney Midler', 793038, 280);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (274, 'Edgar Ramirez', 565108, 403);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (275, 'Dustin Huston', 46947, 170);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (276, 'Mili Frakes', 883680, 323);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (277, 'Joely Borden', 408601, 319);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (278, 'Anne Reeves', 952232, 329);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (279, 'Joshua Gosdin', 586326, 308);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (280, 'Carlos Todd', 179383, 225);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (281, 'Stockard Gellar', 591672, 102);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (282, 'Ned Sawa', 289231, 235);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (283, 'Suzy Rodriguez', 35415, 110);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (284, 'Alice Del Toro', 620831, 164);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (285, 'Sigourney Crosb', 100805, 127);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (286, 'Debby Swank', 381370, 429);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (287, 'Bobbi Elliott', 145615, 478);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (288, 'Miles Imbruglia', 466500, 193);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (289, 'Jean-Luc Sharp', 926976, 426);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (290, 'Adrien Harris', 986087, 430);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (291, 'Marley Balin', 727493, 402);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (292, 'Stellan Griffit', 316355, 149);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (293, 'Kyra Hatosy', 148238, 441);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (294, 'Owen Tisdale', 169630, 223);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (295, 'Domingo Molina', 701795, 254);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (296, 'Howie Rispoli', 151981, 192);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (297, 'Bernie Kleinenb', 540010, 462);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (298, 'Rosanna Holmes', 303556, 238);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (299, 'Leon Winstone', 306525, 399);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (300, 'Ben', 5972, 226);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (301, 'Ava', 5669, 419);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (302, 'Amy', 12078, 448);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (303, 'Celia Cherry', 417268, 383);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (304, 'Amy', 6438, 354);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (305, 'Eli', 14260, 461);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (306, 'Amy', 3382, 269);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (307, 'Ava', 10608, 232);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (308, 'April Lattimore', 177091, 479);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (309, 'Geoffrey Palin', 859455, 221);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (310, 'Keith Li', 736203, 362);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (311, 'Woody Weisz', 420768, 332);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (312, 'Simon Bacharach', 465359, 418);
commit;
prompt 300 records committed...
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (313, 'Chazz Cantrell', 443629, 172);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (314, 'Eric Balin', 156426, 101);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (315, 'Lynette Brock', 491548, 207);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (316, 'Jared Calle', 833026, 370);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (317, 'Ava', 4356, 271);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (318, 'Eli', 14957, 378);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (319, 'Stevie Hutch', 586970, 440);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (320, 'Ava', 1612, 368);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (321, 'Jann Hauser', 537560, 195);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (322, 'Joaquim Greene', 18769, 157);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (323, 'Emma Peet', 650311, 315);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (324, 'Leonardo Shelto', 653216, 162);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (325, 'Patrick Howard', 336892, 365);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (326, 'Joshua Farina', 477508, 458);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (327, 'Eli', 13907, 417);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (328, 'Joseph Reubens', 314917, 307);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (329, 'Ava', 11720, 309);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (330, 'Amy', 1706, 257);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (331, 'Lili Skarsgard', 975183, 349);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (332, 'Ben', 10944, 380);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (333, 'Amy', 10546, 116);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (334, 'Grace Hatosy', 757849, 436);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (335, 'Eli', 10791, 252);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (336, 'Clive Kidman', 256870, 106);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (337, 'Crispin LaMond', 56554, 445);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (338, 'Morgan Dupree', 637037, 450);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (339, 'Eli', 12552, 125);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (340, 'Graham Detmer', 922324, 189);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (341, 'Eli', 14945, 407);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (342, 'Natalie Rourke', 556581, 343);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (343, 'Marty Purefoy', 12914, 231);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (344, 'Amy', 1055, 392);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (345, 'Ava', 13675, 495);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (346, 'Ava', 2139, 229);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (347, 'Eli', 1079, 366);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (348, 'Ben', 5318, 397);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (349, 'Clint Harary', 403797, 236);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (350, 'Rip Cook', 769338, 250);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (351, 'Eli', 12883, 136);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (352, 'Lloyd Ferrell', 111229, 267);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (353, 'Hank Goodall', 262648, 431);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (354, 'Eli', 8863, 408);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (355, 'Ben', 13138, 337);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (356, 'Ben', 7968, 468);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (357, 'Kenneth Holmes', 697440, 117);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (358, 'Peabo Diddley', 541373, 158);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (359, 'Maggie Benet', 423787, 266);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (360, 'Ava', 8498, 391);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (361, 'Gilbert Hauser', 914472, 141);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (362, 'Eli', 11937, 335);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (363, 'Eli', 10917, 163);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (364, 'Lydia Hamilton', 547747, 336);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (365, 'Eli', 3099, 138);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (366, 'Delbert Collins', 360161, 244);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (367, 'Amy', 11307, 184);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (368, 'Denzel Balin', 83256, 146);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (369, 'Ava', 13233, 435);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (370, 'Neil Stills', 354062, 313);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (371, 'Jeanne Lowe', 308944, 393);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (372, 'Rod Rea', 867849, 396);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (373, 'Orlando Zevon', 46839, 171);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (374, 'Ben', 2059, 344);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (375, 'Ben', 4445, 469);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (376, 'Ralph Arkin', 471477, 465);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (377, 'Ben', 8549, 488);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (378, 'Clea Bonham', 976520, 183);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (379, 'Eli', 14711, 206);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (380, 'Amy', 9359, 248);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (381, 'Eli', 9178, 118);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (382, 'Eli', 3602, 124);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (383, 'Ava', 4097, 474);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (384, 'Ben', 13973, 497);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (385, 'Eli', 1637, 331);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (386, 'Robin Crowe', 723792, 314);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (387, 'Claire Griffin', 282420, 401);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (388, 'Amy', 13864, 311);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (389, 'Eli', 7701, 241);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (390, 'Amy', 9609, 134);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (391, 'Eli', 13101, 361);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (392, 'Chazz Renfro', 944387, 300);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (393, 'Elisabeth Cara', 994912, 218);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (394, 'Colleen Potter', 660014, 499);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (395, 'Ben', 2808, 276);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (396, 'Eli', 11628, 249);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (397, 'Rose Crosby', 176055, 339);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (398, 'Ava', 5290, 375);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (399, 'Andrea Ratzenbe', 207876, 360);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (400, 'Amy', 7744, 168);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (401, 'Suzanne Mitra', 280751, 449);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (402, 'Al Womack', 741852, 120);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (403, 'Eli', 12497, 176);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (404, 'Ava', 4404, 137);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (405, 'Amy', 6612, 171);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (406, null, 5157, 155);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (407, 'Amy', 11128, 161);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (408, 'Ben', 10012, 466);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (409, 'Eli', 12637, 300);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (410, 'Ava', 8773, 195);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (411, 'Ava', 5627, 263);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (412, 'Randy Franks', 328771, 192);
commit;
prompt 400 records committed...
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (413, 'Amy', 3972, 173);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (414, 'Percy Moffat', 362101, 423);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (415, 'Pamela Marsden', 531836, 370);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (416, 'Eli', 9016, 134);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (417, 'Stellan Robinso', 62672, 226);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (418, 'Ben', 13112, 394);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (419, 'Eli', 5721, 280);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (420, 'Ben', 2197, 240);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (421, 'Fred Green', 886929, 222);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (422, 'Ava', 10947, 149);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (423, 'Eli', 2373, 437);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (424, 'Ava', 5318, 227);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (425, 'Vickie Pastore', 355881, 102);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (426, 'Warren McFadden', 341080, 479);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (427, 'Ben', 3772, 289);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (428, 'Ben', 7675, 425);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (429, 'Frances Horton', 520941, 267);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (430, 'Ava', 5358, 239);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (431, 'Ben', 7711, 109);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (432, 'Micky Hawkins', 81056, 238);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (433, 'Ava', 12402, 197);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (434, 'Gilberto Griffi', 219104, 336);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (435, 'Ava', 12508, 480);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (436, 'Red Sarsgaard', 483133, 297);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (437, 'Ava', 5221, 249);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (438, 'Ben', 11471, 177);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (439, 'Ava', 8668, 444);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (440, 'Irene Malkovich', 382160, 204);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (441, 'Millie Mellenca', 277657, 310);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (442, 'Amy', 3414, 439);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (443, 'Eli', 3696, 426);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (444, 'Ava', 2051, 159);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (445, 'Ben', 13565, 268);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (446, 'Harrison Baez', 782026, 245);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (447, 'Ava', 10726, 294);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (448, 'Ava', 2921, 332);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (449, 'Ben', 7148, 163);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (450, 'Eli', 9002, 221);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (451, 'Marley Carnes', 807194, 193);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (452, 'Ben', 6077, 228);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (453, 'Eli', 11035, 455);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (454, 'Ava', 10998, 384);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (455, 'Jay Hanley', 533500, 170);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (456, 'Patti Henstridg', 233816, 316);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (457, 'Ben', 9201, 377);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (458, 'Joshua Purefoy', 103626, 187);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (459, 'Ramsey Mortense', 1927, 417);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (460, 'Cliff Hedaya', 900881, 229);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (461, 'Amy', 6797, 420);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (462, 'Jet Warren', 951652, 301);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (463, 'Ben', 5789, 286);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (464, 'Alfred Holeman', 709289, 488);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (465, 'Ben', 6462, 110);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (466, 'Eli', 7167, 135);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (467, 'Ava', 5042, 140);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (468, 'Amy', 11522, 215);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (469, 'Ava', 4002, 211);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (470, 'Dylan Rockwell', 36793, 378);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (471, 'Amy', 9062, 427);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (472, 'Brenda Palminte', 92266, 477);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (474, 'Taylor Nielsen', 334571, 113);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (475, 'Eli', 6475, 375);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (477, 'Ava', 14510, 153);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (479, 'Eli', 5983, 165);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (480, 'Eli', 3331, 168);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (482, 'Chalee Koteas', 871271, 313);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (484, 'Eli', 14867, 319);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (485, 'Eli', 10544, 276);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (487, 'Pierce Guilfoyl', 488195, 101);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (488, 'Debi Lee', 512878, 490);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (490, 'Larry McBride', 781902, 410);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (491, 'Ava', 4227, 223);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (492, 'Ava', 12165, 413);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (494, 'Isaiah Lemmon', 946046, 142);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (495, 'Ava', 3038, 475);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (497, 'Andrew Diggs', 721233, 198);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (498, 'Ava', 11257, 124);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (499, 'Eli', 13383, 324);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (500, 'Ava', 14930, 467);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (502, 'Eli', 7692, 341);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (503, 'Eli', 4037, 218);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (505, 'Amy', 13167, 270);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (507, 'Ava', 1687, 255);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (508, 'Amy', 4570, 169);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (510, 'Eli', 6386, 355);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (512, 'Ava', 2107, 337);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (515, 'Eli', 14305, 309);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (516, 'Amy', 6426, 333);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (520, 'Amy', 14906, 103);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (525, 'Amy', 5567, 234);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (526, 'Ben', 4518, 344);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (531, 'Amy', 6831, 329);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (533, 'Amy', 3657, 496);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (534, 'Eli', 5158, 208);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (537, 'Eli', 9416, 185);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (539, 'Ben', 8535, 365);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (540, 'Eli', 4477, 351);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (543, 'Ava', 9643, 468);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (546, 'Eli', 10932, 148);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (549, 'Amy', 10209, 383);
commit;
prompt 500 records committed...
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (552, 'Amy', 14617, 216);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (554, 'Amy', 9876, 213);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (559, 'Amy', 13722, 345);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (562, 'Ava', 6561, 243);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (564, 'Eli', 4435, 434);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (572, 'Ben', 4405, 421);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (577, 'Eli', 2453, 397);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (578, 'Ben', 3465, 247);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (581, 'Amy', 12085, 207);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (588, 'Amy', 7659, 366);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (590, 'Ava', 4483, 136);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (594, 'Ava', 12013, 315);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (599, 'Ava', 14911, 393);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (600, 'Eli', 12121, 291);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (602, 'Ben', 6149, 217);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (603, 'Eli', 10422, 271);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (607, 'Eli', 9561, 373);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (610, 'Ben', 11997, 303);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (612, 'Ava', 3590, 318);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (614, 'Ben', 12873, 483);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (615, 'Ava', 4834, 130);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (617, 'Amy', 11971, 160);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (619, 'Ava', 14690, 499);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (622, 'Ben', 9979, 115);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (624, 'Amy', 7659, 298);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (627, 'Eli', 13191, 282);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (628, 'Amy', 3292, 107);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (630, 'Ben', 4902, 429);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (633, 'Ben', 10734, 461);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (634, 'Eli', 14080, 172);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (639, 'Eli', 8264, 419);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (644, 'Amy', 2989, 330);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (646, 'Amy', 4397, 141);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (650, 'Eli', 6780, 284);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (652, 'Ben', 13051, 285);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (653, 'Ava', 13994, 125);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (657, 'Amy', 13159, 469);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (661, 'Eli', 14958, 158);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (663, 'Amy', 5273, 248);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (668, 'Amy', 8238, 368);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (672, 'Amy', 9162, 292);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (673, 'Amy', 13914, 349);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (680, 'Ava', 10416, 422);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (683, 'Ava', 12265, 406);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (686, 'Eli', 3028, 492);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (691, 'Eli', 6105, 189);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (692, 'Amy', 10597, 386);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (696, 'Amy', 6567, 264);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (698, 'Amy', 10189, 314);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (700, 'Amy', 13701, 275);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (701, 'Eli', 8496, 114);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (702, 'Amy', 5159, 146);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (704, 'Eli', 2169, 457);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (705, 'Ava', 14315, 400);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (706, 'Amy', 13759, 364);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (710, 'Amy', 1443, 396);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (717, 'Eli', 14521, 241);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (719, 'Amy', 7082, 486);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (720, 'Ben', 4066, 179);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (721, 'Ben', 13940, 458);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (722, 'Ava', 9780, 459);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (724, 'Ben', 4457, 407);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (727, 'Ben', 1762, 465);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (728, 'Ben', 3597, 219);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (729, 'Ben', 11247, 295);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (730, 'Amy', 7950, 122);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (731, 'Ben', 14424, 210);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (732, 'Ben', 8791, 392);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (733, 'Ben', 1278, 273);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (734, 'Amy', 14303, 278);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (736, 'Amy', 11649, 312);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (737, 'Ben', 5542, 323);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (738, 'Ben', 9934, 321);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (739, 'Eli', 13100, 424);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (740, 'Ava', 13921, 382);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (741, 'Ben', 7279, 250);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (744, 'Ava', 2270, 440);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (749, 'Eli', 12128, 129);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (750, 'Eli', 4119, 445);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (753, 'Eli', 11574, 491);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (756, 'Ben', 10850, 235);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (757, 'Amy', 13288, 347);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (758, 'Amy', 13886, 414);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (759, 'Ben', 2924, 256);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (760, 'Amy', 11126, 387);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (761, 'Eli', 14829, 433);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (762, 'Eli', 9428, 281);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (763, 'Ben', 14232, 357);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (765, 'Eli', 10771, 212);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (774, 'Ben', 12812, 145);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (775, 'Eli', 13619, 474);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (777, 'Ava', 8226, 108);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (779, 'Ava', 14877, 196);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (780, 'Ben', 13972, 106);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (782, 'Ben', 1944, 362);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (783, 'Ava', 2864, 372);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (785, 'Ava', 11730, 328);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (787, 'Ava', 5504, 304);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (788, 'Ava', 5829, 201);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (790, 'Ava', 13400, 311);
commit;
prompt 600 records committed...
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (791, 'Ben', 11470, 358);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (792, 'Ben', 3882, 367);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (793, 'Ben', 11222, 460);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (794, 'Ben', 11763, 352);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (798, 'Eli', 14650, 151);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (799, 'Eli', 2276, 409);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (804, 'Ben', 7064, 156);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (805, 'Eli', 2317, 452);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (808, 'Eli', 12854, 435);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (809, 'Ben', 14925, 111);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (810, 'Amy', 1750, 261);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (811, 'Eli', 5885, 450);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (813, 'Eli', 2039, 381);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (816, 'Eli', 9977, 339);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (817, 'Amy', 11963, 104);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (820, 'Amy', 14738, 335);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (822, 'Amy', 12236, 451);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (823, 'Ava', 3704, 487);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (824, 'Amy', 10547, 446);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (825, 'Eli', 10832, 254);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (828, 'Amy', 8419, 188);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (830, 'Ben', 13271, 181);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (832, 'Eli', 1023, 302);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (835, 'Eli', 8525, 288);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (838, 'Amy', 13242, 220);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (842, 'Ben', 2452, 346);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (844, 'Ben', 10176, 428);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (845, 'Eli', 12824, 338);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (846, 'Eli', 12184, 340);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (848, 'Amy', 5614, 348);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (850, 'Ava', 5229, 485);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (853, 'Ben', 12984, 191);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (855, 'Eli', 11849, 139);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (856, 'Ava', 9437, 203);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (858, 'Ben', 10896, 441);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (859, 'Amy', 1096, 138);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (860, 'Eli', 13206, 232);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (862, 'Eli', 7023, 401);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (863, 'Ava', 6990, 183);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (864, 'Ava', 3248, 230);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (865, 'Ben', 10553, 360);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (866, 'Ben', 2273, 399);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (867, 'Ava', 2906, 233);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (868, 'Eli', 4710, 205);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (870, 'Ava', 10213, 209);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (873, 'Ava', 9527, 350);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (874, 'Amy', 14308, 266);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (877, 'Ben', 14538, 100);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (878, 'Amy', 1119, 133);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (879, 'Ava', 1528, 447);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (881, 'Ben', 1768, 481);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (882, 'Ben', 14147, 454);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (883, 'Ava', 12409, 237);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (885, 'Ben', 7073, 105);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (886, 'Ava', 1210, 184);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (890, 'Eli', 13798, 118);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (892, 'Eli', 3215, 258);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (895, 'Ben', 4207, 290);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (896, 'Eli', 2867, 471);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (897, 'Amy', 7620, 478);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (898, 'Amy', 10327, 244);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (899, 'Ava', 7375, 456);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (900, 'Ben', 5422, 484);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (903, 'Eli', 10973, 391);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (906, 'Ben', 9233, 380);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (907, 'Amy', 12081, 493);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (908, 'Eli', 8572, 279);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (909, 'Eli', 14666, 194);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (911, 'Ava', 14632, 353);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (914, 'Amy', 2046, 214);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (915, 'Amy', 13673, 265);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (917, 'Eli', 7135, 178);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (918, 'Ava', 4105, 371);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (919, 'Amy', 3775, 404);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (924, 'Ava', 10236, 150);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (925, 'Eli', 14534, 116);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (926, 'Amy', 1952, 166);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (928, 'Eli', 7454, 182);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (932, 'Ava', 8631, 463);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (933, 'Ava', 8078, 126);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (934, 'Ben', 14645, 438);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (935, 'Eli', 12590, 389);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (936, 'Ben', 6483, 164);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (937, 'Eli', 13899, 306);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (938, 'Ava', 10165, 415);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (941, 'Ava', 2526, 489);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (942, 'Eli', 6167, 495);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (944, 'Ava', 4886, 472);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (949, 'Amy', 9152, 482);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (950, 'Ben', 1224, 432);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (951, 'Eli', 14392, 274);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (955, 'Ava', 3850, 200);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (956, 'Amy', 10435, 376);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (957, 'Amy', 7597, 388);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (960, 'Ben', 14791, 231);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (961, 'Ben', 9359, 147);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (962, 'Ava', 11050, 246);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (963, 'Eli', 8565, 272);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (964, 'Ben', 3377, 260);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (965, 'Amy', 14860, 174);
commit;
prompt 700 records committed...
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (966, 'Eli', 1842, 202);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (968, 'Ben', 4025, 320);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (969, 'Ava', 9896, 154);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (970, 'Ava', 7901, 143);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (973, 'Ava', 12703, 299);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (975, 'Ava', 3352, 326);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (976, 'Ava', 11085, 269);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (977, 'Amy', 12000, 157);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (978, 'Eli', 3496, 476);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (980, 'Ava', 5883, 473);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (981, 'Eli', 2716, 385);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (984, 'Ava', 8318, 398);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (987, 'Ava', 9503, 436);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (988, 'Eli', 9385, 206);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (989, 'Amy', 5010, 123);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (990, 'Ava', 12334, 430);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (991, 'Ava', 10953, 494);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (992, 'Ben', 1548, 257);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (993, 'Amy', 11022, 277);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (995, 'Ava', 1631, 225);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (997, 'Ava', 8952, 442);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (999, 'Eli', 9533, 470);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (208, 'Christmas Krist', 747065, 142);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (214, 'Cesar McCann', 552555, 228);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (219, 'Blair Garofalo', 365593, 433);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (224, 'Xander Farrow', 662556, 292);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (230, 'Keith Winger', 971535, 137);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (235, 'Cyndi DiBiasio', 281832, 174);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (240, 'Jackson Mathis', 865345, 133);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (246, 'Carla Kenoly', 606510, 413);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (251, 'Whoopi Playboys', 315577, 166);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (257, 'Ned Lightfoot', 637133, 259);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (262, 'Renee Herrmann', 541495, 104);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (267, 'Mark Mars', 379344, 205);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (473, 'Amy', 7957, 127);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (476, 'Ben', 7992, 252);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (478, 'Ben', 6203, 443);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (481, 'Eli', 5524, 334);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (483, 'Ava', 13216, 259);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (486, 'Ben', 13687, 416);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (489, 'Meg Tierney', 562733, 369);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (493, 'Ava', 12773, 331);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (496, 'Willie Arthur', 27200, 262);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (501, 'Amy', 8561, 308);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (504, 'Ava', 5308, 405);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (506, 'Eli', 2268, 395);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (509, 'shaar', 991241, 190);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (514, 'Ava', 12147, 144);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (519, 'Amy', 12060, 343);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (523, 'Eli', 4542, 175);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (527, 'Eli', 1979, 464);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (532, 'Amy', 4569, 327);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (536, 'Amy', 7628, 253);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (538, 'Amy', 13349, 361);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (542, 'Amy', 10033, 359);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (547, 'Eli', 3848, 283);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (551, 'Ava', 8824, 412);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (558, 'Amy', 4535, 242);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (561, 'Ava', 3222, 293);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (566, 'Amy', 6456, 167);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (574, 'Ava', 1744, 152);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (579, 'Amy', 3415, 251);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (586, 'Eli', 7710, 411);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (591, 'Ava', 7501, 287);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (595, 'Eli', 13186, 363);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (601, 'Eli', 3928, 325);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (606, 'Ava', 12567, 403);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (609, 'Amy', 12645, 224);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (613, 'Ben', 2060, 162);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (616, 'Amy', 2095, 121);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (618, 'Eli', 8741, 296);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (623, 'Eli', 9289, 317);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (625, 'Amy', 3112, 307);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (629, 'Eli', 6265, 128);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (632, 'Eli', 2047, 453);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (638, 'Eli', 6554, 431);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (642, 'Ava', 4743, 322);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (649, 'Amy', 8451, 402);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (651, 'Eli', 13291, 498);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (654, 'Eli', 3118, 236);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (658, 'Ben', 7437, 305);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (664, 'Eli', 7281, 199);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (669, 'Ben', 5678, 132);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (674, 'Amy', 12548, 374);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (685, 'Amy', 5450, 354);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (690, 'Ben', 11814, 448);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (695, 'Ben', 2224, 180);
insert into NEW_EMPLOYEE (id_employee, name_emp, salary, id_team)
values (697, 'Eli', 10473, 356);
commit;
prompt 788 records loaded
prompt Loading ORDERS...
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('26-01-2020', 'dd-mm-yyyy'), 1, 'cash', 479);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('02-11-2021', 'dd-mm-yyyy'), 2, 'credit card', 490);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('11-03-2020', 'dd-mm-yyyy'), 3, 'bit', 300);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('12-07-2020', 'dd-mm-yyyy'), 4, 'paybox', 356);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('31-10-2021', 'dd-mm-yyyy'), 5, 'credit card', 339);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('02-11-2020', 'dd-mm-yyyy'), 6, 'paybox', 256);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('22-05-2021', 'dd-mm-yyyy'), 7, 'cash', 193);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('24-05-2020', 'dd-mm-yyyy'), 8, 'credit card', 103);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('09-09-2021', 'dd-mm-yyyy'), 9, 'paybox', 109);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('27-05-2021', 'dd-mm-yyyy'), 10, 'bit', 133);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('19-02-2021', 'dd-mm-yyyy'), 11, 'cash', 366);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('26-08-2021', 'dd-mm-yyyy'), 12, 'cash', 264);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('01-04-2020', 'dd-mm-yyyy'), 13, 'paybox', 410);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('18-08-2021', 'dd-mm-yyyy'), 14, 'cash', 393);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('12-05-2020', 'dd-mm-yyyy'), 15, 'paybox', 422);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('10-10-2021', 'dd-mm-yyyy'), 16, 'paybox', 351);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('31-05-2020', 'dd-mm-yyyy'), 17, 'bit', 427);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('03-11-2021', 'dd-mm-yyyy'), 18, 'bit', 378);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-11-2021', 'dd-mm-yyyy'), 19, 'cash', 480);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('24-05-2020', 'dd-mm-yyyy'), 20, 'paybox', 164);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('18-12-2021', 'dd-mm-yyyy'), 21, 'bit', 247);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('12-06-2020', 'dd-mm-yyyy'), 22, 'paybox', 309);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('19-06-2020', 'dd-mm-yyyy'), 23, 'paybox', 160);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('08-03-2021', 'dd-mm-yyyy'), 24, 'credit card', 163);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-06-2021', 'dd-mm-yyyy'), 25, 'credit card', 346);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-11-2021', 'dd-mm-yyyy'), 26, 'bit', 143);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('18-05-2020', 'dd-mm-yyyy'), 27, 'credit card', 235);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('18-09-2021', 'dd-mm-yyyy'), 28, 'paybox', 418);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('17-12-2021', 'dd-mm-yyyy'), 29, 'bit', 494);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-04-2020', 'dd-mm-yyyy'), 30, 'paybox', 455);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-07-2021', 'dd-mm-yyyy'), 31, 'credit card', 284);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('07-05-2021', 'dd-mm-yyyy'), 32, 'cash', 303);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('24-03-2021', 'dd-mm-yyyy'), 33, 'paybox', 299);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('25-08-2021', 'dd-mm-yyyy'), 34, 'credit card', 481);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-06-2021', 'dd-mm-yyyy'), 35, 'paybox', 226);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('06-02-2021', 'dd-mm-yyyy'), 36, 'credit card', 324);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('06-04-2021', 'dd-mm-yyyy'), 37, 'paybox', 110);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('23-07-2021', 'dd-mm-yyyy'), 38, 'paybox', 167);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('07-08-2020', 'dd-mm-yyyy'), 39, 'bit', 355);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('09-07-2021', 'dd-mm-yyyy'), 40, 'credit card', 275);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('11-05-2020', 'dd-mm-yyyy'), 41, 'paybox', 454);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-01-2021', 'dd-mm-yyyy'), 42, 'credit card', 273);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('21-12-2020', 'dd-mm-yyyy'), 43, 'bit', 446);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('27-07-2020', 'dd-mm-yyyy'), 44, 'cash', 153);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('05-12-2020', 'dd-mm-yyyy'), 45, 'credit card', 357);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('16-05-2020', 'dd-mm-yyyy'), 46, 'cash', 244);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('22-06-2021', 'dd-mm-yyyy'), 47, 'paybox', 440);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('27-06-2021', 'dd-mm-yyyy'), 48, 'credit card', 349);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('24-05-2021', 'dd-mm-yyyy'), 49, 'bit', 497);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('25-03-2021', 'dd-mm-yyyy'), 50, 'paybox', 342);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('22-12-2021', 'dd-mm-yyyy'), 51, 'cash', 461);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('02-09-2020', 'dd-mm-yyyy'), 52, 'cash', 291);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('16-01-2020', 'dd-mm-yyyy'), 53, 'paybox', 396);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('05-04-2020', 'dd-mm-yyyy'), 54, 'paybox', 336);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('28-02-2021', 'dd-mm-yyyy'), 55, 'cash', 477);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('24-07-2021', 'dd-mm-yyyy'), 56, 'credit card', 470);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('05-12-2020', 'dd-mm-yyyy'), 57, 'credit card', 170);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('14-02-2021', 'dd-mm-yyyy'), 58, 'paybox', 397);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('31-05-2020', 'dd-mm-yyyy'), 59, 'paybox', 240);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('28-06-2020', 'dd-mm-yyyy'), 60, 'cash', 200);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('21-09-2021', 'dd-mm-yyyy'), 61, 'cash', 198);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('24-04-2020', 'dd-mm-yyyy'), 62, 'credit card', 431);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('02-09-2021', 'dd-mm-yyyy'), 63, 'bit', 493);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-08-2020', 'dd-mm-yyyy'), 64, 'bit', 171);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('07-08-2021', 'dd-mm-yyyy'), 65, 'credit card', 243);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('19-01-2021', 'dd-mm-yyyy'), 66, 'cash', 295);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('23-04-2021', 'dd-mm-yyyy'), 67, 'credit card', 263);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('22-08-2021', 'dd-mm-yyyy'), 68, 'paybox', 321);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('10-02-2021', 'dd-mm-yyyy'), 69, 'bit', 301);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('24-02-2021', 'dd-mm-yyyy'), 70, 'bit', 457);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('10-01-2020', 'dd-mm-yyyy'), 71, 'paybox', 469);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('16-12-2021', 'dd-mm-yyyy'), 72, 'credit card', 317);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('26-01-2020', 'dd-mm-yyyy'), 73, 'credit card', 330);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('24-11-2020', 'dd-mm-yyyy'), 74, 'cash', 359);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('14-09-2020', 'dd-mm-yyyy'), 75, 'cash', 270);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('06-04-2020', 'dd-mm-yyyy'), 76, 'credit card', 450);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('25-05-2021', 'dd-mm-yyyy'), 77, 'bit', 156);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('03-12-2020', 'dd-mm-yyyy'), 78, 'credit card', 335);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('17-04-2020', 'dd-mm-yyyy'), 79, 'credit card', 368);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('27-07-2021', 'dd-mm-yyyy'), 80, 'paybox', 360);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('12-01-2021', 'dd-mm-yyyy'), 81, 'cash', 445);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-01-2020', 'dd-mm-yyyy'), 82, 'cash', 182);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('05-09-2021', 'dd-mm-yyyy'), 83, 'paybox', 416);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('13-01-2021', 'dd-mm-yyyy'), 84, 'bit', 320);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('13-10-2021', 'dd-mm-yyyy'), 85, 'credit card', 169);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('26-04-2021', 'dd-mm-yyyy'), 86, 'credit card', 392);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('25-07-2021', 'dd-mm-yyyy'), 87, 'bit', 486);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('13-11-2021', 'dd-mm-yyyy'), 88, 'paybox', 483);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('20-03-2021', 'dd-mm-yyyy'), 89, 'cash', 224);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('20-07-2021', 'dd-mm-yyyy'), 90, 'cash', 180);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-05-2020', 'dd-mm-yyyy'), 91, 'credit card', 242);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('01-03-2021', 'dd-mm-yyyy'), 92, 'credit card', 179);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('07-07-2021', 'dd-mm-yyyy'), 93, 'cash', 436);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('18-07-2021', 'dd-mm-yyyy'), 94, 'cash', 282);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('19-12-2021', 'dd-mm-yyyy'), 95, 'bit', 217);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('27-10-2021', 'dd-mm-yyyy'), 96, 'credit card', 472);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('17-05-2021', 'dd-mm-yyyy'), 97, 'bit', 209);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('14-10-2021', 'dd-mm-yyyy'), 98, 'cash', 343);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('31-10-2021', 'dd-mm-yyyy'), 99, 'credit card', 417);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('21-05-2020', 'dd-mm-yyyy'), 100, 'paybox', 316);
commit;
prompt 100 records committed...
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('12-11-2021', 'dd-mm-yyyy'), 101, 'credit card', 236);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-11-2021', 'dd-mm-yyyy'), 102, 'cash', 265);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('26-12-2020', 'dd-mm-yyyy'), 103, 'cash', 116);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-04-2021', 'dd-mm-yyyy'), 104, 'bit', 389);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('23-01-2021', 'dd-mm-yyyy'), 105, 'cash', 248);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('20-07-2021', 'dd-mm-yyyy'), 106, 'bit', 111);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('17-01-2020', 'dd-mm-yyyy'), 107, 'cash', 221);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('23-03-2021', 'dd-mm-yyyy'), 108, 'bit', 262);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('29-04-2020', 'dd-mm-yyyy'), 109, 'bit', 402);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('27-04-2021', 'dd-mm-yyyy'), 110, 'credit card', 232);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('03-05-2021', 'dd-mm-yyyy'), 111, 'paybox', 206);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('24-03-2021', 'dd-mm-yyyy'), 112, 'cash', 475);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-08-2020', 'dd-mm-yyyy'), 113, 'bit', 136);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('03-02-2020', 'dd-mm-yyyy'), 114, 'paybox', 159);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-06-2020', 'dd-mm-yyyy'), 115, 'credit card', 249);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('23-10-2021', 'dd-mm-yyyy'), 116, 'credit card', 197);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('12-04-2020', 'dd-mm-yyyy'), 117, 'bit', 448);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('07-09-2021', 'dd-mm-yyyy'), 118, 'cash', 395);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('08-09-2020', 'dd-mm-yyyy'), 119, 'paybox', 101);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('01-09-2020', 'dd-mm-yyyy'), 120, 'credit card', 287);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('24-10-2020', 'dd-mm-yyyy'), 121, 'cash', 362);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('07-04-2021', 'dd-mm-yyyy'), 122, 'bit', 154);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('05-09-2021', 'dd-mm-yyyy'), 123, 'credit card', 127);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('10-01-2021', 'dd-mm-yyyy'), 124, 'credit card', 162);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('22-12-2020', 'dd-mm-yyyy'), 125, 'cash', 137);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('15-09-2021', 'dd-mm-yyyy'), 126, 'paybox', 134);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('06-07-2021', 'dd-mm-yyyy'), 127, 'bit', 123);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('03-01-2020', 'dd-mm-yyyy'), 128, 'bit', 433);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('19-04-2021', 'dd-mm-yyyy'), 129, 'credit card', 158);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('22-12-2021', 'dd-mm-yyyy'), 130, 'cash', 199);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('26-03-2021', 'dd-mm-yyyy'), 131, 'credit card', 471);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('02-01-2021', 'dd-mm-yyyy'), 132, 'bit', 119);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('06-06-2020', 'dd-mm-yyyy'), 133, 'credit card', 251);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('29-06-2021', 'dd-mm-yyyy'), 134, 'paybox', 216);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('09-03-2021', 'dd-mm-yyyy'), 135, 'credit card', 258);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('27-01-2020', 'dd-mm-yyyy'), 136, 'cash', 498);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('10-07-2021', 'dd-mm-yyyy'), 137, 'bit', 285);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('11-07-2020', 'dd-mm-yyyy'), 138, 'credit card', 191);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-05-2021', 'dd-mm-yyyy'), 139, 'cash', 391);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('13-04-2020', 'dd-mm-yyyy'), 140, 'credit card', 149);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('01-08-2020', 'dd-mm-yyyy'), 141, 'bit', 283);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('22-07-2020', 'dd-mm-yyyy'), 142, 'paybox', 152);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('29-12-2021', 'dd-mm-yyyy'), 143, 'credit card', 196);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('09-02-2020', 'dd-mm-yyyy'), 144, 'bit', 438);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('14-11-2020', 'dd-mm-yyyy'), 145, 'paybox', 113);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('22-08-2020', 'dd-mm-yyyy'), 146, 'credit card', 400);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('14-06-2021', 'dd-mm-yyyy'), 147, 'cash', 223);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('19-10-2021', 'dd-mm-yyyy'), 148, 'bit', 146);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('07-04-2021', 'dd-mm-yyyy'), 149, 'bit', 439);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('24-10-2021', 'dd-mm-yyyy'), 150, 'paybox', 205);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('12-02-2021', 'dd-mm-yyyy'), 151, 'paybox', 139);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-10-2021', 'dd-mm-yyyy'), 152, 'bit', 175);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('20-08-2020', 'dd-mm-yyyy'), 153, 'cash', 340);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('09-06-2021', 'dd-mm-yyyy'), 154, 'credit card', 255);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-06-2021', 'dd-mm-yyyy'), 155, 'paybox', 390);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('27-11-2020', 'dd-mm-yyyy'), 156, 'paybox', 135);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('22-03-2020', 'dd-mm-yyyy'), 157, 'bit', 128);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('05-08-2021', 'dd-mm-yyyy'), 158, 'paybox', 174);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('27-08-2020', 'dd-mm-yyyy'), 159, 'paybox', 459);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('26-01-2021', 'dd-mm-yyyy'), 160, 'paybox', 323);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-01-2020', 'dd-mm-yyyy'), 161, 'bit', 304);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('11-06-2021', 'dd-mm-yyyy'), 162, 'cash', 413);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-08-2020', 'dd-mm-yyyy'), 163, 'paybox', 421);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('10-05-2021', 'dd-mm-yyyy'), 164, 'bit', 165);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('07-02-2021', 'dd-mm-yyyy'), 165, 'cash', 365);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('16-08-2021', 'dd-mm-yyyy'), 166, 'paybox', 278);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('10-08-2021', 'dd-mm-yyyy'), 167, 'paybox', 430);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-07-2020', 'dd-mm-yyyy'), 168, 'bit', 269);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('05-02-2020', 'dd-mm-yyyy'), 169, 'credit card', 277);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('05-08-2020', 'dd-mm-yyyy'), 170, 'paybox', 155);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('09-09-2020', 'dd-mm-yyyy'), 171, 'bit', 437);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('23-04-2021', 'dd-mm-yyyy'), 172, 'bit', 176);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('18-06-2021', 'dd-mm-yyyy'), 173, 'cash', 203);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('15-01-2021', 'dd-mm-yyyy'), 174, 'cash', 487);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('18-11-2021', 'dd-mm-yyyy'), 175, 'bit', 292);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('06-12-2020', 'dd-mm-yyyy'), 176, 'cash', 423);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('27-11-2021', 'dd-mm-yyyy'), 177, 'cash', 306);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('25-03-2020', 'dd-mm-yyyy'), 178, 'cash', 499);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('27-08-2020', 'dd-mm-yyyy'), 179, 'cash', 222);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('01-05-2021', 'dd-mm-yyyy'), 180, 'credit card', 194);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-10-2020', 'dd-mm-yyyy'), 181, 'paybox', 307);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('24-05-2020', 'dd-mm-yyyy'), 182, 'cash', 211);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('16-04-2020', 'dd-mm-yyyy'), 183, 'cash', 124);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('12-08-2021', 'dd-mm-yyyy'), 184, 'credit card', 447);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('07-05-2020', 'dd-mm-yyyy'), 185, 'paybox', 238);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('05-02-2021', 'dd-mm-yyyy'), 186, 'paybox', 108);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('01-04-2020', 'dd-mm-yyyy'), 187, 'cash', 161);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('26-05-2020', 'dd-mm-yyyy'), 188, 'credit card', 305);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('13-05-2020', 'dd-mm-yyyy'), 189, 'credit card', 474);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('18-08-2021', 'dd-mm-yyyy'), 190, 'credit card', 122);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('21-07-2020', 'dd-mm-yyyy'), 191, 'credit card', 318);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('23-03-2020', 'dd-mm-yyyy'), 192, 'credit card', 381);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('01-04-2020', 'dd-mm-yyyy'), 193, 'paybox', 271);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('09-05-2021', 'dd-mm-yyyy'), 194, 'paybox', 354);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('25-02-2020', 'dd-mm-yyyy'), 195, 'bit', 456);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('23-11-2021', 'dd-mm-yyyy'), 196, 'bit', 425);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('22-07-2021', 'dd-mm-yyyy'), 197, 'cash', 121);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('07-02-2020', 'dd-mm-yyyy'), 198, 'credit card', 488);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('19-04-2021', 'dd-mm-yyyy'), 199, 'credit card', 237);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('09-11-2020', 'dd-mm-yyyy'), 200, 'paybox', 266);
commit;
prompt 200 records committed...
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('01-05-2020', 'dd-mm-yyyy'), 201, 'cash', 279);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('15-05-2021', 'dd-mm-yyyy'), 202, 'credit card', 114);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('21-04-2020', 'dd-mm-yyyy'), 203, 'credit card', 201);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('29-03-2021', 'dd-mm-yyyy'), 204, 'credit card', 485);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('23-12-2021', 'dd-mm-yyyy'), 205, 'cash', 409);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('02-08-2020', 'dd-mm-yyyy'), 206, 'bit', 302);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('07-05-2020', 'dd-mm-yyyy'), 207, 'credit card', 489);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('19-07-2020', 'dd-mm-yyyy'), 208, 'paybox', 344);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-03-2020', 'dd-mm-yyyy'), 209, 'credit card', 363);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('29-11-2021', 'dd-mm-yyyy'), 210, 'bit', 213);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('29-07-2021', 'dd-mm-yyyy'), 212, 'paybox', 394);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('12-12-2020', 'dd-mm-yyyy'), 213, 'paybox', 173);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('22-02-2020', 'dd-mm-yyyy'), 214, 'paybox', 229);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('02-11-2021', 'dd-mm-yyyy'), 215, 'cash', 492);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('19-08-2020', 'dd-mm-yyyy'), 216, 'paybox', 129);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('03-07-2020', 'dd-mm-yyyy'), 217, 'paybox', 452);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-06-2021', 'dd-mm-yyyy'), 219, 'cash', 442);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('15-09-2021', 'dd-mm-yyyy'), 220, 'credit card', 105);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('14-03-2021', 'dd-mm-yyyy'), 221, 'credit card', 443);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('06-08-2020', 'dd-mm-yyyy'), 222, 'bit', 225);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('18-09-2020', 'dd-mm-yyyy'), 223, 'credit card', 252);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('01-05-2021', 'dd-mm-yyyy'), 224, 'credit card', 231);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('27-05-2020', 'dd-mm-yyyy'), 225, 'bit', 334);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('31-08-2020', 'dd-mm-yyyy'), 227, 'credit card', 253);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('18-06-2021', 'dd-mm-yyyy'), 228, 'bit', 131);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('20-05-2021', 'dd-mm-yyyy'), 229, 'cash', 412);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('07-11-2020', 'dd-mm-yyyy'), 230, 'paybox', 332);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('27-07-2020', 'dd-mm-yyyy'), 231, 'paybox', 387);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('12-05-2020', 'dd-mm-yyyy'), 232, 'credit card', 373);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('29-02-2020', 'dd-mm-yyyy'), 233, 'paybox', 241);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('24-07-2020', 'dd-mm-yyyy'), 234, 'paybox', 449);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-11-2020', 'dd-mm-yyyy'), 235, 'bit', 361);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('16-06-2021', 'dd-mm-yyyy'), 236, 'paybox', 476);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('02-06-2020', 'dd-mm-yyyy'), 237, 'cash', 384);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('02-08-2021', 'dd-mm-yyyy'), 238, 'credit card', 312);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('10-04-2020', 'dd-mm-yyyy'), 239, 'credit card', 473);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('24-03-2020', 'dd-mm-yyyy'), 240, 'bit', 172);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('06-05-2020', 'dd-mm-yyyy'), 241, 'credit card', 466);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('03-10-2020', 'dd-mm-yyyy'), 242, 'credit card', 130);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('06-03-2020', 'dd-mm-yyyy'), 243, 'bit', 189);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-01-2021', 'dd-mm-yyyy'), 244, 'paybox', 250);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('11-07-2021', 'dd-mm-yyyy'), 245, 'bit', 326);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('07-04-2021', 'dd-mm-yyyy'), 246, 'paybox', 245);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('27-12-2021', 'dd-mm-yyyy'), 247, 'cash', 371);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('19-03-2020', 'dd-mm-yyyy'), 248, 'credit card', 157);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('22-10-2021', 'dd-mm-yyyy'), 249, 'bit', 184);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('17-07-2021', 'dd-mm-yyyy'), 250, 'cash', 166);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('05-10-2021', 'dd-mm-yyyy'), 251, 'paybox', 385);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-07-2020', 'dd-mm-yyyy'), 252, 'credit card', 210);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('08-03-2020', 'dd-mm-yyyy'), 253, 'paybox', 259);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('17-02-2020', 'dd-mm-yyyy'), 254, 'cash', 168);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('20-02-2021', 'dd-mm-yyyy'), 255, 'credit card', 234);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('20-05-2020', 'dd-mm-yyyy'), 256, 'paybox', 132);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('03-09-2021', 'dd-mm-yyyy'), 257, 'credit card', 435);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('21-07-2020', 'dd-mm-yyyy'), 258, 'bit', 444);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('23-03-2020', 'dd-mm-yyyy'), 259, 'cash', 188);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('10-09-2020', 'dd-mm-yyyy'), 260, 'credit card', 337);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('03-03-2020', 'dd-mm-yyyy'), 261, 'paybox', 117);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('16-03-2020', 'dd-mm-yyyy'), 262, 'cash', 420);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('13-06-2020', 'dd-mm-yyyy'), 263, 'bit', 327);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('31-07-2021', 'dd-mm-yyyy'), 264, 'credit card', 190);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('10-05-2021', 'dd-mm-yyyy'), 265, 'paybox', 345);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('18-03-2021', 'dd-mm-yyyy'), 266, 'bit', 254);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('10-06-2021', 'dd-mm-yyyy'), 267, 'paybox', 347);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('16-05-2021', 'dd-mm-yyyy'), 268, 'paybox', 142);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('15-07-2021', 'dd-mm-yyyy'), 269, 'credit card', 383);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('21-04-2021', 'dd-mm-yyyy'), 270, 'paybox', 147);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-11-2021', 'dd-mm-yyyy'), 271, 'bit', 230);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('07-06-2021', 'dd-mm-yyyy'), 272, 'cash', 288);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('19-07-2020', 'dd-mm-yyyy'), 273, 'paybox', 460);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('15-09-2020', 'dd-mm-yyyy'), 274, 'credit card', 215);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('15-07-2020', 'dd-mm-yyyy'), 275, 'bit', 294);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('22-01-2021', 'dd-mm-yyyy'), 276, 'credit card', 382);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('13-08-2020', 'dd-mm-yyyy'), 277, 'cash', 407);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('02-01-2021', 'dd-mm-yyyy'), 278, 'cash', 219);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('23-10-2020', 'dd-mm-yyyy'), 279, 'cash', 404);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('07-05-2020', 'dd-mm-yyyy'), 280, 'bit', 144);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('25-03-2021', 'dd-mm-yyyy'), 281, 'cash', 120);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('08-01-2020', 'dd-mm-yyyy'), 282, 'cash', 319);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('10-12-2021', 'dd-mm-yyyy'), 283, 'credit card', 281);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('22-01-2021', 'dd-mm-yyyy'), 284, 'credit card', 399);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('09-01-2020', 'dd-mm-yyyy'), 285, 'cash', 290);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('07-09-2020', 'dd-mm-yyyy'), 286, 'paybox', 293);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('15-09-2021', 'dd-mm-yyyy'), 287, 'paybox', 183);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('07-07-2021', 'dd-mm-yyyy'), 288, 'credit card', 102);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('25-08-2021', 'dd-mm-yyyy'), 289, 'credit card', 369);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-11-2021', 'dd-mm-yyyy'), 290, 'bit', 428);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('07-05-2021', 'dd-mm-yyyy'), 291, 'credit card', 297);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('13-06-2021', 'dd-mm-yyyy'), 292, 'paybox', 375);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('26-08-2020', 'dd-mm-yyyy'), 293, 'credit card', 434);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('27-06-2021', 'dd-mm-yyyy'), 294, 'bit', 367);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('07-06-2020', 'dd-mm-yyyy'), 295, 'bit', 358);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('26-11-2020', 'dd-mm-yyyy'), 296, 'bit', 463);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('06-05-2020', 'dd-mm-yyyy'), 297, 'credit card', 496);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('03-12-2020', 'dd-mm-yyyy'), 298, 'credit card', 192);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('28-09-2021', 'dd-mm-yyyy'), 299, 'paybox', 424);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('02-02-2021', 'dd-mm-yyyy'), 300, 'bit', 138);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('07-09-2021', 'dd-mm-yyyy'), 301, 'cash', 465);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('23-07-2020', 'dd-mm-yyyy'), 302, 'bit', 207);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('03-07-2020', 'dd-mm-yyyy'), 303, 'paybox', 406);
commit;
prompt 300 records committed...
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('23-09-2021', 'dd-mm-yyyy'), 304, 'bit', 107);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('27-06-2020', 'dd-mm-yyyy'), 305, 'paybox', 341);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('13-11-2021', 'dd-mm-yyyy'), 306, 'paybox', 338);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('26-02-2021', 'dd-mm-yyyy'), 307, 'credit card', 329);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('26-02-2020', 'dd-mm-yyyy'), 308, 'cash', 451);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('27-07-2021', 'dd-mm-yyyy'), 309, 'credit card', 403);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('25-12-2020', 'dd-mm-yyyy'), 310, 'paybox', 408);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('10-08-2020', 'dd-mm-yyyy'), 311, 'bit', 233);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('28-04-2021', 'dd-mm-yyyy'), 312, 'bit', 267);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('23-02-2020', 'dd-mm-yyyy'), 313, 'paybox', 468);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('14-09-2020', 'dd-mm-yyyy'), 314, 'credit card', 115);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-10-2020', 'dd-mm-yyyy'), 315, 'paybox', 405);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('26-10-2021', 'dd-mm-yyyy'), 316, 'paybox', 415);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('06-07-2020', 'dd-mm-yyyy'), 317, 'cash', 464);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-09-2021', 'dd-mm-yyyy'), 318, 'paybox', 467);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('15-04-2021', 'dd-mm-yyyy'), 319, 'credit card', 177);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('29-10-2021', 'dd-mm-yyyy'), 320, 'credit card', 228);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('28-02-2021', 'dd-mm-yyyy'), 321, 'cash', 482);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('13-02-2020', 'dd-mm-yyyy'), 322, 'credit card', 458);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('05-05-2020', 'dd-mm-yyyy'), 323, 'credit card', 328);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('09-07-2020', 'dd-mm-yyyy'), 324, 'paybox', 376);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('28-02-2020', 'dd-mm-yyyy'), 325, 'paybox', 202);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('29-06-2020', 'dd-mm-yyyy'), 326, 'paybox', 272);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('11-08-2020', 'dd-mm-yyyy'), 327, 'paybox', 280);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('03-06-2021', 'dd-mm-yyyy'), 328, 'bit', 148);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('09-07-2020', 'dd-mm-yyyy'), 329, 'paybox', 112);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('02-08-2021', 'dd-mm-yyyy'), 330, 'credit card', 187);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('05-05-2020', 'dd-mm-yyyy'), 331, 'cash', 462);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('11-10-2021', 'dd-mm-yyyy'), 332, 'paybox', 478);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-07-2021', 'dd-mm-yyyy'), 333, 'paybox', 353);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('10-07-2021', 'dd-mm-yyyy'), 334, 'credit card', 106);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('20-10-2020', 'dd-mm-yyyy'), 335, 'cash', 296);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('10-12-2021', 'dd-mm-yyyy'), 336, 'bit', 274);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('11-05-2020', 'dd-mm-yyyy'), 337, 'bit', 311);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('24-03-2021', 'dd-mm-yyyy'), 338, 'cash', 414);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('20-08-2021', 'dd-mm-yyyy'), 339, 'cash', 204);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-09-2020', 'dd-mm-yyyy'), 340, 'credit card', 310);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('23-12-2020', 'dd-mm-yyyy'), 341, 'cash', 350);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('15-10-2021', 'dd-mm-yyyy'), 342, 'credit card', 325);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-03-2020', 'dd-mm-yyyy'), 343, 'cash', 118);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('19-11-2020', 'dd-mm-yyyy'), 344, 'credit card', 348);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('23-12-2021', 'dd-mm-yyyy'), 345, 'paybox', 352);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('31-10-2021', 'dd-mm-yyyy'), 346, 'paybox', 260);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('06-03-2021', 'dd-mm-yyyy'), 347, 'credit card', 218);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('06-04-2020', 'dd-mm-yyyy'), 348, 'credit card', 276);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('26-09-2021', 'dd-mm-yyyy'), 349, 'paybox', 484);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('25-11-2020', 'dd-mm-yyyy'), 350, 'cash', 331);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('24-06-2021', 'dd-mm-yyyy'), 351, 'bit', 333);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('27-05-2021', 'dd-mm-yyyy'), 352, 'paybox', 495);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('28-10-2021', 'dd-mm-yyyy'), 353, 'cash', 185);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('01-11-2020', 'dd-mm-yyyy'), 354, 'credit card', 429);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('31-01-2020', 'dd-mm-yyyy'), 355, 'credit card', 208);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('18-10-2020', 'dd-mm-yyyy'), 356, 'bit', 322);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('19-05-2020', 'dd-mm-yyyy'), 357, 'bit', 257);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('18-02-2021', 'dd-mm-yyyy'), 358, 'bit', 491);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('11-03-2021', 'dd-mm-yyyy'), 359, 'bit', 140);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('20-04-2020', 'dd-mm-yyyy'), 360, 'paybox', 426);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-07-2021', 'dd-mm-yyyy'), 361, 'credit card', 286);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-05-2020', 'dd-mm-yyyy'), 362, 'paybox', 125);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('19-08-2021', 'dd-mm-yyyy'), 363, 'bit', 181);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('27-06-2020', 'dd-mm-yyyy'), 364, 'cash', 419);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('09-08-2020', 'dd-mm-yyyy'), 365, 'cash', 372);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-05-2021', 'dd-mm-yyyy'), 366, 'credit card', 151);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('28-03-2020', 'dd-mm-yyyy'), 367, 'paybox', 104);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('17-01-2020', 'dd-mm-yyyy'), 368, 'cash', 227);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('16-10-2021', 'dd-mm-yyyy'), 369, 'paybox', 364);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-02-2021', 'dd-mm-yyyy'), 370, 'credit card', 126);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-03-2021', 'dd-mm-yyyy'), 371, 'cash', 298);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('16-02-2021', 'dd-mm-yyyy'), 372, 'cash', 195);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-03-2021', 'dd-mm-yyyy'), 373, 'bit', 315);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('23-04-2021', 'dd-mm-yyyy'), 374, 'credit card', 261);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('17-08-2021', 'dd-mm-yyyy'), 375, 'paybox', 374);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('02-10-2020', 'dd-mm-yyyy'), 376, 'credit card', 145);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('05-08-2020', 'dd-mm-yyyy'), 377, 'paybox', 379);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('05-07-2020', 'dd-mm-yyyy'), 378, 'bit', 308);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-07-2020', 'dd-mm-yyyy'), 379, 'bit', 370);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('29-02-2020', 'dd-mm-yyyy'), 380, 'bit', 432);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('19-04-2020', 'dd-mm-yyyy'), 381, 'cash', 377);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('25-01-2021', 'dd-mm-yyyy'), 382, 'cash', 141);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('08-07-2020', 'dd-mm-yyyy'), 383, 'bit', 289);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('15-03-2020', 'dd-mm-yyyy'), 384, 'paybox', 186);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('31-12-2020', 'dd-mm-yyyy'), 385, 'credit card', 398);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('25-08-2020', 'dd-mm-yyyy'), 386, 'cash', 380);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('02-03-2021', 'dd-mm-yyyy'), 387, 'credit card', 314);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('12-09-2020', 'dd-mm-yyyy'), 388, 'credit card', 178);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('03-12-2020', 'dd-mm-yyyy'), 389, 'cash', 411);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('01-08-2021', 'dd-mm-yyyy'), 390, 'credit card', 386);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('24-03-2020', 'dd-mm-yyyy'), 391, 'cash', 214);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('29-10-2021', 'dd-mm-yyyy'), 392, 'credit card', 268);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('28-03-2021', 'dd-mm-yyyy'), 393, 'cash', 150);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('27-03-2020', 'dd-mm-yyyy'), 394, 'credit card', 388);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('10-02-2021', 'dd-mm-yyyy'), 395, 'bit', 100);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-06-2021', 'dd-mm-yyyy'), 396, 'credit card', 453);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('07-06-2021', 'dd-mm-yyyy'), 397, 'credit card', 220);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('25-05-2020', 'dd-mm-yyyy'), 398, 'cash', 246);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('27-03-2020', 'dd-mm-yyyy'), 399, 'credit card', 441);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('17-09-2020', 'dd-mm-yyyy'), 400, 'cash', 401);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('11-09-2020', 'dd-mm-yyyy'), 401, 'credit card', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('22-01-2021', 'dd-mm-yyyy'), 402, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('25-09-2021', 'dd-mm-yyyy'), 403, 'cash', null);
commit;
prompt 400 records committed...
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('25-12-2021', 'dd-mm-yyyy'), 404, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('14-07-2020', 'dd-mm-yyyy'), 405, 'credit card', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('20-09-2021', 'dd-mm-yyyy'), 406, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-05-2020', 'dd-mm-yyyy'), 407, 'credit card', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('17-03-2020', 'dd-mm-yyyy'), 408, 'credit card', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-09-2021', 'dd-mm-yyyy'), 409, 'credit card', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('25-09-2021', 'dd-mm-yyyy'), 410, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('22-01-2020', 'dd-mm-yyyy'), 411, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('05-08-2020', 'dd-mm-yyyy'), 412, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('17-12-2020', 'dd-mm-yyyy'), 413, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('11-12-2020', 'dd-mm-yyyy'), 414, 'credit card', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('26-10-2021', 'dd-mm-yyyy'), 415, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('09-09-2020', 'dd-mm-yyyy'), 416, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('06-08-2020', 'dd-mm-yyyy'), 417, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-07-2021', 'dd-mm-yyyy'), 418, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-06-2020', 'dd-mm-yyyy'), 419, 'credit card', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('12-05-2021', 'dd-mm-yyyy'), 420, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('28-04-2020', 'dd-mm-yyyy'), 421, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('10-02-2020', 'dd-mm-yyyy'), 422, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('01-02-2020', 'dd-mm-yyyy'), 423, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('29-08-2020', 'dd-mm-yyyy'), 424, 'credit card', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('13-04-2021', 'dd-mm-yyyy'), 425, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('23-02-2021', 'dd-mm-yyyy'), 426, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('10-05-2020', 'dd-mm-yyyy'), 427, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('17-09-2021', 'dd-mm-yyyy'), 428, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('26-11-2021', 'dd-mm-yyyy'), 429, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('17-04-2021', 'dd-mm-yyyy'), 430, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-01-2020', 'dd-mm-yyyy'), 431, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('28-07-2020', 'dd-mm-yyyy'), 432, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('10-10-2021', 'dd-mm-yyyy'), 433, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('11-01-2021', 'dd-mm-yyyy'), 434, 'credit card', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-11-2020', 'dd-mm-yyyy'), 435, 'credit card', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('13-02-2020', 'dd-mm-yyyy'), 436, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('08-07-2021', 'dd-mm-yyyy'), 437, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-08-2020', 'dd-mm-yyyy'), 438, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('29-11-2021', 'dd-mm-yyyy'), 439, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-11-2021', 'dd-mm-yyyy'), 440, 'credit card', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('29-08-2020', 'dd-mm-yyyy'), 441, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('03-11-2021', 'dd-mm-yyyy'), 442, 'credit card', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('08-09-2020', 'dd-mm-yyyy'), 443, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('31-01-2020', 'dd-mm-yyyy'), 444, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('07-07-2021', 'dd-mm-yyyy'), 445, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('20-02-2020', 'dd-mm-yyyy'), 446, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('24-08-2021', 'dd-mm-yyyy'), 447, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('13-03-2021', 'dd-mm-yyyy'), 448, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('19-01-2021', 'dd-mm-yyyy'), 449, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('23-03-2020', 'dd-mm-yyyy'), 450, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('17-10-2021', 'dd-mm-yyyy'), 451, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('19-02-2020', 'dd-mm-yyyy'), 452, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('09-10-2020', 'dd-mm-yyyy'), 453, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-02-2020', 'dd-mm-yyyy'), 454, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('07-08-2020', 'dd-mm-yyyy'), 455, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('20-12-2021', 'dd-mm-yyyy'), 456, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('04-08-2020', 'dd-mm-yyyy'), 457, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('12-11-2020', 'dd-mm-yyyy'), 458, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('21-11-2021', 'dd-mm-yyyy'), 459, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('01-11-2021', 'dd-mm-yyyy'), 460, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('13-09-2020', 'dd-mm-yyyy'), 461, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('29-08-2020', 'dd-mm-yyyy'), 462, 'credit card', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('11-09-2021', 'dd-mm-yyyy'), 463, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('21-10-2020', 'dd-mm-yyyy'), 464, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('16-06-2021', 'dd-mm-yyyy'), 465, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('22-06-2020', 'dd-mm-yyyy'), 466, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('25-02-2020', 'dd-mm-yyyy'), 467, 'credit card', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('11-10-2021', 'dd-mm-yyyy'), 468, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('30-03-2021', 'dd-mm-yyyy'), 469, 'credit card', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('22-01-2020', 'dd-mm-yyyy'), 470, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('16-05-2021', 'dd-mm-yyyy'), 471, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('28-04-2021', 'dd-mm-yyyy'), 472, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('09-05-2020', 'dd-mm-yyyy'), 473, 'credit card', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('16-10-2021', 'dd-mm-yyyy'), 474, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('21-04-2021', 'dd-mm-yyyy'), 475, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('02-08-2021', 'dd-mm-yyyy'), 476, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('13-11-2020', 'dd-mm-yyyy'), 477, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('19-07-2020', 'dd-mm-yyyy'), 478, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('14-08-2021', 'dd-mm-yyyy'), 479, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('25-02-2020', 'dd-mm-yyyy'), 480, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('09-07-2020', 'dd-mm-yyyy'), 481, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('02-08-2021', 'dd-mm-yyyy'), 482, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('02-08-2021', 'dd-mm-yyyy'), 483, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('02-12-2021', 'dd-mm-yyyy'), 484, 'credit card', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('31-07-2020', 'dd-mm-yyyy'), 485, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('01-06-2020', 'dd-mm-yyyy'), 486, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('10-12-2021', 'dd-mm-yyyy'), 487, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('21-12-2020', 'dd-mm-yyyy'), 488, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('23-09-2021', 'dd-mm-yyyy'), 489, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('01-09-2020', 'dd-mm-yyyy'), 490, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('09-10-2020', 'dd-mm-yyyy'), 491, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('18-06-2020', 'dd-mm-yyyy'), 492, 'credit card', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('02-12-2021', 'dd-mm-yyyy'), 493, 'credit card', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('26-12-2021', 'dd-mm-yyyy'), 494, 'credit card', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('21-05-2021', 'dd-mm-yyyy'), 495, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('25-06-2020', 'dd-mm-yyyy'), 496, 'credit card', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('10-04-2020', 'dd-mm-yyyy'), 497, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('16-11-2021', 'dd-mm-yyyy'), 498, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('06-03-2020', 'dd-mm-yyyy'), 499, 'credit card', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('08-12-2021', 'dd-mm-yyyy'), 500, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('01-02-2024', 'dd-mm-yyyy'), 501, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('01-04-2024', 'dd-mm-yyyy'), 502, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('11-05-2024', 'dd-mm-yyyy'), 503, 'bit', null);
commit;
prompt 500 records committed...
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('22-08-2024', 'dd-mm-yyyy'), 504, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('21-09-2024', 'dd-mm-yyyy'), 505, 'paybox', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('25-03-2024', 'dd-mm-yyyy'), 506, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('22-11-2024', 'dd-mm-yyyy'), 507, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('11-09-2024', 'dd-mm-yyyy'), 508, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('21-02-2024', 'dd-mm-yyyy'), 509, 'bit', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('11-01-2024', 'dd-mm-yyyy'), 510, 'cash', null);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('14-06-2020', 'dd-mm-yyyy'), 211, 'credit card', 239);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('27-04-2020', 'dd-mm-yyyy'), 218, 'credit card', 212);
insert into ORDERS (ordate, oserialnumber, paymentmethod, id_team)
values (to_date('09-02-2021', 'dd-mm-yyyy'), 226, 'credit card', 313);
commit;
prompt 510 records loaded
prompt Loading NEW_EQUIPMENT...
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (1, to_date('10-09-2023', 'dd-mm-yyyy'), 0, 90);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (2, to_date('09-04-2023', 'dd-mm-yyyy'), 0, 74);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (3, to_date('30-10-2023', 'dd-mm-yyyy'), 0, 479);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (6, to_date('26-10-2023', 'dd-mm-yyyy'), 0, 210);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (7, to_date('27-12-2023', 'dd-mm-yyyy'), 0, 382);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (8, to_date('23-01-2023', 'dd-mm-yyyy'), 0, 509);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (9, to_date('28-04-2023', 'dd-mm-yyyy'), 0, 216);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (10, to_date('01-10-2023', 'dd-mm-yyyy'), 0, 427);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (11, to_date('25-04-2023', 'dd-mm-yyyy'), 0, 377);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (12, to_date('17-08-2023', 'dd-mm-yyyy'), 0, 372);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (13, to_date('19-06-2023', 'dd-mm-yyyy'), 0, 329);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (14, to_date('27-06-2023', 'dd-mm-yyyy'), 0, 149);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (19, to_date('13-09-2023', 'dd-mm-yyyy'), 0, 296);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (21, to_date('20-05-2023', 'dd-mm-yyyy'), 0, 244);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (23, to_date('22-08-2023', 'dd-mm-yyyy'), 0, 162);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (24, to_date('21-07-2023', 'dd-mm-yyyy'), 0, 18);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (25, to_date('17-11-2023', 'dd-mm-yyyy'), 0, 7);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (26, to_date('28-08-2023', 'dd-mm-yyyy'), 0, 123);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (29, to_date('10-12-2023', 'dd-mm-yyyy'), 0, 226);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (30, to_date('13-12-2023', 'dd-mm-yyyy'), 0, 195);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (34, to_date('10-07-2023', 'dd-mm-yyyy'), 0, 63);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (35, to_date('26-12-2023', 'dd-mm-yyyy'), 0, 177);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (37, to_date('19-04-2023', 'dd-mm-yyyy'), 0, 218);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (40, to_date('24-08-2023', 'dd-mm-yyyy'), 0, 338);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (41, to_date('21-08-2023', 'dd-mm-yyyy'), 0, 91);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (42, to_date('05-04-2023', 'dd-mm-yyyy'), 0, 444);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (43, to_date('04-04-2023', 'dd-mm-yyyy'), 0, 245);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (44, to_date('26-07-2023', 'dd-mm-yyyy'), 0, 416);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (45, to_date('12-12-2023', 'dd-mm-yyyy'), 0, 361);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (47, to_date('05-09-2023', 'dd-mm-yyyy'), 0, 211);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (48, to_date('10-09-2023', 'dd-mm-yyyy'), 0, 452);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (49, to_date('20-12-2023', 'dd-mm-yyyy'), 0, 11);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (50, to_date('05-12-2023', 'dd-mm-yyyy'), 0, 133);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (51, to_date('11-03-2023', 'dd-mm-yyyy'), 0, 334);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (52, to_date('09-09-2023', 'dd-mm-yyyy'), 0, 481);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (53, to_date('19-05-2023', 'dd-mm-yyyy'), 0, 322);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (54, to_date('11-01-2023', 'dd-mm-yyyy'), 0, 45);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (55, to_date('27-02-2023', 'dd-mm-yyyy'), 0, 309);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (56, to_date('02-02-2023', 'dd-mm-yyyy'), 0, 92);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (57, to_date('26-04-2023', 'dd-mm-yyyy'), 0, 117);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (59, to_date('25-05-2023', 'dd-mm-yyyy'), 0, 106);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (60, to_date('11-01-2023', 'dd-mm-yyyy'), 0, 467);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (61, to_date('23-11-2023', 'dd-mm-yyyy'), 0, 454);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (64, to_date('03-06-2023', 'dd-mm-yyyy'), 0, 8);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (65, to_date('30-03-2023', 'dd-mm-yyyy'), 0, 349);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (66, to_date('03-01-2023', 'dd-mm-yyyy'), 0, 110);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (67, to_date('22-05-2023', 'dd-mm-yyyy'), 0, 109);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (68, to_date('27-06-2023', 'dd-mm-yyyy'), 0, 9);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (69, to_date('23-03-2023', 'dd-mm-yyyy'), 0, 78);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (70, to_date('28-01-2023', 'dd-mm-yyyy'), 0, 103);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (71, to_date('08-12-2023', 'dd-mm-yyyy'), 0, 220);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (72, to_date('12-06-2023', 'dd-mm-yyyy'), 0, 19);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (74, to_date('02-09-2023', 'dd-mm-yyyy'), 0, 48);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (75, to_date('02-10-2023', 'dd-mm-yyyy'), 0, 196);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (77, to_date('27-05-2023', 'dd-mm-yyyy'), 0, 192);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (79, to_date('26-10-2023', 'dd-mm-yyyy'), 0, 368);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (81, to_date('01-09-2023', 'dd-mm-yyyy'), 0, 238);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (84, to_date('09-09-2023', 'dd-mm-yyyy'), 0, 285);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (87, to_date('05-01-2023', 'dd-mm-yyyy'), 0, 279);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (88, to_date('30-08-2023', 'dd-mm-yyyy'), 0, 470);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (89, to_date('29-03-2023', 'dd-mm-yyyy'), 0, 116);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (92, to_date('13-05-2023', 'dd-mm-yyyy'), 0, 51);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (94, to_date('19-08-2023', 'dd-mm-yyyy'), 0, 342);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (95, to_date('13-04-2023', 'dd-mm-yyyy'), 0, 236);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (96, to_date('04-04-2023', 'dd-mm-yyyy'), 0, 319);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (97, to_date('05-05-2023', 'dd-mm-yyyy'), 0, 247);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (100, to_date('21-02-2023', 'dd-mm-yyyy'), 0, 138);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (101, to_date('29-04-2024', 'dd-mm-yyyy'), 1, 419);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (102, to_date('01-11-2017', 'dd-mm-yyyy'), 0, 412);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (103, to_date('24-03-2014', 'dd-mm-yyyy'), 1, 275);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (106, to_date('01-09-2015', 'dd-mm-yyyy'), 1, 484);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (107, to_date('23-09-2021', 'dd-mm-yyyy'), 0, 254);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (109, to_date('01-03-2006', 'dd-mm-yyyy'), 1, 5);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (110, to_date('18-03-2020', 'dd-mm-yyyy'), 1, 421);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (111, to_date('24-05-2023', 'dd-mm-yyyy'), 0, 356);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (112, to_date('27-03-2023', 'dd-mm-yyyy'), 0, 401);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (114, to_date('30-10-2015', 'dd-mm-yyyy'), 1, 193);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (115, to_date('13-01-2022', 'dd-mm-yyyy'), 0, 219);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (116, to_date('29-12-2015', 'dd-mm-yyyy'), 0, 166);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (118, to_date('04-11-2003', 'dd-mm-yyyy'), 0, 111);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (119, to_date('04-10-2005', 'dd-mm-yyyy'), 0, 164);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (120, to_date('29-10-2020', 'dd-mm-yyyy'), 0, 405);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (121, to_date('26-04-2015', 'dd-mm-yyyy'), 0, 50);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (122, to_date('10-12-2023', 'dd-mm-yyyy'), 0, 49);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (124, to_date('08-09-2023', 'dd-mm-yyyy'), 0, 417);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (125, to_date('02-05-2023', 'dd-mm-yyyy'), 0, 105);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (126, to_date('08-08-2023', 'dd-mm-yyyy'), 0, 77);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (127, to_date('20-12-2023', 'dd-mm-yyyy'), 0, 36);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (128, to_date('20-03-2024', 'dd-mm-yyyy'), 0, 391);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (129, to_date('30-01-2005', 'dd-mm-yyyy'), 1, 432);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (130, to_date('08-07-2005', 'dd-mm-yyyy'), 1, 26);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (131, to_date('16-06-2023', 'dd-mm-yyyy'), 0, 128);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (132, to_date('02-07-2018', 'dd-mm-yyyy'), 0, 27);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (133, to_date('28-12-2010', 'dd-mm-yyyy'), 0, 497);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (134, to_date('17-04-2011', 'dd-mm-yyyy'), 1, 203);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (135, to_date('28-12-2005', 'dd-mm-yyyy'), 0, 341);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (136, to_date('28-07-2018', 'dd-mm-yyyy'), 1, 340);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (137, to_date('22-10-2019', 'dd-mm-yyyy'), 0, 336);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (138, to_date('22-10-2009', 'dd-mm-yyyy'), 1, 250);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (139, to_date('19-12-2023', 'dd-mm-yyyy'), 0, 239);
commit;
prompt 100 records committed...
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (140, to_date('11-03-2014', 'dd-mm-yyyy'), 1, 202);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (141, to_date('07-10-2019', 'dd-mm-yyyy'), 0, 147);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (142, to_date('05-11-2015', 'dd-mm-yyyy'), 0, 21);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (144, to_date('09-01-2006', 'dd-mm-yyyy'), 0, 260);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (145, to_date('30-04-2023', 'dd-mm-yyyy'), 0, 314);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (146, to_date('01-09-2010', 'dd-mm-yyyy'), 0, 370);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (147, to_date('06-05-2023', 'dd-mm-yyyy'), 0, 343);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (148, to_date('15-06-2014', 'dd-mm-yyyy'), 0, 2);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (151, to_date('08-05-2023', 'dd-mm-yyyy'), 0, 362);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (152, to_date('16-06-2006', 'dd-mm-yyyy'), 1, 400);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (153, to_date('21-08-2023', 'dd-mm-yyyy'), 0, 186);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (154, to_date('12-08-2008', 'dd-mm-yyyy'), 0, 251);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (155, to_date('09-05-2016', 'dd-mm-yyyy'), 0, 379);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (158, to_date('20-08-2023', 'dd-mm-yyyy'), 0, 119);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (159, to_date('16-04-2007', 'dd-mm-yyyy'), 0, 107);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (160, to_date('08-09-2018', 'dd-mm-yyyy'), 1, 241);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (162, to_date('06-02-2023', 'dd-mm-yyyy'), 0, 20);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (163, to_date('16-01-2017', 'dd-mm-yyyy'), 1, 113);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (164, to_date('06-03-2023', 'dd-mm-yyyy'), 0, 13);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (165, to_date('08-10-2023', 'dd-mm-yyyy'), 0, 281);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (166, to_date('10-03-2014', 'dd-mm-yyyy'), 1, 257);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (167, to_date('22-02-2023', 'dd-mm-yyyy'), 0, 178);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (169, to_date('02-01-2018', 'dd-mm-yyyy'), 0, 240);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (171, to_date('29-09-2007', 'dd-mm-yyyy'), 1, 217);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (172, to_date('25-08-2023', 'dd-mm-yyyy'), 0, 125);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (173, to_date('23-11-2023', 'dd-mm-yyyy'), 0, 115);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (174, to_date('23-10-2022', 'dd-mm-yyyy'), 0, 465);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (175, to_date('29-01-2022', 'dd-mm-yyyy'), 1, 369);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (176, to_date('06-03-2004', 'dd-mm-yyyy'), 1, 442);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (177, to_date('27-05-2006', 'dd-mm-yyyy'), 0, 393);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (178, to_date('21-08-2021', 'dd-mm-yyyy'), 0, 271);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (179, to_date('18-12-2023', 'dd-mm-yyyy'), 0, 308);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (180, to_date('29-07-2020', 'dd-mm-yyyy'), 1, 298);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (181, to_date('03-12-2023', 'dd-mm-yyyy'), 0, 263);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (182, to_date('13-04-2023', 'dd-mm-yyyy'), 0, 42);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (183, to_date('31-10-2023', 'dd-mm-yyyy'), 0, 462);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (187, to_date('30-06-2023', 'dd-mm-yyyy'), 0, 348);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (188, to_date('07-05-2023', 'dd-mm-yyyy'), 0, 283);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (189, to_date('05-09-2023', 'dd-mm-yyyy'), 0, 292);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (191, to_date('13-02-2024', 'dd-mm-yyyy'), 0, 24);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (192, to_date('02-07-2023', 'dd-mm-yyyy'), 0, 180);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (194, to_date('30-09-2011', 'dd-mm-yyyy'), 0, 435);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (195, to_date('31-08-2023', 'dd-mm-yyyy'), 0, 153);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (196, to_date('17-04-2011', 'dd-mm-yyyy'), 0, 426);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (200, to_date('15-03-2024', 'dd-mm-yyyy'), 0, 76);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (202, to_date('17-02-2020', 'dd-mm-yyyy'), 0, 429);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (204, to_date('01-10-2023', 'dd-mm-yyyy'), 0, 403);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (206, to_date('02-12-2013', 'dd-mm-yyyy'), 0, 337);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (207, to_date('06-06-2023', 'dd-mm-yyyy'), 0, 185);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (208, to_date('10-04-2023', 'dd-mm-yyyy'), 0, 139);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (209, to_date('26-12-2010', 'dd-mm-yyyy'), 1, 508);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (210, to_date('30-03-2004', 'dd-mm-yyyy'), 0, 25);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (211, to_date('27-11-2023', 'dd-mm-yyyy'), 0, 39);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (212, to_date('05-05-2011', 'dd-mm-yyyy'), 0, 146);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (213, to_date('18-09-2022', 'dd-mm-yyyy'), 0, 73);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (215, to_date('05-02-2021', 'dd-mm-yyyy'), 0, 354);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (216, to_date('10-09-2011', 'dd-mm-yyyy'), 1, 287);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (217, to_date('24-12-2016', 'dd-mm-yyyy'), 0, 458);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (218, to_date('09-01-2015', 'dd-mm-yyyy'), 0, 82);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (219, to_date('28-09-2023', 'dd-mm-yyyy'), 0, 191);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (220, to_date('11-05-2014', 'dd-mm-yyyy'), 1, 492);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (221, to_date('20-08-2010', 'dd-mm-yyyy'), 1, 261);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (222, to_date('21-03-2023', 'dd-mm-yyyy'), 0, 503);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (223, to_date('25-01-2023', 'dd-mm-yyyy'), 0, 494);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (224, to_date('01-08-2007', 'dd-mm-yyyy'), 0, 262);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (225, to_date('21-08-2023', 'dd-mm-yyyy'), 0, 208);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (226, to_date('30-03-2023', 'dd-mm-yyyy'), 0, 502);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (227, to_date('04-04-2012', 'dd-mm-yyyy'), 1, 333);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (229, to_date('25-02-2005', 'dd-mm-yyyy'), 0, 451);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (230, to_date('09-07-2023', 'dd-mm-yyyy'), 0, 420);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (231, to_date('19-02-2023', 'dd-mm-yyyy'), 0, 325);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (232, to_date('11-04-2021', 'dd-mm-yyyy'), 0, 33);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (234, to_date('06-06-2023', 'dd-mm-yyyy'), 0, 353);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (238, to_date('22-06-2018', 'dd-mm-yyyy'), 0, 414);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (239, to_date('28-10-2023', 'dd-mm-yyyy'), 0, 284);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (240, to_date('08-06-2012', 'dd-mm-yyyy'), 1, 206);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (241, to_date('07-03-2023', 'dd-mm-yyyy'), 0, 94);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (242, to_date('06-10-2010', 'dd-mm-yyyy'), 1, 167);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (243, to_date('20-07-2018', 'dd-mm-yyyy'), 1, 291);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (244, to_date('12-07-2023', 'dd-mm-yyyy'), 0, 214);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (245, to_date('31-10-2008', 'dd-mm-yyyy'), 1, 1);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (246, to_date('11-05-2023', 'dd-mm-yyyy'), 0, 374);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (247, to_date('14-07-2017', 'dd-mm-yyyy'), 0, 199);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (248, to_date('15-04-2023', 'dd-mm-yyyy'), 0, 482);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (249, to_date('24-03-2017', 'dd-mm-yyyy'), 1, 415);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (252, to_date('14-07-2023', 'dd-mm-yyyy'), 0, 392);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (253, to_date('21-06-2023', 'dd-mm-yyyy'), 0, 357);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (254, to_date('29-06-2013', 'dd-mm-yyyy'), 0, 297);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (255, to_date('07-12-2017', 'dd-mm-yyyy'), 0, 86);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (256, to_date('20-11-2023', 'dd-mm-yyyy'), 0, 81);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (257, to_date('26-12-2023', 'dd-mm-yyyy'), 0, 114);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (258, to_date('14-06-2008', 'dd-mm-yyyy'), 1, 61);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (260, to_date('08-09-2019', 'dd-mm-yyyy'), 0, 256);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (261, to_date('15-11-2013', 'dd-mm-yyyy'), 1, 408);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (262, to_date('19-03-2017', 'dd-mm-yyyy'), 1, 306);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (263, to_date('15-02-2023', 'dd-mm-yyyy'), 0, 145);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (264, to_date('27-05-2023', 'dd-mm-yyyy'), 0, 384);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (267, to_date('09-09-2022', 'dd-mm-yyyy'), 0, 41);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (268, to_date('19-02-2023', 'dd-mm-yyyy'), 0, 475);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (269, to_date('04-05-2023', 'dd-mm-yyyy'), 0, 406);
commit;
prompt 200 records committed...
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (270, to_date('25-10-2004', 'dd-mm-yyyy'), 1, 394);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (271, to_date('13-01-2015', 'dd-mm-yyyy'), 0, 390);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (272, to_date('02-11-2023', 'dd-mm-yyyy'), 0, 84);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (273, to_date('10-11-2023', 'dd-mm-yyyy'), 0, 79);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (274, to_date('19-12-2023', 'dd-mm-yyyy'), 0, 438);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (275, to_date('08-06-2008', 'dd-mm-yyyy'), 0, 69);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (276, to_date('20-02-2023', 'dd-mm-yyyy'), 0, 437);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (277, to_date('27-09-2023', 'dd-mm-yyyy'), 0, 418);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (278, to_date('18-06-2023', 'dd-mm-yyyy'), 0, 402);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (279, to_date('29-05-2023', 'dd-mm-yyyy'), 0, 302);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (281, to_date('21-11-2023', 'dd-mm-yyyy'), 0, 264);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (283, to_date('18-11-2023', 'dd-mm-yyyy'), 0, 137);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (286, to_date('31-08-2015', 'dd-mm-yyyy'), 0, 57);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (287, to_date('06-04-2023', 'dd-mm-yyyy'), 0, 364);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (289, to_date('10-10-2023', 'dd-mm-yyyy'), 0, 447);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (291, to_date('23-06-2022', 'dd-mm-yyyy'), 1, 280);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (292, to_date('29-10-2009', 'dd-mm-yyyy'), 1, 491);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (293, to_date('14-01-2023', 'dd-mm-yyyy'), 0, 47);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (294, to_date('04-04-2011', 'dd-mm-yyyy'), 1, 248);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (295, to_date('26-06-2023', 'dd-mm-yyyy'), 0, 155);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (296, to_date('14-06-2014', 'dd-mm-yyyy'), 0, 228);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (297, to_date('14-05-2023', 'dd-mm-yyyy'), 0, 480);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (299, to_date('11-08-2023', 'dd-mm-yyyy'), 0, 95);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (300, to_date('01-01-2007', 'dd-mm-yyyy'), 0, 320);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (301, to_date('14-05-2023', 'dd-mm-yyyy'), 0, 65);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (302, to_date('01-10-2019', 'dd-mm-yyyy'), 1, 380);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (304, to_date('29-01-2012', 'dd-mm-yyyy'), 0, 89);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (306, to_date('31-01-2023', 'dd-mm-yyyy'), 0, 207);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (307, to_date('25-11-2016', 'dd-mm-yyyy'), 1, 187);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (308, to_date('04-07-2010', 'dd-mm-yyyy'), 0, 359);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (309, to_date('04-01-2013', 'dd-mm-yyyy'), 0, 316);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (310, to_date('19-12-2012', 'dd-mm-yyyy'), 1, 448);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (311, to_date('23-05-2023', 'dd-mm-yyyy'), 0, 64);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (312, to_date('11-10-2013', 'dd-mm-yyyy'), 1, 331);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (313, to_date('25-12-2016', 'dd-mm-yyyy'), 0, 293);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (314, to_date('01-01-2023', 'dd-mm-yyyy'), 0, 477);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (315, to_date('12-11-2023', 'dd-mm-yyyy'), 0, 233);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (316, to_date('05-11-2023', 'dd-mm-yyyy'), 0, 173);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (317, to_date('15-06-2023', 'dd-mm-yyyy'), 1, 152);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (318, to_date('18-09-2018', 'dd-mm-yyyy'), 1, 351);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (319, to_date('09-01-2023', 'dd-mm-yyyy'), 0, 344);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (320, to_date('05-05-2009', 'dd-mm-yyyy'), 0, 286);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (321, to_date('06-01-2012', 'dd-mm-yyyy'), 1, 332);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (322, to_date('12-10-2013', 'dd-mm-yyyy'), 1, 59);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (323, to_date('31-10-2019', 'dd-mm-yyyy'), 0, 459);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (324, to_date('10-08-2014', 'dd-mm-yyyy'), 1, 189);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (325, to_date('02-08-2017', 'dd-mm-yyyy'), 0, 358);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (326, to_date('30-04-2005', 'dd-mm-yyyy'), 0, 225);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (327, to_date('02-10-2023', 'dd-mm-yyyy'), 0, 460);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (328, to_date('06-08-2013', 'dd-mm-yyyy'), 1, 141);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (329, to_date('28-04-2005', 'dd-mm-yyyy'), 1, 269);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (330, to_date('01-10-2009', 'dd-mm-yyyy'), 1, 205);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (331, to_date('25-03-2023', 'dd-mm-yyyy'), 0, 12);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (332, to_date('17-11-2023', 'dd-mm-yyyy'), 0, 100);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (333, to_date('02-02-2023', 'dd-mm-yyyy'), 0, 423);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (334, to_date('06-03-2023', 'dd-mm-yyyy'), 0, 355);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (335, to_date('03-02-2023', 'dd-mm-yyyy'), 0, 413);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (336, to_date('24-03-2007', 'dd-mm-yyyy'), 1, 204);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (337, to_date('21-10-2023', 'dd-mm-yyyy'), 0, 80);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (338, to_date('07-05-2023', 'dd-mm-yyyy'), 0, 294);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (339, to_date('21-09-2021', 'dd-mm-yyyy'), 0, 101);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (340, to_date('21-10-2014', 'dd-mm-yyyy'), 0, 104);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (341, to_date('11-12-2011', 'dd-mm-yyyy'), 1, 268);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (343, to_date('25-10-2014', 'dd-mm-yyyy'), 1, 504);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (344, to_date('14-06-2023', 'dd-mm-yyyy'), 0, 312);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (345, to_date('31-12-2023', 'dd-mm-yyyy'), 0, 272);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (346, to_date('09-07-2010', 'dd-mm-yyyy'), 1, 407);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (347, to_date('09-03-2021', 'dd-mm-yyyy'), 1, 304);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (348, to_date('30-08-2023', 'dd-mm-yyyy'), 0, 242);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (349, to_date('27-11-2022', 'dd-mm-yyyy'), 0, 169);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (350, to_date('18-06-2023', 'dd-mm-yyyy'), 0, 4);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (352, to_date('13-07-2018', 'dd-mm-yyyy'), 0, 430);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (353, to_date('15-09-2023', 'dd-mm-yyyy'), 0, 71);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (354, to_date('12-04-2018', 'dd-mm-yyyy'), 0, 35);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (355, to_date('04-11-2023', 'dd-mm-yyyy'), 0, 134);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (356, to_date('24-12-2023', 'dd-mm-yyyy'), 0, 299);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (357, to_date('04-08-2023', 'dd-mm-yyyy'), 0, 378);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (359, to_date('07-01-2012', 'dd-mm-yyyy'), 1, 500);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (361, to_date('21-06-2021', 'dd-mm-yyyy'), 0, 93);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (362, to_date('17-10-2023', 'dd-mm-yyyy'), 0, 327);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (363, to_date('04-02-2023', 'dd-mm-yyyy'), 0, 16);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (364, to_date('22-01-2004', 'dd-mm-yyyy'), 0, 34);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (365, to_date('19-05-2023', 'dd-mm-yyyy'), 0, 300);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (367, to_date('16-08-2023', 'dd-mm-yyyy'), 0, 434);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (368, to_date('19-05-2020', 'dd-mm-yyyy'), 1, 376);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (369, to_date('28-08-2015', 'dd-mm-yyyy'), 1, 424);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (370, to_date('08-10-2018', 'dd-mm-yyyy'), 1, 213);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (371, to_date('12-03-2023', 'dd-mm-yyyy'), 0, 389);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (372, to_date('07-07-2023', 'dd-mm-yyyy'), 0, 486);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (373, to_date('12-09-2023', 'dd-mm-yyyy'), 0, 446);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (374, to_date('25-02-2023', 'dd-mm-yyyy'), 0, 136);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (376, to_date('20-03-2010', 'dd-mm-yyyy'), 0, 273);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (377, to_date('26-10-2023', 'dd-mm-yyyy'), 0, 98);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (378, to_date('10-08-2023', 'dd-mm-yyyy'), 0, 143);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (379, to_date('27-10-2013', 'dd-mm-yyyy'), 1, 243);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (381, to_date('08-04-2023', 'dd-mm-yyyy'), 0, 172);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (384, to_date('10-08-2007', 'dd-mm-yyyy'), 0, 463);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (386, to_date('05-05-2014', 'dd-mm-yyyy'), 0, 179);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (388, to_date('12-10-2014', 'dd-mm-yyyy'), 0, 212);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (389, to_date('12-06-2023', 'dd-mm-yyyy'), 0, 129);
commit;
prompt 300 records committed...
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (391, to_date('20-04-2023', 'dd-mm-yyyy'), 0, 170);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (393, to_date('20-07-2023', 'dd-mm-yyyy'), 0, 315);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (394, to_date('01-02-2019', 'dd-mm-yyyy'), 0, 14);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (395, to_date('23-04-2006', 'dd-mm-yyyy'), 0, 321);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (396, to_date('31-07-2005', 'dd-mm-yyyy'), 0, 15);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (397, to_date('14-11-2003', 'dd-mm-yyyy'), 0, 163);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (398, to_date('13-04-2023', 'dd-mm-yyyy'), 0, 66);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (399, to_date('25-04-2004', 'dd-mm-yyyy'), 0, 182);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (400, to_date('30-12-2003', 'dd-mm-yyyy'), 0, 46);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (401, to_date('17-01-2008', 'dd-mm-yyyy'), 0, 255);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (405, to_date('03-06-2023', 'dd-mm-yyyy'), 0, 22);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (406, to_date('14-07-2014', 'dd-mm-yyyy'), 0, 121);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (407, to_date('24-02-2006', 'dd-mm-yyyy'), 0, 399);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (408, to_date('18-12-2023', 'dd-mm-yyyy'), 0, 17);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (409, to_date('29-11-2007', 'dd-mm-yyyy'), 1, 318);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (410, to_date('06-09-2013', 'dd-mm-yyyy'), 1, 175);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (411, to_date('27-01-2023', 'dd-mm-yyyy'), 0, 485);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (412, to_date('04-01-2023', 'dd-mm-yyyy'), 0, 130);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (413, to_date('30-01-2017', 'dd-mm-yyyy'), 1, 253);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (414, to_date('24-06-2013', 'dd-mm-yyyy'), 1, 6);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (415, to_date('07-12-2023', 'dd-mm-yyyy'), 0, 87);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (416, to_date('05-02-2023', 'dd-mm-yyyy'), 0, 411);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (417, to_date('22-10-2014', 'dd-mm-yyyy'), 0, 148);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (418, to_date('18-02-2007', 'dd-mm-yyyy'), 0, 425);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (419, to_date('18-07-2011', 'dd-mm-yyyy'), 1, 395);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (420, to_date('15-08-2021', 'dd-mm-yyyy'), 0, 165);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (422, to_date('17-06-2023', 'dd-mm-yyyy'), 0, 428);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (423, to_date('17-10-2023', 'dd-mm-yyyy'), 0, 215);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (424, to_date('23-03-2023', 'dd-mm-yyyy'), 0, 339);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (425, to_date('24-10-2023', 'dd-mm-yyyy'), 1, 181);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (426, to_date('21-10-2017', 'dd-mm-yyyy'), 0, 387);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (428, to_date('06-03-2023', 'dd-mm-yyyy'), 0, 495);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (429, to_date('09-02-2023', 'dd-mm-yyyy'), 0, 488);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (430, to_date('07-03-2023', 'dd-mm-yyyy'), 0, 277);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (431, to_date('13-01-2023', 'dd-mm-yyyy'), 0, 99);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (432, to_date('22-04-2023', 'dd-mm-yyyy'), 0, 289);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (433, to_date('19-01-2023', 'dd-mm-yyyy'), 0, 168);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (434, to_date('10-09-2023', 'dd-mm-yyyy'), 0, 371);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (435, to_date('18-01-2023', 'dd-mm-yyyy'), 1, 118);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (438, to_date('04-03-2023', 'dd-mm-yyyy'), 0, 183);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (441, to_date('19-12-2023', 'dd-mm-yyyy'), 0, 31);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (443, to_date('13-08-2023', 'dd-mm-yyyy'), 0, 295);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (444, to_date('06-01-2023', 'dd-mm-yyyy'), 0, 23);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (445, to_date('03-12-2010', 'dd-mm-yyyy'), 0, 56);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (447, to_date('20-09-2023', 'dd-mm-yyyy'), 0, 330);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (448, to_date('06-06-2004', 'dd-mm-yyyy'), 1, 67);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (449, to_date('29-02-2008', 'dd-mm-yyyy'), 1, 150);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (450, to_date('26-05-2007', 'dd-mm-yyyy'), 0, 441);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (451, to_date('19-11-2021', 'dd-mm-yyyy'), 1, 473);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (452, to_date('22-01-2023', 'dd-mm-yyyy'), 0, 132);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (454, to_date('25-03-2013', 'dd-mm-yyyy'), 1, 501);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (455, to_date('05-04-2023', 'dd-mm-yyyy'), 1, 222);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (456, to_date('07-12-2023', 'dd-mm-yyyy'), 0, 227);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (457, to_date('07-02-2023', 'dd-mm-yyyy'), 0, 224);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (458, to_date('25-06-2022', 'dd-mm-yyyy'), 1, 190);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (459, to_date('03-04-2023', 'dd-mm-yyyy'), 0, 159);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (460, to_date('09-09-2021', 'dd-mm-yyyy'), 0, 493);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (461, to_date('28-06-2023', 'dd-mm-yyyy'), 0, 154);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (462, to_date('15-03-2023', 'dd-mm-yyyy'), 0, 55);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (464, to_date('15-05-2016', 'dd-mm-yyyy'), 1, 29);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (465, to_date('07-10-2011', 'dd-mm-yyyy'), 1, 144);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (466, to_date('06-05-2023', 'dd-mm-yyyy'), 0, 483);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (467, to_date('19-01-2023', 'dd-mm-yyyy'), 0, 37);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (468, to_date('08-04-2023', 'dd-mm-yyyy'), 0, 161);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (469, to_date('17-03-2023', 'dd-mm-yyyy'), 1, 44);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (470, to_date('30-07-2019', 'dd-mm-yyyy'), 0, 53);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (471, to_date('28-05-2023', 'dd-mm-yyyy'), 0, 62);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (472, to_date('01-01-2024', 'dd-mm-yyyy'), 1, 457);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (473, to_date('22-02-2023', 'dd-mm-yyyy'), 0, 267);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (474, to_date('12-08-2015', 'dd-mm-yyyy'), 1, 367);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (476, to_date('07-04-2023', 'dd-mm-yyyy'), 0, 388);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (477, to_date('29-03-2019', 'dd-mm-yyyy'), 0, 288);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (478, to_date('18-12-2023', 'dd-mm-yyyy'), 0, 3);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (479, to_date('30-10-2023', 'dd-mm-yyyy'), 0, 310);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (481, to_date('09-10-2023', 'dd-mm-yyyy'), 0, 122);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (482, to_date('26-11-2014', 'dd-mm-yyyy'), 0, 410);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (484, to_date('27-09-2023', 'dd-mm-yyyy'), 0, 290);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (485, to_date('20-12-2023', 'dd-mm-yyyy'), 0, 229);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (486, to_date('10-08-2023', 'dd-mm-yyyy'), 0, 373);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (487, to_date('28-05-2023', 'dd-mm-yyyy'), 0, 274);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (488, to_date('31-05-2006', 'dd-mm-yyyy'), 1, 506);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (489, to_date('28-10-2023', 'dd-mm-yyyy'), 0, 347);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (490, to_date('24-06-2018', 'dd-mm-yyyy'), 1, 151);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (491, to_date('27-01-2023', 'dd-mm-yyyy'), 0, 85);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (492, to_date('20-02-2023', 'dd-mm-yyyy'), 0, 30);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (493, to_date('06-08-2006', 'dd-mm-yyyy'), 1, 363);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (494, to_date('06-04-2023', 'dd-mm-yyyy'), 0, 366);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (495, to_date('14-08-2023', 'dd-mm-yyyy'), 0, 307);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (497, to_date('04-03-2007', 'dd-mm-yyyy'), 0, 439);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (499, to_date('04-02-2023', 'dd-mm-yyyy'), 0, 160);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (500, to_date('17-07-2020', 'dd-mm-yyyy'), 1, 445);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (503, to_date('10-06-2014', 'dd-mm-yyyy'), 1, 156);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (505, to_date('25-11-2020', 'dd-mm-yyyy'), 1, 469);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (510, to_date('24-02-2020', 'dd-mm-yyyy'), 0, 381);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (511, to_date('04-08-2008', 'dd-mm-yyyy'), 0, 505);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (512, to_date('10-08-2018', 'dd-mm-yyyy'), 0, 234);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (518, to_date('12-11-2016', 'dd-mm-yyyy'), 0, 450);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (526, to_date('03-06-2016', 'dd-mm-yyyy'), 1, 88);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (527, to_date('12-03-2018', 'dd-mm-yyyy'), 1, 431);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (528, to_date('15-10-2009', 'dd-mm-yyyy'), 0, 490);
commit;
prompt 400 records committed...
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (529, to_date('13-06-2017', 'dd-mm-yyyy'), 1, 455);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (530, to_date('14-09-2020', 'dd-mm-yyyy'), 1, 265);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (531, to_date('25-01-2022', 'dd-mm-yyyy'), 1, 223);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (536, to_date('01-12-2022', 'dd-mm-yyyy'), 1, 323);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (539, to_date('08-03-2016', 'dd-mm-yyyy'), 1, 510);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (541, to_date('09-08-2016', 'dd-mm-yyyy'), 0, 131);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (543, to_date('16-07-2006', 'dd-mm-yyyy'), 0, 235);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (544, to_date('12-12-2013', 'dd-mm-yyyy'), 0, 365);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (547, to_date('04-06-2015', 'dd-mm-yyyy'), 0, 112);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (549, to_date('21-01-2006', 'dd-mm-yyyy'), 0, 456);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (551, to_date('03-05-2007', 'dd-mm-yyyy'), 0, 464);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (553, to_date('02-12-2017', 'dd-mm-yyyy'), 0, 142);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (554, to_date('08-03-2018', 'dd-mm-yyyy'), 1, 174);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (557, to_date('11-10-2007', 'dd-mm-yyyy'), 0, 311);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (559, to_date('16-02-2021', 'dd-mm-yyyy'), 1, 350);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (560, to_date('12-05-2017', 'dd-mm-yyyy'), 1, 313);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (564, to_date('21-10-2023', 'dd-mm-yyyy'), 1, 449);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (565, to_date('26-11-2018', 'dd-mm-yyyy'), 1, 317);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (570, to_date('28-11-2003', 'dd-mm-yyyy'), 1, 301);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (576, to_date('10-09-2016', 'dd-mm-yyyy'), 1, 38);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (578, to_date('02-10-2019', 'dd-mm-yyyy'), 0, 127);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (579, to_date('04-04-2007', 'dd-mm-yyyy'), 0, 252);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (582, to_date('06-04-2006', 'dd-mm-yyyy'), 0, 404);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (585, to_date('21-01-2010', 'dd-mm-yyyy'), 0, 96);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (588, to_date('01-04-2005', 'dd-mm-yyyy'), 1, 453);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (591, to_date('19-02-2021', 'dd-mm-yyyy'), 1, 270);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (592, to_date('15-09-2021', 'dd-mm-yyyy'), 0, 440);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (593, to_date('29-10-2013', 'dd-mm-yyyy'), 1, 409);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (595, to_date('01-10-2019', 'dd-mm-yyyy'), 0, 266);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (597, to_date('17-12-2003', 'dd-mm-yyyy'), 0, 443);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (599, to_date('18-04-2014', 'dd-mm-yyyy'), 0, 60);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (602, to_date('07-02-2024', 'dd-mm-yyyy'), 1, 140);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (603, to_date('19-02-2010', 'dd-mm-yyyy'), 1, 221);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (605, to_date('19-07-2021', 'dd-mm-yyyy'), 1, 489);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (607, to_date('09-07-2012', 'dd-mm-yyyy'), 0, 472);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (608, to_date('14-06-2021', 'dd-mm-yyyy'), 0, 184);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (610, to_date('03-07-2009', 'dd-mm-yyyy'), 1, 97);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (612, to_date('22-05-2008', 'dd-mm-yyyy'), 0, 231);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (613, to_date('23-05-2013', 'dd-mm-yyyy'), 0, 258);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (622, to_date('01-09-2019', 'dd-mm-yyyy'), 1, 43);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (624, to_date('25-03-2020', 'dd-mm-yyyy'), 0, 201);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (628, to_date('31-03-2007', 'dd-mm-yyyy'), 0, 397);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (632, to_date('29-03-2022', 'dd-mm-yyyy'), 1, 83);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (633, to_date('08-07-2015', 'dd-mm-yyyy'), 1, 108);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (634, to_date('03-01-2009', 'dd-mm-yyyy'), 1, 383);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (638, to_date('01-11-2022', 'dd-mm-yyyy'), 0, 194);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (639, to_date('22-06-2007', 'dd-mm-yyyy'), 1, 200);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (640, to_date('14-09-2011', 'dd-mm-yyyy'), 0, 70);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (641, to_date('08-10-2007', 'dd-mm-yyyy'), 1, 120);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (642, to_date('17-04-2007', 'dd-mm-yyyy'), 0, 422);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (648, to_date('23-09-2007', 'dd-mm-yyyy'), 1, 468);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (649, to_date('28-10-2016', 'dd-mm-yyyy'), 0, 10);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (650, to_date('17-08-2005', 'dd-mm-yyyy'), 1, 471);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (651, to_date('05-08-2017', 'dd-mm-yyyy'), 0, 58);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (654, to_date('24-07-2023', 'dd-mm-yyyy'), 1, 461);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (656, to_date('12-08-2014', 'dd-mm-yyyy'), 1, 478);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (660, to_date('30-06-2009', 'dd-mm-yyyy'), 1, 466);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (661, to_date('07-02-2020', 'dd-mm-yyyy'), 0, 276);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (665, to_date('05-01-2013', 'dd-mm-yyyy'), 1, 375);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (666, to_date('24-03-2009', 'dd-mm-yyyy'), 0, 157);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (670, to_date('14-02-2006', 'dd-mm-yyyy'), 1, 282);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (676, to_date('10-05-2018', 'dd-mm-yyyy'), 0, 278);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (677, to_date('09-07-2019', 'dd-mm-yyyy'), 0, 198);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (681, to_date('04-07-2014', 'dd-mm-yyyy'), 1, 476);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (684, to_date('14-01-2023', 'dd-mm-yyyy'), 0, 52);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (685, to_date('12-11-2009', 'dd-mm-yyyy'), 1, 259);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (687, to_date('20-01-2021', 'dd-mm-yyyy'), 1, 328);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (688, to_date('03-01-2014', 'dd-mm-yyyy'), 0, 398);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (696, to_date('12-12-2021', 'dd-mm-yyyy'), 1, 232);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (700, to_date('29-05-2010', 'dd-mm-yyyy'), 0, 303);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (706, to_date('12-03-2023', 'dd-mm-yyyy'), 1, 32);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (707, to_date('19-06-2013', 'dd-mm-yyyy'), 0, 346);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (708, to_date('23-06-2012', 'dd-mm-yyyy'), 1, 433);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (709, to_date('09-01-2009', 'dd-mm-yyyy'), 1, 498);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (712, to_date('04-09-2005', 'dd-mm-yyyy'), 0, 124);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (713, to_date('20-06-2022', 'dd-mm-yyyy'), 1, 209);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (714, to_date('23-06-2013', 'dd-mm-yyyy'), 1, 335);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (716, to_date('23-05-2022', 'dd-mm-yyyy'), 1, 436);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (718, to_date('05-09-2013', 'dd-mm-yyyy'), 0, 249);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (719, to_date('20-11-2006', 'dd-mm-yyyy'), 0, 68);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (720, to_date('14-12-2011', 'dd-mm-yyyy'), 0, 324);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (722, to_date('01-12-2015', 'dd-mm-yyyy'), 1, 237);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (723, to_date('26-04-2014', 'dd-mm-yyyy'), 1, 326);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (724, to_date('10-06-2007', 'dd-mm-yyyy'), 0, 75);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (725, to_date('25-04-2005', 'dd-mm-yyyy'), 0, 158);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (727, to_date('19-02-2024', 'dd-mm-yyyy'), 0, 102);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (728, to_date('04-12-2009', 'dd-mm-yyyy'), 0, 499);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (740, to_date('05-11-2022', 'dd-mm-yyyy'), 0, 305);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (741, to_date('27-09-2013', 'dd-mm-yyyy'), 0, 345);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (743, to_date('27-08-2008', 'dd-mm-yyyy'), 0, 386);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (745, to_date('01-03-2019', 'dd-mm-yyyy'), 1, 496);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (747, to_date('07-12-2017', 'dd-mm-yyyy'), 0, 28);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (754, to_date('11-09-2009', 'dd-mm-yyyy'), 0, 352);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (757, to_date('24-08-2017', 'dd-mm-yyyy'), 0, 246);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (759, to_date('16-02-2006', 'dd-mm-yyyy'), 1, 126);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (760, to_date('04-02-2019', 'dd-mm-yyyy'), 1, 230);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (764, to_date('13-12-2016', 'dd-mm-yyyy'), 1, 197);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (769, to_date('07-05-2006', 'dd-mm-yyyy'), 1, 176);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (771, to_date('09-03-2011', 'dd-mm-yyyy'), 1, 360);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (773, to_date('28-07-2007', 'dd-mm-yyyy'), 0, 40);
commit;
prompt 500 records committed...
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (775, to_date('04-08-2017', 'dd-mm-yyyy'), 1, 487);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (779, to_date('30-10-2010', 'dd-mm-yyyy'), 0, 188);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (783, to_date('25-11-2008', 'dd-mm-yyyy'), 0, 72);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (784, to_date('28-10-2019', 'dd-mm-yyyy'), 0, 171);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (787, to_date('22-10-2014', 'dd-mm-yyyy'), 0, 54);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (791, to_date('06-04-2019', 'dd-mm-yyyy'), 1, 396);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (793, to_date('01-11-2017', 'dd-mm-yyyy'), 1, 474);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (794, to_date('12-01-2022', 'dd-mm-yyyy'), 0, 135);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (797, to_date('19-10-2012', 'dd-mm-yyyy'), 1, 385);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (798, to_date('20-12-2012', 'dd-mm-yyyy'), 0, 507);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (800, to_date('01-05-2024', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (803, to_date('06-04-2019', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (804, to_date('24-06-2021', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (809, to_date('23-10-2009', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (810, to_date('20-12-2018', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (812, to_date('01-05-2013', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (813, to_date('04-09-2013', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (814, to_date('07-04-2015', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (815, to_date('29-11-2021', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (816, to_date('09-03-2019', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (817, to_date('11-05-2010', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (819, to_date('11-10-2007', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (821, to_date('25-06-2021', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (822, to_date('22-10-2014', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (823, to_date('21-10-2005', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (825, to_date('21-01-2022', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (827, to_date('12-10-2003', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (829, to_date('25-11-2015', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (831, to_date('28-08-2016', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (832, to_date('16-10-2023', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (836, to_date('04-05-2019', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (837, to_date('09-03-2004', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (839, to_date('09-03-2004', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (841, to_date('04-06-2010', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (848, to_date('05-04-2019', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (852, to_date('06-10-2022', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (854, to_date('10-01-2010', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (855, to_date('18-01-2020', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (856, to_date('02-08-2019', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (857, to_date('25-09-2008', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (860, to_date('20-03-2006', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (863, to_date('07-07-2011', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (871, to_date('22-01-2022', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (872, to_date('08-10-2021', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (880, to_date('13-09-2011', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (883, to_date('04-08-2020', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (884, to_date('18-06-2016', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (885, to_date('24-07-2008', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (889, to_date('01-10-2019', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (890, to_date('30-01-2011', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (891, to_date('24-07-2017', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (892, to_date('15-10-2016', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (893, to_date('23-02-2022', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (894, to_date('29-04-2017', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (895, to_date('09-04-2010', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (900, to_date('01-11-2023', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (901, to_date('15-10-2019', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (902, to_date('07-09-2022', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (904, to_date('01-07-2020', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (909, to_date('17-09-2004', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (911, to_date('30-01-2007', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (913, to_date('07-08-2013', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (915, to_date('04-05-2019', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (916, to_date('28-06-2006', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (917, to_date('25-06-2007', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (918, to_date('08-03-2005', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (922, to_date('14-07-2016', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (924, to_date('23-03-2009', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (926, to_date('27-06-2018', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (928, to_date('01-04-2019', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (934, to_date('05-03-2008', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (938, to_date('23-01-2011', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (940, to_date('20-04-2011', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (943, to_date('15-03-2022', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (944, to_date('07-04-2007', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (947, to_date('23-01-2024', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (951, to_date('28-01-2013', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (952, to_date('25-01-2023', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (955, to_date('20-02-2016', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (957, to_date('21-06-2010', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (959, to_date('27-10-2023', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (963, to_date('07-08-2004', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (964, to_date('07-01-2022', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (975, to_date('29-09-2016', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (979, to_date('17-09-2004', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (981, to_date('09-11-2008', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (982, to_date('07-02-2009', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (986, to_date('01-02-2007', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (988, to_date('18-07-2016', 'dd-mm-yyyy'), 1, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (990, to_date('25-09-2020', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (993, to_date('09-08-2011', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (994, to_date('09-11-2019', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (995, to_date('18-12-2018', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (996, to_date('24-10-2006', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (997, to_date('15-09-2013', 'dd-mm-yyyy'), 0, null);
insert into NEW_EQUIPMENT (id_equipment, date_borrow, status_e, oserialnumber)
values (998, to_date('24-04-2017', 'dd-mm-yyyy'), 0, null);
commit;
prompt 596 records loaded
prompt Loading PATIENT...
insert into PATIENT (id_patient, name_p, age, id_call)
values (958, 'Vic', 44, 164);
insert into PATIENT (id_patient, name_p, age, id_call)
values (715, 'Ted', 17, 282);
insert into PATIENT (id_patient, name_p, age, id_call)
values (912, 'Dan', 81, 294);
insert into PATIENT (id_patient, name_p, age, id_call)
values (484, 'Dan', 26, 467);
insert into PATIENT (id_patient, name_p, age, id_call)
values (784, 'Vic', 37, 363);
insert into PATIENT (id_patient, name_p, age, id_call)
values (439, 'Zed', 17, 425);
insert into PATIENT (id_patient, name_p, age, id_call)
values (863, 'Gus', 25, 299);
insert into PATIENT (id_patient, name_p, age, id_call)
values (299, 'Wes', 89, 239);
insert into PATIENT (id_patient, name_p, age, id_call)
values (721, 'Ann', 13, 298);
insert into PATIENT (id_patient, name_p, age, id_call)
values (331, 'Lia', 49, 315);
insert into PATIENT (id_patient, name_p, age, id_call)
values (351, 'Kit', 117, 385);
insert into PATIENT (id_patient, name_p, age, id_call)
values (678, 'Lou', 30, 488);
insert into PATIENT (id_patient, name_p, age, id_call)
values (358, 'Ray', 16, 317);
insert into PATIENT (id_patient, name_p, age, id_call)
values (986, 'Lou', 116, 260);
insert into PATIENT (id_patient, name_p, age, id_call)
values (488, 'Jed', 8, 403);
insert into PATIENT (id_patient, name_p, age, id_call)
values (755, 'Ray', 91, 180);
insert into PATIENT (id_patient, name_p, age, id_call)
values (790, null, 68, 273);
insert into PATIENT (id_patient, name_p, age, id_call)
values (687, 'Pam', 111, 472);
insert into PATIENT (id_patient, name_p, age, id_call)
values (468, 'Viv', 43, 340);
insert into PATIENT (id_patient, name_p, age, id_call)
values (133, 'Jed', 51, 122);
insert into PATIENT (id_patient, name_p, age, id_call)
values (572, 'Ned', 53, 234);
insert into PATIENT (id_patient, name_p, age, id_call)
values (226, 'Jed', 100, 224);
insert into PATIENT (id_patient, name_p, age, id_call)
values (278, 'Cal', 10, 491);
insert into PATIENT (id_patient, name_p, age, id_call)
values (836, 'Cal', 56, 339);
insert into PATIENT (id_patient, name_p, age, id_call)
values (390, 'Lou', 21, 135);
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
values (847, 'Vic', 109, 401);
insert into PATIENT (id_patient, name_p, age, id_call)
values (270, 'Ned', 93, 411);
insert into PATIENT (id_patient, name_p, age, id_call)
values (335, 'Dan', 72, 315);
insert into PATIENT (id_patient, name_p, age, id_call)
values (315, 'Viv', 9, 347);
insert into PATIENT (id_patient, name_p, age, id_call)
values (797, 'Ned', 73, 229);
insert into PATIENT (id_patient, name_p, age, id_call)
values (774, 'Pam', 85, 498);
insert into PATIENT (id_patient, name_p, age, id_call)
values (245, 'Wes', 23, 360);
insert into PATIENT (id_patient, name_p, age, id_call)
values (215, 'Ned', 10, 131);
insert into PATIENT (id_patient, name_p, age, id_call)
values (897, 'Vic', 69, 389);
insert into PATIENT (id_patient, name_p, age, id_call)
values (355, 'Cal', 105, 449);
insert into PATIENT (id_patient, name_p, age, id_call)
values (654, 'Eve', 11, 412);
insert into PATIENT (id_patient, name_p, age, id_call)
values (841, 'Pam', 76, 297);
insert into PATIENT (id_patient, name_p, age, id_call)
values (939, 'Kit', 76, 393);
insert into PATIENT (id_patient, name_p, age, id_call)
values (829, 'Zed', 95, 761);
insert into PATIENT (id_patient, name_p, age, id_call)
values (965, 'Jed', 88, 147);
insert into PATIENT (id_patient, name_p, age, id_call)
values (320, 'Ray', 35, 122);
insert into PATIENT (id_patient, name_p, age, id_call)
values (976, 'Lou', 11, 246);
insert into PATIENT (id_patient, name_p, age, id_call)
values (329, 'Viv', 114, 180);
insert into PATIENT (id_patient, name_p, age, id_call)
values (826, 'Dan', 56, 297);
insert into PATIENT (id_patient, name_p, age, id_call)
values (999, 'Dan', 70, 132);
insert into PATIENT (id_patient, name_p, age, id_call)
values (373, 'Eve', 66, 184);
insert into PATIENT (id_patient, name_p, age, id_call)
values (423, 'Kit', 9, 425);
insert into PATIENT (id_patient, name_p, age, id_call)
values (632, 'Cal', 4, 196);
insert into PATIENT (id_patient, name_p, age, id_call)
values (589, 'Hal', 42, 122);
insert into PATIENT (id_patient, name_p, age, id_call)
values (658, 'Ned', 44, 310);
insert into PATIENT (id_patient, name_p, age, id_call)
values (157, 'Ann', 31, 299);
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
values (837, 'Ray', 13, 393);
insert into PATIENT (id_patient, name_p, age, id_call)
values (659, 'Zed', 77, 412);
insert into PATIENT (id_patient, name_p, age, id_call)
values (520, 'Dan', 39, 331);
insert into PATIENT (id_patient, name_p, age, id_call)
values (723, 'Hal', 88, 210);
insert into PATIENT (id_patient, name_p, age, id_call)
values (634, 'Jed', 18, 314);
insert into PATIENT (id_patient, name_p, age, id_call)
values (862, 'Jed', 91, 363);
insert into PATIENT (id_patient, name_p, age, id_call)
values (206, 'Dan', 76, 761);
insert into PATIENT (id_patient, name_p, age, id_call)
values (664, 'Eve', 92, 791);
insert into PATIENT (id_patient, name_p, age, id_call)
values (218, 'Kit', 55, 473);
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
values (868, 'Ted', 40, 395);
insert into PATIENT (id_patient, name_p, age, id_call)
values (974, 'Kit', 17, 442);
insert into PATIENT (id_patient, name_p, age, id_call)
values (267, 'Jed', 65, 373);
insert into PATIENT (id_patient, name_p, age, id_call)
values (185, 'Dan', 55, 143);
insert into PATIENT (id_patient, name_p, age, id_call)
values (104, 'Ted', 44, 451);
insert into PATIENT (id_patient, name_p, age, id_call)
values (147, 'Hal', 80, 446);
insert into PATIENT (id_patient, name_p, age, id_call)
values (366, 'Ann', 111, 164);
insert into PATIENT (id_patient, name_p, age, id_call)
values (578, 'Ned', 15, 281);
insert into PATIENT (id_patient, name_p, age, id_call)
values (794, 'Moe', 81, 135);
insert into PATIENT (id_patient, name_p, age, id_call)
values (596, 'Ray', 118, 628);
insert into PATIENT (id_patient, name_p, age, id_call)
values (332, 'Sid', 35, 498);
insert into PATIENT (id_patient, name_p, age, id_call)
values (898, 'Ted', 71, 191);
insert into PATIENT (id_patient, name_p, age, id_call)
values (887, 'Moe', 69, 119);
insert into PATIENT (id_patient, name_p, age, id_call)
values (891, 'Hal', 47, 301);
insert into PATIENT (id_patient, name_p, age, id_call)
values (438, 'Gus', 67, 442);
insert into PATIENT (id_patient, name_p, age, id_call)
values (899, 'Jed', 117, 425);
insert into PATIENT (id_patient, name_p, age, id_call)
values (424, 'Dan', 40, 314);
insert into PATIENT (id_patient, name_p, age, id_call)
values (187, 'Viv', 4, 135);
insert into PATIENT (id_patient, name_p, age, id_call)
values (527, 'Eve', 78, 210);
insert into PATIENT (id_patient, name_p, age, id_call)
values (474, null, 39, 204);
insert into PATIENT (id_patient, name_p, age, id_call)
values (587, 'Jed', 65, 284);
insert into PATIENT (id_patient, name_p, age, id_call)
values (412, 'Cal', 52, 515);
insert into PATIENT (id_patient, name_p, age, id_call)
values (948, 'Ned', 20, 163);
insert into PATIENT (id_patient, name_p, age, id_call)
values (927, 'Hal', 38, 307);
commit;
prompt 100 records committed...
insert into PATIENT (id_patient, name_p, age, id_call)
values (651, 'Ray', 102, 732);
insert into PATIENT (id_patient, name_p, age, id_call)
values (406, 'Ned', 52, 222);
insert into PATIENT (id_patient, name_p, age, id_call)
values (458, 'Sky', 9, 261);
insert into PATIENT (id_patient, name_p, age, id_call)
values (963, 'Mya', 3, 333);
insert into PATIENT (id_patient, name_p, age, id_call)
values (955, 'Bev', 44, 447);
insert into PATIENT (id_patient, name_p, age, id_call)
values (151, 'Eli', 94, 401);
insert into PATIENT (id_patient, name_p, age, id_call)
values (239, 'Ira', 15, 375);
insert into PATIENT (id_patient, name_p, age, id_call)
values (130, 'Dot', 42, 395);
insert into PATIENT (id_patient, name_p, age, id_call)
values (301, 'Ari', 19, 336);
insert into PATIENT (id_patient, name_p, age, id_call)
values (531, 'Ren', 109, 279);
insert into PATIENT (id_patient, name_p, age, id_call)
values (359, null, 119, 180);
insert into PATIENT (id_patient, name_p, age, id_call)
values (100, 'Ira', 115, 407);
insert into PATIENT (id_patient, name_p, age, id_call)
values (141, 'Jan', 41, 184);
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
values (786, 'Ari', 102, 340);
insert into PATIENT (id_patient, name_p, age, id_call)
values (124, 'Ken', 42, 446);
insert into PATIENT (id_patient, name_p, age, id_call)
values (870, 'Pia', 70, 219);
insert into PATIENT (id_patient, name_p, age, id_call)
values (706, 'Bev', 91, 164);
insert into PATIENT (id_patient, name_p, age, id_call)
values (701, 'Ken', 81, 178);
insert into PATIENT (id_patient, name_p, age, id_call)
values (851, 'Tia', 84, 315);
insert into PATIENT (id_patient, name_p, age, id_call)
values (957, 'Hed', 40, 375);
insert into PATIENT (id_patient, name_p, age, id_call)
values (947, null, 119, 449);
insert into PATIENT (id_patient, name_p, age, id_call)
values (861, 'Gia', 68, 307);
insert into PATIENT (id_patient, name_p, age, id_call)
values (741, 'Ira', 93, 368);
insert into PATIENT (id_patient, name_p, age, id_call)
values (838, 'Mya', 60, 381);
insert into PATIENT (id_patient, name_p, age, id_call)
values (734, 'Cia', 21, 315);
insert into PATIENT (id_patient, name_p, age, id_call)
values (609, 'Jan', 120, 138);
insert into PATIENT (id_patient, name_p, age, id_call)
values (627, 'Gia', 59, 395);
insert into PATIENT (id_patient, name_p, age, id_call)
values (866, 'Lee', 90, 138);
insert into PATIENT (id_patient, name_p, age, id_call)
values (193, 'Mya', 108, 182);
insert into PATIENT (id_patient, name_p, age, id_call)
values (347, 'Ira', 101, 294);
insert into PATIENT (id_patient, name_p, age, id_call)
values (812, 'Tia', 64, 384);
insert into PATIENT (id_patient, name_p, age, id_call)
values (524, 'Gia', 72, 355);
insert into PATIENT (id_patient, name_p, age, id_call)
values (102, 'Tia', 52, 229);
insert into PATIENT (id_patient, name_p, age, id_call)
values (161, 'Una', 5, 148);
insert into PATIENT (id_patient, name_p, age, id_call)
values (771, 'Tia', 52, 298);
insert into PATIENT (id_patient, name_p, age, id_call)
values (694, 'Dot', 57, 224);
insert into PATIENT (id_patient, name_p, age, id_call)
values (739, 'Pia', 86, 340);
insert into PATIENT (id_patient, name_p, age, id_call)
values (605, 'Hed', 4, 357);
insert into PATIENT (id_patient, name_p, age, id_call)
values (401, 'Ren', 46, 446);
insert into PATIENT (id_patient, name_p, age, id_call)
values (197, 'Tia', 52, 263);
insert into PATIENT (id_patient, name_p, age, id_call)
values (858, 'Ari', 96, 340);
insert into PATIENT (id_patient, name_p, age, id_call)
values (888, 'Una', 83, 266);
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
values (282, 'Ken', 25, 339);
insert into PATIENT (id_patient, name_p, age, id_call)
values (405, 'Dot', 71, 265);
insert into PATIENT (id_patient, name_p, age, id_call)
values (935, 'Eli', 20, 449);
insert into PATIENT (id_patient, name_p, age, id_call)
values (253, 'Eli', 66, 246);
insert into PATIENT (id_patient, name_p, age, id_call)
values (921, 'Pia', 49, 453);
insert into PATIENT (id_patient, name_p, age, id_call)
values (621, 'Tia', 92, 392);
insert into PATIENT (id_patient, name_p, age, id_call)
values (747, 'Eli', 9, 297);
insert into PATIENT (id_patient, name_p, age, id_call)
values (846, 'Bev', 21, 298);
insert into PATIENT (id_patient, name_p, age, id_call)
values (467, 'Ari', 95, 499);
insert into PATIENT (id_patient, name_p, age, id_call)
values (170, 'Jan', 5, 152);
insert into PATIENT (id_patient, name_p, age, id_call)
values (852, 'Ken', 41, 363);
insert into PATIENT (id_patient, name_p, age, id_call)
values (164, 'Jan', 85, 284);
insert into PATIENT (id_patient, name_p, age, id_call)
values (751, 'Noe', 56, 333);
insert into PATIENT (id_patient, name_p, age, id_call)
values (551, 'Tia', 117, 168);
insert into PATIENT (id_patient, name_p, age, id_call)
values (860, 'Eli', 69, 314);
insert into PATIENT (id_patient, name_p, age, id_call)
values (159, 'Bev', 111, 689);
insert into PATIENT (id_patient, name_p, age, id_call)
values (884, 'Tia', 58, 381);
insert into PATIENT (id_patient, name_p, age, id_call)
values (281, 'Ora', 118, 410);
insert into PATIENT (id_patient, name_p, age, id_call)
values (691, 'Noe', 30, 138);
insert into PATIENT (id_patient, name_p, age, id_call)
values (482, 'Sky', 14, 181);
insert into PATIENT (id_patient, name_p, age, id_call)
values (545, 'Hed', 78, 246);
insert into PATIENT (id_patient, name_p, age, id_call)
values (160, 'Hed', 110, 276);
insert into PATIENT (id_patient, name_p, age, id_call)
values (441, 'Ren', 28, 113);
insert into PATIENT (id_patient, name_p, age, id_call)
values (113, null, 72, 263);
insert into PATIENT (id_patient, name_p, age, id_call)
values (261, 'Ira', 24, 856);
insert into PATIENT (id_patient, name_p, age, id_call)
values (907, 'Eli', 10, 204);
insert into PATIENT (id_patient, name_p, age, id_call)
values (919, 'Ren', 54, 442);
insert into PATIENT (id_patient, name_p, age, id_call)
values (782, 'Tia', 99, 247);
insert into PATIENT (id_patient, name_p, age, id_call)
values (910, 'Bev', 24, 204);
insert into PATIENT (id_patient, name_p, age, id_call)
values (380, 'Sky', 59, 408);
insert into PATIENT (id_patient, name_p, age, id_call)
values (893, 'Noe', 58, 420);
insert into PATIENT (id_patient, name_p, age, id_call)
values (964, 'Gia', 82, 201);
insert into PATIENT (id_patient, name_p, age, id_call)
values (835, 'Pia', 91, 493);
insert into PATIENT (id_patient, name_p, age, id_call)
values (400, 'Una', 72, 411);
insert into PATIENT (id_patient, name_p, age, id_call)
values (420, null, 7, 384);
commit;
prompt 189 records loaded
prompt Enabling foreign key constraints for CALL...
alter table CALL enable constraint SYS_C007646;
alter table CALL enable constraint SYS_C007647;
prompt Enabling foreign key constraints for NEW_EMPLOYEE...
alter table NEW_EMPLOYEE enable constraint FK_TEAM_EMPLOYEE;
prompt Enabling foreign key constraints for ORDERS...
alter table ORDERS enable constraint FK_TEAM_ORDERS;
prompt Enabling foreign key constraints for NEW_EQUIPMENT...
alter table NEW_EQUIPMENT enable constraint FK_ID_ORDERS;
prompt Enabling foreign key constraints for PATIENT...
alter table PATIENT enable constraint SYS_C007658;
prompt Enabling triggers for HOSPITAL...
alter table HOSPITAL enable all triggers;
prompt Enabling triggers for TEAM...
alter table TEAM enable all triggers;
prompt Enabling triggers for CALL...
alter table CALL enable all triggers;
prompt Enabling triggers for NEW_EMPLOYEE...
alter table NEW_EMPLOYEE enable all triggers;
prompt Enabling triggers for ORDERS...
alter table ORDERS enable all triggers;
prompt Enabling triggers for NEW_EQUIPMENT...
alter table NEW_EQUIPMENT enable all triggers;
prompt Enabling triggers for PATIENT...
alter table PATIENT enable all triggers;
set feedback on
set define on
prompt Done.

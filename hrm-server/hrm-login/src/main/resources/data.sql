
INSERT INTO login.role(rolename) VALUES('ADMIN');
INSERT INTO login.role(rolename) VALUES('DIRECTOR');
INSERT INTO login.role(rolename) VALUES('HR_MANAGER');
INSERT INTO login.role(rolename) VALUES('MANAGER');
INSERT INTO login.role(rolename) VALUES('ACCOUNTANT');
INSERT INTO login.role(rolename) VALUES('HR');
INSERT INTO login.role(rolename) VALUES('EMPLOYEE');
INSERT INTO login.role(rolename) VALUES('TRAINEE');
INSERT INTO login.role(rolename) VALUES('TRAINER');

--colors--
INSERT INTO leavesystem.colors VALUES (1, 'red', '#ad2121', '#FAE3E3');
INSERT INTO leavesystem.colors VALUES (2, 'blue', '#1e90ff', '#D1E8FF');
INSERT INTO leavesystem.colors VALUES (3, 'yellow', '#e3bc08', '#FDF1BA');

--resizable--
INSERT INTO leavesystem.resizable VALUES (1, true, true);
INSERT INTO leavesystem.resizable VALUES (2, true, false);
INSERT INTO leavesystem.resizable VALUES (3, false, true);
INSERT INTO leavesystem.resizable VALUES (4, false, false);

--leave-type--
INSERT INTO leavesystem.leave_type VALUES (1, '2008-10-10 00:00:00', 14, 'Annual', '2018-10-10 00:00:00');
INSERT INTO leavesystem.leave_type VALUES (2, '2018-10-10 00:00:00', 7, 'Casual', '2018-10-10 00:00:00');
INSERT INTO leavesystem.leave_type VALUES (3, '2018-10-10 00:00:00', 14, 'Medical', '2018-10-10 00:00:00');

INSERT INTO employee.department(department_name) VALUES('HR');
INSERT INTO employee.department(department_name) VALUES('Manager');
INSERT INTO employee.department(department_name) VALUES('QA');
INSERT INTO employee.department(department_name) VALUES('Development');
INSERT INTO employee.department(department_name) VALUES('Account');

--user--
INSERT INTO employee."user" VALUES (1, '1988-08-12 00:00:00', 'sinthu@gmail.com', 'sinthuja', 'female', '2018-07-07 00:00:00', 'single', '0766548594', 'Srilankan', '884561237V', 'Manipay Jaffna', NULL, 'Hindu', 'Manipay Jaffna', 1, '0214567893', '2018-08-10 00:00:00', 1, 6);
INSERT INTO employee."user" VALUES (2, '1986-04-21 00:00:00', 'betsy@gmail.com', 'betsy', 'female', '2018-07-08 00:00:00', 'married', '0777526389', 'Srilankan', '864521472V', 'Pandatharippu Jaffna', NULL, 'Christian', 'Pandatharippu Jaffna', 1, '02177775421', '2018-08-10 00:00:00', 2, 1);
INSERT INTO employee."user" VALUES (3, '1991-02-25 00:00:00', 'paki@gmail.com', 'Pakikaran', 'male', '2018-08-20 00:00:00', 'single', '0775458526', 'Srilankan', '911251257V', 'Manipay Jaffna', NULL, 'Hindu', 'Manipay Jaffna', 1, '02145562574', '2018-08-10 00:00:00', 4, 7);
INSERT INTO employee."user" VALUES (4, '1990-04-25 00:00:00', 'dilshi@gmail.com', 'dilshanth', 'male', '2018-08-20 00:00:00', 'single', '0711125525', 'Srilankan', '901542548V', 'Kantharmadam Jaffna', NULL, 'Hindu', 'Kantharmadam Jaffna', 1, '02145645612', '2018-08-10 00:00:00', 4, 7);

--leave-allocation--
INSERT INTO leavesystem.leave_allocation VALUES (7, 14, 0, 1, 2);
INSERT INTO leavesystem.leave_allocation VALUES (8, 7, 0, 2, 2);
INSERT INTO leavesystem.leave_allocation VALUES (9, 14, 0, 3, 2);
INSERT INTO leavesystem.leave_allocation VALUES (2, 7, 0, 2, 1);
INSERT INTO leavesystem.leave_allocation VALUES (4, 14, 0, 1, 3);
INSERT INTO leavesystem.leave_allocation VALUES (5, 7, 0, 2, 3);
INSERT INTO leavesystem.leave_allocation VALUES (3, 14, 0, 3, 1);
INSERT INTO leavesystem.leave_allocation VALUES (1, 14, 0, 1, 1);
INSERT INTO leavesystem.leave_allocation VALUES (6, 14, 0, 3, 3);
INSERT INTO leavesystem.leave_allocation VALUES (10, 14, 0, 1, 4);
INSERT INTO leavesystem.leave_allocation VALUES (11, 7, 0, 2, 4);
INSERT INTO leavesystem.leave_allocation VALUES (12, 14, 0, 3, 4);

--authorize type--
INSERT INTO employee.authorize_type(authorize_type_name) VALUES('Create');
INSERT INTO employee.authorize_type(authorize_type_name) VALUES('Read');
INSERT INTO employee.authorize_type(authorize_type_name) VALUES('Update');
INSERT INTO employee.authorize_type(authorize_type_name) VALUES('Delete');

--module--
--INSERT INTO employee.module(module_name) VALUES('Leave System');
--INSERT INTO employee.module(module_name) VALUES('Self Service');

--Leave Requests
--Approve or Cancel Leave
--Leave History
--Request Leave
--Leave Post Event Calendar

----privilege--
----1st module--
----admin--
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,1,1,1);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(false,2,1,1);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,3,1,1);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,4,1,1);
----director--
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,1,1,2);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(false,2,1,2);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,3,1,2);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,4,1,2);
----hr manager--
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,1,1,3);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(false,2,1,3);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,3,1,3);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,4,1,3);
----manager--
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,1,1,4);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(false,2,1,4);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,3,1,4);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,4,1,4);
----accountant--
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,1,1,5);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(false,2,1,5);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,3,1,5);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,4,1,5);
----hr--
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,1,1,6);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(false,2,1,6);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,3,1,6);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,4,1,6);
----employee--
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,1,1,7);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(false,2,1,7);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,3,1,7);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,4,1,7);
----trainee--
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,1,1,8);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(false,2,1,8);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,3,1,8);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,4,1,8);
----trainer--
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,1,1,9);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(false,2,1,9);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,3,1,9);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,4,1,9);
--
----2nd module--
----admin--
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,1,2,1);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(false,2,2,1);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,3,2,1);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,4,2,1);
----director--
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,1,2,2);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(false,2,2,2);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,3,2,2);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,4,2,2);
----hr manager--
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,1,2,3);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(false,2,2,3);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,3,2,3);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,4,2,3);
----manager--
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,1,2,4);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(false,2,2,4);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,3,2,4);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,4,2,4);
----accountant--
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,1,2,5);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(false,2,2,5);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,3,2,5);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,4,2,5);
----hr--
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,1,2,6);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(false,2,2,6);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,3,2,6);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,4,2,6);
----employee--
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,1,2,7);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(false,2,2,7);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,3,2,7);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,4,2,7);
----trainee--
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,1,2,8);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(false,2,2,8);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,3,2,8);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,4,2,8);
----trainer--
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,1,2,9);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(false,2,2,9);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,3,2,9);
--INSERT INTO employee.privilege(is_enabled, authorize_type_id, module_id, role_id) VALUES(true,4,2,9);


--permission--
--INSERT INTO employee.permission(authorize_type_id, module_id) VALUES(1,1);
--INSERT INTO employee.permission(authorize_type_id, module_id) VALUES(2,1);
--INSERT INTO employee.permission(authorize_type_id, module_id) VALUES(3,1);
--INSERT INTO employee.permission(authorize_type_id, module_id) VALUES(4,1);
--INSERT INTO employee.permission(authorize_type_id, module_id) VALUES(1,2);
--INSERT INTO employee.permission(authorize_type_id, module_id) VALUES(2,2);
--INSERT INTO employee.permission(authorize_type_id, module_id) VALUES(3,2);
--INSERT INTO employee.permission(authorize_type_id, module_id) VALUES(4,2);

--
-- Data for Name: careerdevelopmentplan; Type: TABLE DATA; Schema: employee; Owner: postgres
--

INSERT INTO employee.careerdevelopmentplan VALUES (1, 'Communication skill');
INSERT INTO employee.careerdevelopmentplan VALUES (2, 'WSO2');
INSERT INTO employee.careerdevelopmentplan VALUES (3, 'Databse designing');
INSERT INTO employee.careerdevelopmentplan VALUES (4, 'Project mangement');
INSERT INTO employee.careerdevelopmentplan VALUES (5, 'QA Automation');

--
-- Data for Name: user_career_development_plan_company; Type: TABLE DATA; Schema: employee; Owner: postgres
--

INSERT INTO employee.user_career_development_plan_self VALUES (1, 'Planning', 1, 2);
INSERT INTO employee.user_career_development_plan_self VALUES (2, 'Processing', 2, 2);
INSERT INTO employee.user_career_development_plan_self VALUES (3, 'Processing', 3, 3);
INSERT INTO employee.user_career_development_plan_self VALUES (4, 'Planning', 2, 3);
INSERT INTO employee.user_career_development_plan_self VALUES (5, 'Procesing', 4, 4);

--
-- Data for Name: user_career_development_plan_self; Type: TABLE DATA; Schema: employee; Owner: postgres
--

INSERT INTO employee.user_career_development_plan_company VALUES (1, 'Planning', 3, 2);
INSERT INTO employee.user_career_development_plan_company VALUES (2, 'Processing', 4, 2);
INSERT INTO employee.user_career_development_plan_company VALUES (3, 'Processing', 1, 3);
INSERT INTO employee.user_career_development_plan_company VALUES (4, 'Planning', 4, 3);
INSERT INTO employee.user_career_development_plan_company VALUES (5, 'Procesing', 1, 4);


--
-- Data for Name: welfare_event; Type: TABLE DATA; Schema: employee; Owner: postgres
--

INSERT INTO employee.welfare_event VALUES (1, '2018-12-25', 'Approved', 100000, 'Seminar', 1);
INSERT INTO employee.welfare_event VALUES (3, '2018-12-29', 'Approved', 10000, 'Seminar', 1);
INSERT INTO employee.welfare_event VALUES (2, '2018-12-17', 'Approved', 200000, 'Sports meet', 1);


--
-- Data for Name: welfare_type; Type: TABLE DATA; Schema: employee; Owner: postgres
--

INSERT INTO employee.welfare_type VALUES (1, 'General welfare');
INSERT INTO employee.welfare_type VALUES (2, 'Indiviual welfare');



--
-- Data for Name: highest_qualification; Type: TABLE DATA; Schema: employee; Owner: postgres
--

INSERT INTO employee.highest_qualification VALUES (1, 'Bsc in IT');
INSERT INTO employee.highest_qualification VALUES (2, 'Bsc ');


--
-- Data for Name: job; Type: TABLE DATA; Schema: employee; Owner: postgres
--

INSERT INTO employee.job VALUES (1, 'QA', 'QA001');
INSERT INTO employee.job VALUES (2, 'HR', 'HR002');


--
-- Data for Name: applicant; Type: TABLE DATA; Schema: employee; Owner: postgres
--

INSERT INTO employee.applicant VALUES (1, 'Jaffna', '\xaced00057372000c6a6176612e696f2e46696c65042da4450e0de4ff0300014c0004706174687400124c6a6176612f6c616e672f537472696e673b787074001b433a5c66616b65706174685c64622064657461696c732e646f63787702005c78', '2018-12-05', 'hello@gmail.com', 'Kaji', '384823V', 1, 2);
INSERT INTO employee.applicant VALUES (9, 'Jaffna', NULL, '2018-12-01', 'yasoselva@gmail.com', 'Yaso', '38945034V', 1, 1);

--
-- Data for Name: designation; Type: TABLE DATA; Schema: employee; Owner: postgres
--

INSERT INTO employee.designation VALUES (1, 'Associate Software Engineer');
INSERT INTO employee.designation VALUES (2, 'Software Engineer');



--
-- Data for Name: denied_promotion; Type: TABLE DATA; Schema: employee; Owner: postgres
--

INSERT INTO employee.denied_promotion VALUES (1, 1, '2018-12-10', 'par score', 1, 1);
INSERT INTO employee.denied_promotion VALUES (2, 2, '2018-11-12', 'Leave', 2, 1);


--
-- Data for Name: promotion; Type: TABLE DATA; Schema: employee; Owner: postgres
--

INSERT INTO employee.promotion VALUES (1, '2', '2010-12-12', 'par score', 50000, 1, 1);


--
-- Data for Name: recuitment; Type: TABLE DATA; Schema: employee; Owner: postgres
--

INSERT INTO employee.recuitment VALUES (1, 'Internal');
INSERT INTO employee.recuitment VALUES (2, 'External');


--
-- Data for Name: request_promotion; Type: TABLE DATA; Schema: employee; Owner: postgres
--

INSERT INTO employee.request_promotion VALUES (1, '2010-12-12', 'Career achivement', '1', '2010-12-12', 1, 1);
INSERT INTO employee.request_promotion VALUES (2, '2018-12-12', 'Par score', '2', '2018-12-12', 2, 1);


--
-- Data for Name: vacancy; Type: TABLE DATA; Schema: employee; Owner: postgres
--

INSERT INTO employee.vacancy VALUES (1, '2018-06-07', 'Internal', 3, 10000, '2018-06-07', '2019-03-04', 1, 1, 1, 1);
INSERT INTO employee.vacancy VALUES (2, '2018-06-07', 'External', 5, 30000, '2018-06-07', '2019-03-04', 1, 1, 1, 1);


use MantechHelpdesk;

/*Table department*/
insert into Department(title, description) values("Education", "Education Department");
insert into Department(title, description) values("Management Services", "Management Services Department");
insert into Department(title, description) values("Learning Services", "Learning Services Department");
insert into Department(title, description) values("Internal Systems", "Internal Systems Department");
insert into Department(title, description) values("Human Resources", "Human Resources Department");

/*Category*/
insert into category(title, description) values ("Hardware Problem", "All problem about hardware"),
												("Network Problem", "All problem about network"),
												("Software Problem", "All problem about software"),
												("Work Environment", "All problem about work environment"),
												("Staff Complaints", "All problem about staff"),
                                                ("Office Equipment", "All problem about office equipment"),
                                                ("Other Problem", "Something else");


insert into User(username, password, fullname, department_id, date_of_birth, phone_number, email, role_id, img_avatar) values
													 ("admin", "admin", "Tin Blanc", null, "1991-12-13", "+84969696969", "admin@helpdesk.com", 0, "upload/tinblanc.jpg"),
													 ("quanva", "12345", "Vo Anh Quan", 1, "1987-03-10", "+841628864563", "quanva_a05273@gpt.aptech.ac.vn", 2, "upload/user2.png"), 
													 ("tanth", "12345", "Tran Huu Tan", 1, "1992-08-11", "+84979797979", "tanth_b05273@fpt.aptech.ac.vn", 2, "upload/user3.png"), 
													 ("phongtq", "12345", "Ta Quang Phong", 1, "1988-03-12", "+84986868686", "phongtq_c05273@fpt.aptech.ac.vn", 2, "upload/user4.png"),
													 ("tech_martin", "12345", "Martin Garrix", null, "1989-09-15", "+84696969696", "martingarrix@helpdesk.com", 1, "upload/user5.png"),
													 ("tech_david", "12345", "David Guetta", null, "1990-04-19", "+84945454545", "davidguetta@helpdesk.com", 1, "upload/user2.png"),
													 ("tech_juicy", "12345", "Juicy M", null, "1994-08-01", "+84915151515", "sontungmtp@helpdesk.com", 1, "upload/user1.png");
/*Complaint*/
insert into Complaint(category_id, title, description, date_close, department_id, time_taken, employee_id, status, priority)
	values (1, "Photocopy Machine", "Photocopy machine does not work",  null, 1, 3, 2, default, default),
		   (2, "Microsoft Office","MS in my computer can not save documents", null, 1, 3, 2, default, 0),
		   (2, "Air Conditioner","Air Conditioner does not cool",null, 1, 3, 3, default, default),
		   (3, "Internet Download Manager","IDM waring: IDM register with fake serial number",null, 2, 3, 3, default, 0),
		   (3, "CD Driver","CD Driver does not work",null, 2, 3, 4, default, default),
		   (4, "Monitor","My monitor can not display",null, 3, 3, 4, default, default),
		   (4, "Employee1","He always make noise in work time",null, 3, 3, 4, default, default),
		   (4, "I have a problem with my computer","this is description",null, 4, 3, 4, default, default),
		   (4, "I have a problem with my computer","this is description",null, 5, 3, 4, default, 2),
		   (5, "I have a problem with my computer","this is description",null, 5, 3, 4, default, 2),
		   (5, "I have a problem with my computer","this is description",null, 5, 3, 4, default, default);


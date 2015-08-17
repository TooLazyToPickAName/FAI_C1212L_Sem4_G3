use MantechHelpdesk;

/*Table department*/
insert into Department(title, description) values("Education", "Education Department");
insert into Department(title, description) values("Management Services", "Management Services Department");
insert into Department(title, description) values("Learning Services", "Learning Services Department");
insert into Department(title, description) values("Internal Systems", "Internal Systems Department");
insert into Department(title, description) values("Human Resources", "Human Resources Department");

/*Category*/
insert into category(title, description) values ("Hardware Failure", "Hardware failure problem"),
												("Software crashh", "software's problem"),
												("Software crashh 1", "software's problem"),
												("Software crashh 2", "software's problem"),
												("Software crashh 3", "software's problem"),
												("Other", "something else");

/*Technical*/
insert into Technical(fullname, date_created) values ("Wind Luffy", default),
													 ("Lelouch Lamperoge", default),
													 ("Ken Kaneki", default);

insert into Role(title) values ("Administrator"),
							   ("Employee");

insert into User(username, password, fullname, department_id, date_of_birth, phone_number, email, role_id) values
													 ("admin", "admin", "I'm Administrator", null, "1992-08-11", "+841904842392", "admin@helpdesk.com", 1),
													 ("employee1", "employee1", "I'm Employee 1", 1, "1992-08-11", "+841904842392", "employee1@helpdesk.com", 2), 
													 ("employee2", "employee2", "I'm Employee 2", 1, "1992-08-11", "+841904842392", "employee2@helpdesk.com", 2), 
													 ("employee3", "employee3", "I'm Employee 3", 1, "1992-08-11", "+841904842392", "employee1@helpdesk.com", 2);
/*Complaint*/
insert into Complaint(category_id, title, date_close, department_id, time_taken, employee_id, status_complaint, priority)
	values (1, "I have a problem with my computer",  null, 1, 3, 2, default, default),
		   (2, "I have a problem with my computer", null, 1, 3, 2, default, default),
		   (2, "I have a problem with my computer",null, 1, 3, 3, default, default),
		   (3, "I have a problem with my computer",null, 2, 3, 3, default, default),
		   (3, "I have a problem with my computer",null, 2, 3, 4, default, default),
		   (4, "I have a problem with my computer",null, 3, 3, 4, default, default),
		   (4, "I have a problem with my computer",null, 3, 3, 4, default, default),
		   (4, "I have a problem with my computer",null, 4, 3, 4, default, default),
		   (4, "I have a problem with my computer",null, 5, 3, 4, default, default),
		   (5, "I have a problem with my computer",null, 5, 3, 4, default, default),
		   (5, "I have a problem with my computer",null, 5, 3, 4, default, default);

insert into ComplaintsTechnicals(complaint_id, technical_id, date_created) 
values (1, 1, default), 		    
	   (2, 1, default),
	   (3, 1, default),
	   (4, 1, default),
	   (4, 2, default),
	   (5, 1, default),
	   (5, 3, default),
	   (6, 1, default),
	   (6, 2, default),
	   (7, 1, default),
	   (7, 2, default),
	   (7, 3, default),
	   (8, 1, default),
	   (9, 1, default),
	   (10, 1, default),
	   (11, 1, default);


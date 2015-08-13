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
												("Other", "something else");

/*Complaint*/
insert into Complaint(category_id, date_close, department_id, technical_id, time_taken, employee_id, status_complaint, priority)
	values (1, null, 2, 2, 3, 3, default, default)


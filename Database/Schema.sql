create database MantechHelpdesk;
use MantechHelpdesk;
create table Complaint(
	id integer auto_increment primary key not null,
	category_id integer not null,
	date_register datetime not null default current_timestamp,
	date_close datetime,
	department_id integer not null,
	technical_id integer not null,
	time_taken integer,
	employee_id integer not null,
	status_complaint varchar(20) default "pending",
	priority varchar(20) default "normal"
);

create table Category(
	id integer auto_increment primary key not null,
	title varchar(100) not null,
	description varchar(500),
	date_created datetime default current_timestamp
);

create table Department(
	id integer auto_increment primary key not null,
	title varchar(100) not null,
	description varchar(500),
	date_created datetime default current_timestamp
);
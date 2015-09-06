drop database if exists MantechHelpdesk;
create database MantechHelpdesk;
use MantechHelpdesk;

create table Complaint(
	id integer auto_increment primary key not null,
	title varchar(200),
	description text,
	category_id integer not null,
	date_register datetime not null default current_timestamp,
	date_close datetime,
	department_id integer not null,
	time_taken integer,
	employee_id integer not null,
	status int default 0 not null, -- 0 :pending, 1: progressing, 2: rejected, 3: closed
	priority int default 1 not null -- 0 :High, 1: Normal, 2: Low
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

create table User(
	id integer auto_increment not null primary key,
	username varchar(50) not null unique,
	password varchar(100) not null,
	fullname varchar(50) not null,
	department_id integer,
	date_of_birth date,
	phone_number varchar(20),
	email varchar(200),
	role_id integer not null
);

create table ComplaintsTechnicals(
	complaint_id integer not null,
	technical_id integer not null,
	date_created datetime default current_timestamp,
	primary key (complaint_id, technical_id)
);

alter table Complaint add constraint fk_ComplaintUser foreign key (employee_id) references User(id);
alter table Complaint add constraint fk_ComplaintCategory foreign key (category_id) references Category(id);
alter table Complaint add constraint fk_ComplaintDepartment foreign key (department_id) references Department(id);

alter table ComplaintsTechnicals add constraint fk_CTComplaints foreign key (complaint_id) references Complaint(id);
alter table ComplaintsTechnicals add constraint fk_CTTechnicals foreign key (technical_id) references User(id);

alter table User add constraint fk_UserDepartment foreign key (department_id) references Department(id);

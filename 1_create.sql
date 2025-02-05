-- SQL syntax for create

CREATE TABLE IF NOT EXISTS university(
	id serial not null,
	name varchar(100) not null,
	location varchar(100) not null,
	established_year integer not null,
	accreditation_status varchar(50) not null,
	website varchar(50) not null,
	primary key(id)
);

CREATE TABLE IF NOT EXISTS faculty(
	id serial not null,
	name varchar(100) not null,
	location varchar(100) not null,
	dean_name varchar(100) not null,
	established_year integer not null,
	contact_number integer not null,
	website varchar(100) not null,
	primary key(id),
	university_id integer not null,
	foreign key (university_id) references university(id)
);

CREATE TABLE IF NOT EXISTS facilities(
	id serial not null,
	name varchar(100) not null,
	operating_hours varchar(100) not null,
	primary key(id)
);

CREATE TABLE IF NOT EXISTS faculty_facilities(
	id serial not null,
	primary key(id),
	faculty_id integer not null,
	facilities_id integer not null,
	foreign key (faculty_id) references faculty(id),
	foreign key (facilities_id) references facilities(id)
);

CREATE TABLE IF NOT EXISTS department(
	id serial not null,
	name varchar(100) not null,
	head_of_department varchar(100) not null,
	primary key(id),
	faculty_id integer not null,
	foreign key (faculty_id) references faculty(id)
);

CREATE TABLE IF NOT EXISTS teacher(
	id serial not null,
	name varchar(100) not null,
	title varchar(100) not null,
	specialization varchar(100) not null,
	hire_date date not null,
	email varchar(100) not null,
	primary key(id)
);

CREATE TABLE IF NOT EXISTS department_teacher(
	id serial not null,
	primary key(id),
	department_id integer not null,
	teacher_id integer not null,
	foreign key (department_id) references department(id),
	foreign key (teacher_id) references teacher(id)
);

CREATE TABLE IF NOT EXISTS specialization(
	id serial not null,
	name varchar(100) not null,
	duration_years integer not null,
	primary key(id),
	department_id integer not null,
	foreign key (department_id) references department(id)
);

CREATE TABLE IF NOT EXISTS courses(
	id serial not null,
	name varchar(100) not null,
	semester smallint not null,
	total_hours integer not null,
	credits integer not null,
	primary key(id),
	teacher_id integer not null,
	foreign key (teacher_id) references teacher(id)
);

CREATE TABLE IF NOT EXISTS specialization_courses(
	id serial not null,
	primary key(id),
	specialization_id integer not null,
	courses_id integer not null,
	foreign key (specialization_id) references specialization(id),
	foreign key (courses_id) references courses(id)
);

CREATE TABLE IF NOT EXISTS student(
	id serial not null,
	name varchar(100) not null,
	email varchar(100) not null,
	phone integer not null,
	origin_env varchar(10) not null,
	primary key(id)
);

CREATE TABLE IF NOT EXISTS student_specialization(
	id serial not null,
	primary key(id),
	student_id integer not null,
	specialization_id integer not null,
	foreign key (student_id) references student(id),
	foreign key (specialization_id) references specialization(id)
);

CREATE TABLE IF NOT EXISTS student_courses(
	id serial not null,
	primary key(id),
	student_id integer not null,
	courses_id integer not null,
	foreign key (student_id) references student(id),
	foreign key (courses_id) references courses(id)
);

CREATE TABLE IF NOT EXISTS grades(
	id serial not null,
	grade smallint not null,
	promotion_note boolean not null,
	grade_date date not null,
	primary key(id),
	courses_id integer not null,
	student_id integer not null,
	foreign key (courses_id) references courses(id),
	foreign key (student_id) references student(id)
);

CREATE TABLE IF NOT EXISTS registration(
	id serial not null,
	enrollment_year integer not null,
	status varchar(50) not null,
	primary key(id),
	faculty_id integer not null,
	student_id integer not null,
	foreign key (faculty_id) references faculty(id),
	foreign key (student_id) references student(id)
);

CREATE TABLE IF NOT EXISTS student_goals(
	id serial not null,
	goal_description varchar(100) not null,
	status varchar(100) not null,
	primary key(id),
	student_id integer not null unique,
	foreign key (student_id) references student(id)
);

CREATE TABLE IF NOT EXISTS feedback(
	id serial not null,
	rating smallint not null,
	feedback_date date not null,
	primary key(id),
	student_id integer not null,
	courses_id integer not null,
	teacher_id integer not null,
	foreign key (student_id) references student(id),
	foreign key (courses_id) references courses(id),
	foreign key (teacher_id) references teacher(id)
);
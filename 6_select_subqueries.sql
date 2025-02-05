-- SQL syntax for select with subquery

-- table 1 - university
SELECT * FROM university where location = (select location from university order by established_year asc limit 1);
SELECT * FROM university where location in (select location from university where location like 'Calea%') and established_year = 1945;
SELECT * FROM university where established_year in (select established_year from university where established_year between 1900 and 1956) and location like '%Buc%' order by id asc;
SELECT name, location, accreditation_status from university where name in (select name from university where name like '%T%') and accreditation_status = 'Accredited';
SELECT * FROM university where name = (select name from university where name like '%Buc%' and established_year between 1950 and 1970);
SELECT * FROM university where name in (select name from university where name like '%West%') and location like '%Timisoara%';

-- table 2 - faculty
SELECT * FROM faculty where location in (select location from faculty where location like '%Oradea%');
SELECT name, university_id, contact_number from faculty where name = (select name from faculty where name like '%Geog%');
SELECT * FROM faculty where established_year = (select established_year from faculty order by established_year desc limit 1);
SELECT * FROM faculty where university_id in (select university_id from faculty) and established_year < 1950 limit 10;
SELECT * FROM (select * from faculty where university_id in (select id from faculty) or established_year >= 1900) as memory_table where established_year between 1940 and 1960;
SELECT * FROM (select * from faculty where dean_name like '%Ion%' or established_year > 1900) as memory_table where contact_number = '294101931';

-- table 3 - facilities
SELECT * FROM facilities where operating_hours in (select operating_hours from facilities where operating_hours = '24/7');
SELECT * FROM facilities where name = (select name from facilities where name = 'Library Annex');
SELECT * FROM facilities where operating_hours in (select operating_hours from facilities where name like '%Lab%') and name like '%Lab%';
SELECT * FROM facilities where name in (select name from facilities where operating_hours = '24/7');
SELECT * FROM facilities where operating_hours = (select operating_hours from facilities where name = 'Central Library');
SELECT * FROM facilities where operating_hours in (select operating_hours from facilities where operating_hours between '08:00' and '20:00') limit 10;

-- table 4 -- department
SELECT name, faculty_id from department where name = (select name from department where name like '%Geo%');
SELECT * FROM department where head_of_department = (select head_of_department from department where faculty_id = 3);
SELECT * FROM department where name = (select name from department where head_of_department like '%Manole');
SELECT * FROM department where faculty_id in (select faculty_id from department where faculty_id < 10); 
SELECT * FROM (select * from department where faculty_id in (select faculty_id from department) or name like '%Engineering%') as memory_table where name like '%Science%';
SELECT * FROM department where faculty_id in (select faculty_id from department where head_of_department like '%Ana%');

-- table 5 -- specialization
SELECT * FROM specialization where duration_years = (select duration_years from specialization where name like '%Software%');
SELECT * FROM specialization where department_id = (select department_id from specialization where name = 'Data Science');
SELECT * FROM specialization where duration_years > (select avg(duration_years) from specialization);
SELECT * FROM (select * from specialization where duration_years >= 4 and department_id in (select id from department where name like '%Engineering%')) as memory_table where name like '%Software%';
SELECT * FROM specialization where duration_years = 4 and department_id in (select id from department where id > 20);
SELECT * FROM specialization where department_id in (select id from department where name like '%Engineering%');

-- table 6 -- teacher
SELECT name, email, specialization from teacher where specialization = (select specialization from teacher where specialization = 'Data Science' and title = 'Professor');
SELECT * FROM teacher where hire_date = (select hire_date from teacher where hire_date > '01.01.2022');
SELECT name, title, email from teacher where name = (select name from teacher where name like '%Popa%' and id = 7);
SELECT name, hire_date from teacher where title = 'Professor' and hire_date > (select hire_date from teacher where title = 'Lecturer' and name = 'Sorin Andrei');
SELECT name from teacher where title = 'Professor' and hire_date < (select hire_date from teacher where title = 'Lecturer' and name = 'Gabriel Tudor');
SELECT * FROM teacher where specialization in (select specialization from teacher where title = 'Lecturer') order by name asc limit 7;

-- table 7 -- courses
SELECT name, teacher_id from courses where credits in (select credits from courses where credits = 6) and name like '%Medical%';
SELECT * FROM courses where credits in (select credits from courses where credits = 3) and total_hours = 35;
SELECT semester, name, teacher_id, total_hours from courses where name = (select name from courses where name like '%Anat%') and total_hours between 35 and 45;
SELECT * FROM courses where semester = 1 and teacher_id in (select teacher_id from courses) and teacher_id < 5;
SELECT * FROM (select * from courses where semester = 2) as filtered_courses where total_hours > 45;
SELECT * FROM (select * from courses where semester = 1) as filtered_courses where total_hours between 20 and 30 order by credits asc;

-- table 8 -- student
SELECT * FROM student where phone = (select phone from student where id = 25);
SELECT * FROM (select * from student where origin_env = 'urban') where name  like 'Popa%' or name like 'Ionescu%';
SELECT name, phone, origin_env from student where email = (select email from student where email like '%heci%');
SELECT * FROM student where phone = (select phone from student where phone = 0771456783);
SELECT * FROM (select * from student where origin_env = 'rural') as rural_students where email like '%gmail%' limit 10;
SELECT * FROM student where origin_env = 'urban' and name in (select name from student where name like 'Stoica%' or name like 'Marinescu%');

-- table 9 -- grades
SELECT * FROM grades where grade < (select avg(grade) from grades);
SELECT * FROM grades where grade = (select max(grade) from grades);
SELECT * FROM grades where grade_date = (select min(grade_date) from grades);
SELECT grade, promotion_note, grade_date, student_id from grades where grade > (select avg(grade) from grades);
SELECT grade, student_id from grades where grade = (select sum(grade) from grades where courses_id = 3);
SELECT * FROM grades where grade < (select min(grade) from grades where courses_id = 4);

-- table 10 -- registration
SELECT student_id, status from registration where faculty_id = (select faculty_id from registration where student_id = 1);
SELECT * FROM registration where enrollment_year = (select max(enrollment_year) from registration);
SELECT * FROM registration where status in (select status from registration where status like '%with%') and id between 40 and 45;
SELECT * FROM registration where enrollment_year = (select min(enrollment_year) from registration);
SELECT * FROM registration where enrollment_year = 2023 and faculty_id in (select faculty_id from registration where status = 'active');
SELECT * FROM registration where enrollment_year = 2020 and faculty_id in (select faculty_id from registration where enrollment_year = 2020 and status = 'active');

-- table 11 -- student_goals
SELECT * FROM student_goals where student_id = (select student_id from student_goals where id = 6) or status = 'Completed';
SELECT * FROM student_goals where student_id = (select id from student_goals order by student_id desc limit 1); 
SELECT * FROM student_goals where goal_description = (select goal_description from student_goals where status = 'Finalized' limit 1);
SELECT student_id, status from student_goals where status = 'Finalized' and goal_description = (select goal_description from student_goals where student_id = 3);
SELECT * FROM student_goals where student_id = (select student_id from student_goals where id = 12) or status = 'Delayed' order by student_id asc;
SELECT * FROM student_goals where student_id < (select student_id from student_goals where student_id = 10);

-- table 12 -- feedback
SELECT * FROM feedback where rating > (select avg(rating) from feedback) order by rating asc;
SELECT * FROM feedback where rating = (select min(rating) from feedback);
SELECT * FROM feedback where rating in (select rating from feedback where rating >= 9) and feedback_date between '01.01.2010' and '01.01.2015';
SELECT * FROM feedback where rating = (select avg(rating) from feedback where courses_id = 10);
SELECT * FROM feedback where rating <= (select min(rating) from feedback) or feedback_date > '01.01.2024';
SELECT * FROM feedback where student_id in (select student_id from feedback where courses_id = 3 and rating >= 9);
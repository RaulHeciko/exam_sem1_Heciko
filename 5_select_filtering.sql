-- SQL syntax for select with filtering

-- table 1 - university
SELECT * FROM university where established_year >=2000 order by name asc;
SELECT * FROM university where location like '%Buc%' limit 5;
SELECT * FROM university where accreditation_status like '%Not%' or id = 3 limit 10;
SELECT * FROM university where id between 1 and 30 and name like '%Timis%' order by id desc;
SELECT name, established_year from university where established_year <2000 order by established_year asc;
SELECT name, website, location from university where location like '% Timisoara';
SELECT * FROM university where website ='https://umbv.ro/';
SELECT name, id from university where name like '%Ti%' and id = 1;

-- table 2 - faculty
SELECT * FROM faculty where location like '%Brasov' or id =10;
SELECT * FROM faculty where dean_name like '%Popa%' order by established_year asc;
SELECT * FROM faculty where established_year between 2020 and 2025;
SELECT * FROM faculty where location like '%Arad' and dean_name = 'George Ilie';
SELECT name, location, contact_number, website from faculty where name like '%B%';
SELECT name, location, established_year from faculty order by established_year asc;
SELECT * FROM faculty where contact_number = '257624300';
select * from faculty where name like '%G%' and id = 5;

-- table 3 - facilities
SELECT * FROM facilities where name like 'Chemistry%';
SELECT operating_hours from facilities where id between 10 and 20;
SELECT * FROM facilities where name like '%Lab%' or id = 2 order by name asc;
SELECT * FROM facilities where name like 'C%';
SELECT operating_hours from facilities where id = 39 or id < 16;
SELECT name, operating_hours from facilities where id = 10 or id >= 35 order by name desc;
SELECT * FROM facilities where name like 'B%' and id = 16;
SELECT * FROM facilities where operating_hours = '09:00-18:00' and id = 32;

-- table 4 -- department
SELECT * FROM department where name like '%G%' and faculty_id = 1;
SELECT * FROM department where name like '%P%';
SELECT * FROM department where name like '%a%' order by name asc;
SELECT faculty_id from department limit 10;
SELECT name, faculty_id from department where id =1;
SELECT name, head_of_department from department order by head_of_department desc;
SELECT name, head_of_department from department where id = 2 or id <= 2;
SELECT * FROM department where faculty_id between 20 and 30;

-- table 5 -- specialization
SELECT * FROM specialization where name like '%P%' and id = 46;
SELECT * FROM specialization where department_id = 12 or id = 2;
SELECT name, department_id from specialization where duration_years >3 order by name asc;
SELECT name, department_id, duration_years from specialization where duration_years >3 order by name asc;
SELECT * FROM specialization where duration_years between 5 and 6 order by duration_years desc;
SELECT * FROM specialization where duration_years = 3 or id = 50;
SELECT * FROM specialization where duration_years = 3 and name like '%Geogra%';
SELECT * FROM specialization where duration_years = 4 order by name asc;

-- table 6 -- teacher
SELECT * FROM teacher where name like 'C%' and id = 9;
SELECT name, email from teacher where name like 'And%';
SELECT * FROM teacher where specialization = 'Geography' or id = 3;
SELECT * FROM teacher order by hire_date desc limit 5;
SELECT * FROM teacher where hire_date > '01.01.2013' order by hire_date desc;
SELECT name, title, specialization, email from teacher where email like 'd%' order by name asc;
SELECT * FROM teacher where hire_date between '01.01.2013' and '01.01.2015' order by hire_date asc;
SELECT * FROM teacher where hire_date between '01.01.1980' and '01.01.2015' order by hire_date asc limit 10;

-- table 7 -- courses
SELECT * FROM courses where name like 'Programm%';
SELECT * FROM courses where teacher_id = 15 or total_hours < 30 order by credits asc;
SELECT * FROM courses where name like '%a%' limit 13;
SELECT * FROM courses where semester = 1 order by total_hours asc;
SELECT name, credits, semester from courses where name like 'A%';
SELECT * FROM courses where semester = 2 and credits between 3 and 5 order by name asc limit 5;
SELECT name, semester, teacher_id from courses where name like '%F%' and teacher_id <=30;
SELECT * FROM courses where teacher_id = 16;

-- table 8 -- student
SELECT * FROM student where name = 'Tudor Sorin';
SELECT * FROM student where origin_env = 'rural';
SELECT origin_env, name from student where id between 25 and 30 order by name desc;
SELECT * FROM student where name like 'P%' limit 5;
SELECT phone, origin_env, name from student where id = 1 or id =2; 
SELECT * FROM student where email like '%r%' limit 18;
SELECT * FROM student where origin_env = 'urban' order by name asc limit 10;
SELECT * FROM student where name like '%a%' and origin_env like '%rural' and id < 5;

-- table 9 -- grades
SELECT * FROM grades where promotion_note = false or courses_id = 40;
SELECT * FROM grades where grade between 7 and 9 order by grade desc;
SELECT * FROM grades where grade_date = '23.01.2022';
SELECT * FROM grades where promotion_note = false;
SELECT grade, grade_date from grades where grade_date between '01.01.2020' and '31.12.2020';
SELECT * FROM grades where student_id between 5 and 20 order by grade asc limit 10 ;
SELECT student_id, grade, courses_id from grades where id < 10 limit 10;
SELECT * FROM grades where grade between 8 and 10 order by grade asc;

-- table 10 -- registration
SELECT student_id, faculty_id, status from registration where enrollment_year between 2010 and 2020 and id < 20;
SELECT * FROM registration where student_id = 10;
SELECT * FROM registration where status like '%grad%' or id =37 order by enrollment_year asc limit 5;
SELECT * FROM registration where faculty_id < 23 order by status asc;
SELECT student_id, faculty_id, enrollment_year from registration where enrollment_year <2020;
SELECT * FROM registration where student_id between 10 and 35 and status like 'active' order by faculty_id desc;
SELECT * FROM registration where status like 'with%' order by enrollment_year asc limit 6;
SELECT * FROM registration where student_id = 10 and enrollment_year = 2024;

-- table 11 -- student_goals
SELECT * FROM student_goals where student_id = 10;
SELECT * FROM student_goals where goal_description like 'A%' order by student_id asc;
SELECT * FROM student_goals where goal_description like '%9%' order by goal_description desc limit 9;
SELECT * FROM student_goals where id between 5 and 25 and status = 'Finalized';
SELECT * FROM student_goals where goal_description like '%9%' and id between 10 and 40;
SELECT id, goal_description from student_goals where student_id >= 30 or id = 2;
SELECT * FROM student_goals where status = 'Finalized' and id < 41;
SELECT * FROM student_goals where goal_description like 'M%'order by student_id asc;

-- table 12 -- feedback
SELECT * FROM feedback where courses_id = 9 order by rating asc;
SELECT * FROM feedback where student_id < 5 order by rating desc;
SELECT rating, feedback_date from feedback where id between 10 and 20 order by rating asc;
SELECT * FROM feedback where feedback_date < '01.01.2012' or id = 1;
SELECT * from feedback where feedback_date > '31.12.2019' and rating > 7;
SELECT * FROM feedback where teacher_id = 21;
SELECT rating, feedback_date, student_id from feedback where id < 20 limit 10;
SELECT * FROM feedback where id = 20 or id < 5;
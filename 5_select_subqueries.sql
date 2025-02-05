-- SQL syntax for select with subquery

-- table 1 - university
SELECT name, location, accreditation_status from university where name = (select name from university where name like '%T%' and id = 1) and accreditation_status = 'Accredited';
SELECT * FROM university where location = (select location from university order by established_year asc limit 1);
SELECT * FROM university where name = (select name from university where name like '%Buc%' and established_year between 1950 and 1970);

-- table 2 - faculty
SELECT * FROM faculty where name = (select location from faculty where location like '%Oradea%');
SELECT name, university_id, contact_number from faculty where name = (select name from faculty where name like '%Geog%');
SELECT * FROM faculty where established_year = (select established_year from faculty order by established_year desc limit 1);

-- table 3 - facilities
SELECT * FROM facilities where operating_hours = (select operating_hours from facilities where operating_hours = '24/7' limit 1);
SELECT * FROM facilities where name = (select name from facilities where name = 'Library Annex');
SELECT * FROM facilities where operating_hours = (select operating_hours from facilities where name like '%Lab%' limit 1) and name like '%Lab%';

-- table 4 -- department
SELECT name, faculty_id from department where name = (select name from department where name like '%Geo%');
SELECT * FROM department where head_of_department = (select head_of_department from department where faculty_id = 3);
SELECT * FROM department where name = (select name from department where head_of_department like '%Manole');

-- table 5 -- specialization
SELECT * FROM specialization where duration_years = (select duration_years from specialization where name like '%Software%');
SELECT * FROM specialization where department_id = (select department_id from specialization where name = 'Data Science');
SELECT * FROM specialization where duration_years > (select avg(duration_years) from specialization);

-- table 6 -- teacher
SELECT name, email, specialization from teacher where specialization = (select specialization from teacher where specialization = 'Data Science' and title = 'Professor');
SELECT * FROM teacher where hire_date = (select hire_date from teacher where hire_date > '01.01.2022');
SELECT name, title, email from teacher where name = (select name from teacher where name like '%Popa%' and id = 7);

-- table 7 -- courses
SELECT name, teacher_id from courses where credits = (select credits from courses where credits = 6 limit 1) and name like '%Medical%';
SELECT * FROM courses where credits = (select credits from courses where credits = 3 limit 1) and total_hours = 35;
SELECT semester, name, teacher_id, total_hours from courses where name = (select name from courses where name like '%Anat%') and total_hours between 35 and 45;

-- table 8 -- student
SELECT * FROM student where phone = (select phone from student where id = 25);
SELECT name, phone, origin_env from student where email = (select email from student where email like '%heci%');
SELECT * FROM student where phone = (select phone from student where phone = 0771456783);

-- table 9 -- grades
SELECT * FROM grades where grade < (select avg(grade) from grades);
SELECT * FROM grades where grade = (select max(grade) from grades);
SELECT * FROM grades where grade_date = (select min(grade_date) from grades);

-- table 10 -- registration
SELECT * FROM registration where enrollment_year = (select max(enrollment_year) from registration);
SELECT * FROM registration where status = (select status from registration where status like '%with%' limit 1) and id between 40 and 45;
SELECT * FROM registration where enrollment_year = (select min(enrollment_year) from registration);

-- table 11 -- student_goals
SELECT * FROM student_goals where student_id = (select student_id from student_goals where id = 6) or status = 'Completed';
SELECT * FROM student_goals where student_id = (select id from student_goals order by student_id desc limit 1); 
SELECT * FROM student_goals where goal_description = (select goal_description from student_goals where status = 'Finalized' limit 1);

-- table 12 -- feedback
SELECT * FROM feedback where rating = (select rating from feedback where rating >= 9 limit 1);
SELECT * FROM feedback where rating > (select avg(rating) from feedback);
SELECT * FROM feedback where rating = (select min(rating) from feedback);
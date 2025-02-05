-- SQL syntax for delete

-- table 12 -- feedback
DELETE FROM feedback where rating = '8' and id = 50;
DELETE FROM feedback where courses_id = 20;
DELETE FROM feedback where feedback_date = '2022-02-06';
DELETE FROM feedback where student_id = 15;
DELETE FROM feedback where feedback_date = '2014-06-16' and rating = 9;
DELETE FROM feedback where feedback_date = '2004-01-24' and courses_id = 37;
DELETE FROM feedback where id = 26;

-- table 11 -- student_goals
DELETE FROM student_goals where id = 50;
DELETE FROM student_goals where goal_description like 'Pass%' and student_id = 37;
DELETE FROM student_goals where student_id = 38;
DELETE FROM student_goals where id = 15;
DELETE FROM student_goals where goal_description like 'Achiev%' and id = 32;
DELETE FROM student_goals where student_id = 26;

-- table 10 -- registration
DELETE FROM registration where student_id = 37;
DELETE FROM registration where id = 45;
DELETE FROM registration where faculty_id = 50;
DELETE FROM registration where student_id = 38;
DELETE FROM registration where id = 26;
DELETE FROM registration where student_id = 35;
DELETE FROM registration where student_id = 15;
DELETE FROM registration where student_id = 32;

-- table 9 -- grades
DELETE FROM grades where student_id = 50 and courses_id = 50;
DELETE FROM grades where id = 20;
DELETE FROM grades where courses_id = 38;
DELETE FROM grades where grade_date = '2014-01-22' and student_id = 15;
DELETE FROM grades where courses_id = 32 and grade_date = '2014-06-15';
DELETE FROM grades where student_id = 37;
DELETE FROM grades where id = 26;

-- table 8 -- student
DELETE FROM student where id = 50;
DELETE FROM student where name like 'Ene%';
DELETE FROM student where phone = '780011223';
DELETE FROM student where email = 'ardelean.bianca@gmail.com' and origin_env = 'urban';
DELETE FROM student where id = 32;
DELETE FROM student where name like 'Moldovan%';

-- table 7 - courses
DELETE FROM courses where teacher_id = 50;
DELETE FROM courses where name like 'Structural%' and credits = 5;
DELETE FROM courses where semester = 2 and credits = 3 and teacher_id = 38;
DELETE FROM courses where name = 'Comparative Literary Studies';
DELETE FROM courses where teacher_id = 32;
DELETE FROM courses where name like '%Anth%' and total_hours = 25;

-- table 6 - specialization
DELETE FROM specialization where department_id = 37;
DELETE FROM specialization where name like '%Urban%' and department_id = 45;
DELETE FROM specialization where name like '%Policy' and duration_years = 5;
DELETE FROM specialization where id = 38;
DELETE FROM specialization where name = 'Virtual Reality' and id = 26;
DELETE FROM specialization where department_id = 35;

-- table 5 - teacher
DELETE FROM teacher where name like 'Gheorghiu%';
DELETE FROM teacher where specialization = 'Structural Engineering';
DELETE FROM teacher where specialization like 'Dan%';
DELETE FROM teacher where id = 15;
DELETE FROM teacher where title = 'Lecturer' and specialization like 'Spor%';
DELETE FROM teacher where name like '%Dobre' and id =37;

-- table 4 - department
DELETE FROM department where name like '%Anthro%';
DELETE FROM department where name = 'Department of Urban Planning' and id = 45;
DELETE FROM department where faculty_id = 50;
DELETE FROM department where head_of_department = 'Maria Dobre';
DELETE FROM department where id = 26;
DELETE FROM department where head_of_department like 'Anca%';

-- table 3 - facilities
DELETE FROM facilities where id = 42;
DELETE FROM facilities where name like '%x';
DELETE FROM facilities where name = 'Social Services';
DELETE FROM facilities where name = 'University Kindergarten';
DELETE FROM facilities where name like '%Green%';
DELETE FROM facilities where name = 'Film Screening Room';

-- table 2 - faculty
DELETE FROM faculty where university_id = 37;
DELETE FROM faculty where dean_name like '%Cristea';
DELETE FROM faculty where established_year = 2019 and university_id = 50;
DELETE FROM faculty where dean_name = 'Ioan Enescu';
DELETE FROM faculty where name like '%Virtual T%';
DELETE FROM faculty where university_id = 35;

-- table 1 - university
DELETE FROM university where name = 'Horizont University';
DELETE FROM university where id = 45;
DELETE FROM university where name like '%EcoL%';
DELETE FROM university where location = 'Calea Dacia 33, Arad' and established_year = 2021;
DELETE FROM university where website = 'https://uvb.ro/';
DELETE FROM university where name like '%Metro%';
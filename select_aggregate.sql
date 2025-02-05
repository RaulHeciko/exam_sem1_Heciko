-- SQL syntax for select with aggregate

-- table 1 - university
SELECT AVG(established_year) as average_year from university;
SELECT MIN(established_year) as oldest_university from university; 
SELECT MAX(established_year) as newest_university from university; 
SELECT COUNT(name) as total_university from university;

-- table 2 - faculty
SELECT AVG(established_year) as average_year from faculty;
SELECT MAX(established_year) as newest_faculty from faculty;
SELECT MIN(established_year) as oldest_faculty from faculty;
SELECT COUNT(name) as total_faculties from faculty;

-- table 3 - facilities
SELECT SUM(id) as suma from facilities;
SELECT MAX(id) as maxim from facilities;
SELECT AVG(id) as average from facilities;
SELECT COUNT(id) as total_facilities from facilities;

-- table 4 -- department
SELECT SUM(faculty_id) as suma from department;
SELECT MIN(id) as minim from department;
SELECT AVG(id) as average from department;

-- table 5 -- specialization
SELECT COUNT(id) as total_specialization from specialization;
SELECT SUM(duration_years) as suma from specialization;
SELECT AVG(duration_years) as average_years from specialization;
SELECT MAX(duration_years) as maximum from specialization;

-- table 6 -- teacher
SELECT COUNT(id) as total_teachers from teacher;
SELECT MIN(hire_date) as longest_teacher from teacher;
SELECT MAX(hire_date) as newest_teacher from teacher;
SELECT AVG(id) from teacher;

-- table 7 -- courses
SELECT COUNT(teacher_id) as all_teachers from courses;
SELECT SUM(id) as suma from courses;
SELECT AVG(total_hours) as average from courses;
SELECT MIN(total_hours) as minim_course from courses;

-- table 8 -- student
SELECT MIN(id) as first_student from student;
SELECT COUNT(*) as total_students from student;
SELECT MAX(id) as latest_student from student;
SELECT SUM(id) from student;

-- table 9 -- grades
SELECT SUM(grade) as suma from grades;
SELECT AVG(grade) as average from grades;
SELECT MIN(grade) as bad_note from grades;
SELECT MAX(grade) as good_note from grades;

-- table 10 -- registration
SELECT AVG(enrollment_year) as average from registration;
SELECT MIN(enrollment_year) as oldest_registration from registration;
SELECT COUNT(*) as graduated_students from registration where status like 'graduated';
SELECT COUNT(*) as active_students from registration where status like 'active';

-- table 11 -- student_goals
SELECT COUNT(*) as all_goals from student_goals;
SELECT AVG(student_id) as average from student_goals;
SELECT MIN(id) as minim from student_goals;
SELECT MAX(id) as maxim from student_goals;

-- table 12 -- feedback
SELECT AVG(rating) as average_grade from feedback;
SELECT MAX(rating) as good_grade from feedback;
SELECT MIN(rating) as bad_grade from feedback;
SELECT COUNT(*) as all_ratings from feedback where feedback_date > '2019-12-31';
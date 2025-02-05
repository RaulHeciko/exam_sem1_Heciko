-- SQL syntax for update

-- table 1 - university
UPDATE university set name = 'Metropolis University of Brasov' where id = 35;
UPDATE university set accreditation_status = 'Accredited', website = 'https://uni-nw.ro/' where location = 'Calea Noi Lumi 22, Arad';
UPDATE university set name = 'Academy of Management Brasov', website = 'https://amb.ro/' where name = 'Academy of Management';
UPDATE university set name = 'EcoLogic University of Timisoara', website = 'https://eco-uni.ro/' where id = 50;
UPDATE university set location = 'Strada Libertati 19, Bucuresti', established_year = 1850 where name = 'Politehnica University of Bucharest';
UPDATE university set name = 'New World University Arad', location = 'Calea Intelepciunii 22, Arad' where name = 'New World University';
UPDATE university set name = 'Tibiscus University of Timisoara' where id = 6;
UPDATE university set website = 'https://uni-arts-bv.ro/' where established_year between 1965 and 1980;
UPDATE university set location = 'Bulevardul George Cosbuc 69, Bucuresti', established_year = '1920', website = 'https://amt-f1.ro/' where name = 'Ferdinand I Military Technical Academy';
UPDATE university set name = 'Global Innovation University of Bucharest', location = 'Strada Independentei 121, Bucuresti', established_year = 2010, accreditation_status = 'Accredited', website = 'https://uni-inovation.ro/' where id =41;

-- table 2 - faculty
UPDATE faculty set location = 'Strada Viitorului 13, Timisoara' where established_year = 1991;
UPDATE faculty set name = 'Faculty of Urban Design and Art' where id = 45;
UPDATE faculty set dean_name = 'Popan Marius', established_year = 2000, location = 'Str. Primaverii 6, Timisoara' where name = 'Faculty of Computers and Applied Informatics';
UPDATE faculty set name = 'Faculty of Physical Education and Sport', location = 'Calea Banatului 12, Arad' where id = 32;
UPDATE faculty set name = 'Faculty of Music and Arts', dean_name = 'Paula Nedelcu' where contact_number = 0216098000;
UPDATE faculty set location = ' Strada J. H. Pestalozzi 16, Timisoara' where name = 'Faculty of Chemistry, Biology, and Geography';
UPDATE faculty set contact_number = 0294101931, dean_name = 'Popa Vlad' where established_year = 1920;
UPDATE faculty set established_year = 1855 where website = 'https://history.uaic.ro/';
UPDATE faculty set name = 'Faculty of Letters and Foreign Languages', location = 'Strada Universitatii 31, Oradea', dean_name = 'Anca Sorescu', established_year = '1955', contact_number = 0259676591 where website = 'https://literature.uoradea.ro/';
UPDATE faculty set website = 'https://uni-of-music-pedagogy.ro/' where contact_number = 0257654110;

-- table 3 - facilities
UPDATE facilities set name ='Swimming Center' where name ='Swimming';
UPDATE facilities set name ='Student Canteen' where name ='Canteen';
UPDATE facilities set name ='Smoking Area' where name ='Terrace';
UPDATE facilities set name ='Musical Instruments Center' where name ='Music Studio';
UPDATE facilities set name ='Wi-Fi and Internet' where name ='Post Office';
UPDATE facilities set operating_hours ='09:00-19:00' where id = 16;
UPDATE facilities set operating_hours ='09:00-21:00' where id = 1;
UPDATE facilities set operating_hours ='09:00-19:00' where id = 5;
UPDATE facilities set operating_hours ='08:00-21:00' where id = 43;
UPDATE facilities set operating_hours ='08:00-21:00' where id = 38;

-- table 4 - department
UPDATE department set head_of_department = 'Vlad Pavel' where id = 9;
UPDATE department set name = 'Department of Virtual Environments' where head_of_department = 'Cătălin Dobre';
UPDATE department set head_of_department = 'Mihai Petrisor' where name = 'Department of Geography';
UPDATE department set name = 'Departament of Economic Bussines and Marketing' where id = 48;
UPDATE department set name = 'Department of Power and Energy Engineering' where id = 4;
UPDATE department set head_of_Department = 'Florina Popa' where name = 'Department of Sports Psychology';
UPDATE department set name = 'Department of Biodiversity and Ecology' where id = 31;
UPDATE department set name = 'Department of Economic and Financial Analysis', head_of_department = 'Marin Moise' where name = 'Department of Financial Analysis';
UPDATE department set head_of_department = 'Ana Popescu', name = 'Department of Contemporary Philosophy' where head_of_department = 'Mihai Popa';
UPDATE department set name = 'Department of Applied Mathematics and Informatics', head_of_department = 'Iliescu Marius' where id = 10;

-- table 5 - teacher
UPDATE teacher set name = 'Andreea Campeanu', email = 'andreea.campeanu@yahoo.com' where id = 46;
UPDATE teacher set email = 'ioana.manole@yahoo.com' where name = 'Ioana Manole';
UPDATE teacher set name = 'Paul Ionescu', email ='paul.ionescu@yahoo.com.com', hire_date = '2011-10-01' where specialization like '%Geogra%' or id = 1; 
UPDATE teacher set hire_Date = '2007-09-12', specialization = 'Textile and Fashion Design' where email = 'anca.olteanu@gmail.com';
UPDATE teacher set title = 'Professor' where id between 1 and 4;
UPDATE teacher set email = 'gheorghiu.alexandra@yahoo.com' where name like '%Policy%' or name = 'Gheorghiu Ruxandra';
UPDATE teacher set name = 'Mircea Preda', specialization = 'Sports Nutrition', email = 'radu.vasilescu@yahoo.com' where hire_date = '2012-06-27';
UPDATE teacher set email = 'gabriel.tudor@yahoo.com', hire_date = '2015-09-19' where name like '%Microeco%' or id = 11;
UPDATE teacher set name = 'Paul Dobrescu', email = 'paul.dobrescu@yahoo.com' where name = 'Mihai Vladescu';
UPDATE teacher set title = 'Lecturer', name = 'Raul Petrascu', specialization = 'Management Information Systems', hire_date = '2009-10-01', email = 'petrascu.raul@yahoo.com' where name = 'Catalin Dobre';

-- table 6 - specialization
UPDATE specialization set name = 'Environmental Management' where id = 31;
UPDATE specialization set name = 'Astronomical Data Analysis' where id =43;
UPDATE specialization set duration_years = 4 where id < 4;
UPDATE specialization set duration_years = 3 where name = 'Geography';
UPDATE specialization set name = 'Machine Learning for Business' where name = 'Business Intelligence';
UPDATE specialization set duration_years = 5 where id between 48 and 50;
UPDATE specialization set name = 'Energy Management' where id = 4;
UPDATE specialization set duration_years = 4, name = 'Movement Analysis' where name like '%Dance%';
UPDATE specialization set name = 'Educational Sociology', duration_years = 4 where name like '%Policies%' or id = 33;
UPDATE specialization set duration_years = 3 where name like '%AI%' and name = 'AI and Robotics' or id = 39;

-- table 7 - courses
UPDATE courses set total_hours = 35 where name = 'Crop Science Fundamentals';
UPDATE courses set name = 'Introduction to Astronomy', semester = 1 where id = 43;
UPDATE courses set credits = 4 where name like '%Military%';
UPDATE courses set credits = 3, total_hours = 35 where name = 'Music Theory Basics';
UPDATE courses set name = 'Introduction to Applied Calculus' where name = 'Applied Calculus';
UPDATE courses set total_hours = 25 where total_hours between 0 and 25;
UPDATE courses set credits = 5, semester = 1 where name = 'Business Intelligence Applications';
UPDATE courses set name = 'Renewable Energy Technologies', total_hours = 40, credits = 4 where id = 4;
UPDATE courses set name = 'Advanced Industrial Design Techniques', semester = 2, total_hours = 35, credits = 6 where name like 'Industrial%';
UPDATE courses set semester = 1, total_hours = 40, credits = 5, name = 'Introduction to Anatomy' where id = 5;

-- table 8 - student
UPDATE student set name = 'Mircea Roland', email = 'mircea.roland@gmail.com' where id = 5;
UPDATE student set origin_env = 'urban' where name = 'Popa Alex';
UPDATE student set name = 'Ardelean Bianca', email = 'ardelean.bianca@gmail.com' where id = 15;
UPDATE student set origin_env = 'rural' where phone = 0782109873;
UPDATE student set phone = 0750152193 where id = 9;
UPDATE student set name = 'Garbescu Marian', email = 'garbescu.marian@gmail.com' where name like 'Apostol%';
UPDATE student set origin_env = 'rural' where id > 45;
UPDATE student set name = 'Vlada Lorena', email = 'vlada.lorena@gmail.com', phone = 0749386282 where name = 'Antonescu Bianca';
UPDATE student set phone = 0731279876, email = 'ursu.andrei@gmail.com', name = 'Ursu Andrei' where name like 'avram%' or id = 33;
UPDATE student set name = 'Mirescu Marius', email = 'mirescu.marius@gmail.com', phone = 0764527897, origin_env = 'urban' where id = 14;

-- table 9 - grades
UPDATE grades set grade = 8 where id = 10;
UPDATE grades set grade_date = '2022-07-10', grade = 9.5 WHERE id = 3;
UPDATE grades set grade = 9, grade_date = '2024-01-15' where student_id = 6;
UPDATE grades set grade = 10, grade_date = '2020-06-19', courses_id = 8 where student_id between 5 and 7;
UPDATE grades set grade_date = '2011-02-12' where grade = 10 and id = 26;
UPDATE grades set grade_date = '2017-06-28' where courses_id = 27;
UPDATE grades set grade = 8 where id = 8;
UPDATE grades set grade_date = '2003-01-23', grade = 8.5, courses_id = 27 where id = 37;
UPDATE grades set grade_date = '2014-01-22', grade = 9, courses_id = 15 where id = 15;
UPDATE grades set grade_date = '2021-07-10', grade = 9 where student_id = 6 or id = 6;

-- table 10 - registration
UPDATE registration set status = 'withdrawn' where id = 5;
UPDATE registration set status = 'withdrawn' where enrollment_year = 2021;
UPDATE registration set status = 'graduated' where enrollment_year = 2019;
UPDATE registration set status = 'withdrawn' where student_id = 31;
UPDATE registration set status = 'active' where enrollment_year = 2023 and status = 'active';
UPDATE registration set enrollment_year = 2009, status = 'withdrawn' where id = 9;
UPDATE registration set status = 'active' where enrollment_year between 2018 and 2020;
UPDATE registration set status = 'withdrawn' where enrollment_year <2003;
UPDATE registration set enrollment_year = 1999, status = 'graduated' where student_id = 36;
UPDATE registration set enrollment_year = 2013, status = 'withdrawn' where faculty_id = 46;

-- table 11 - student_goals
UPDATE student_goals set goal_description = 'Achieve an average grade above 9.5' where id = 1;
UPDATE student_goals set goal_description = 'Pass exams with the best grades of my class' where id = 28;
UPDATE student_goals set goal_description = 'Finish all exams with excellent grades' where goal_description like '%Finish all exams%';
UPDATE student_goals set goal_description = 'Consistently achieve excellent results' where id between 3 and 5;
UPDATE student_goals set goal_description = 'Complete all courses with good grades' where id = 27;
UPDATE student_goals set goal_description = 'Maintain a balanced academic performance' where id between 47 and 49 and goal_description like '%exams%';
UPDATE student_goals set goal_description = 'Focus on academic excellence' where id = 10;  
UPDATE student_goals set goal_description = 'Achieve an average grade above 7.8' where id = 36; 
UPDATE student_goals set goal_description = 'Achieve an average grade above 9.5' where id = 3;
UPDATE student_goals set goal_description = 'Maintain a strong academic performance' where id = 4;

-- table 12 - feedback
UPDATE feedback set rating = 10 where teacher_id = 10;
UPDATE feedback set rating = 6 where courses_id = 17;
UPDATE feedback set rating = 10 where student_id = 1;
UPDATE feedback set feedback_date = '2009-06-03' where id = 29;
UPDATE feedback set rating = 10 where student_id = 38;
UPDATE feedback set rating = 9 where feedback_date between '2022-01-01' and '2022-12-31';
UPDATE feedback set feedback_date = '2023-01-13', rating = 9.5 where courses_id =6;
UPDATE feedback set rating = 7 where rating between 5 and 7;
UPDATE feedback set rating = 8 where id > 46;
UPDATE feedback set rating = 7 where feedback_date between '2002-01-01' and '2008-12-31';
use employee_management_System;


CREATE TABLE Employee(
    Emp_id int not null,
    Name char(20) not null,
    Dob Date not null,
    Gender char(5) not null,
    Hire_Date Date not null,
    Salary double not null,
    Contact_Info varchar(100),
    primary key(Emp_id)
);

INSERT INTO Employee
VALUES
    (21, 'Ayase Mahiru', '1997-03-27', 'F', '2026-06-23', 950000, 'w-698 D sector 1st street Annanagar west Ext'),
    (32, 'Aisha', '1995-01-03', 'F', '2026-07-14', 870000, 'w-698 D sector 1st street Annanagar west Ext'),
    (43, 'Sumeragi Satsuki', '1997-02-11', 'F', '2026-03-29', 800000, 'w-698 D sector 1st street Annanagar west Ext'),
    (62, 'Christina Beltrum', '1996-01-16', 'F', '2026-11-13', 500000, 'w-698 D sector 1st street Annanagar west Ext'),
    (95, 'Celia Claire', '1994-08-12', 'F', '2026-02-28', 990000, 'w-698 D sector 1st street Annanagar west Ext'),
    (103, 'Liselotte Cretia', '1993-03-09', 'F', '2026-09-26', 850000, 'w-698 D sector 1st street Annanagar west Ext'),
    (76, 'Sendo Aki', '1995-12-30', 'F', '2026-10-07', 300000, 'w-698 D sector 1st street Annanagar west Ext'),
    (12, 'Lilianna Centostella', '1992-12-04', 'F', '2026-04-17', 150000, 'w-698 D sector 1st street Annanagar west Ext'),
    (73,'VijayPranav','2005-11-17','M','2026-03-06',500000000,'w-698 D sector 1st street Annanagar west Ext'),
    (100, 'Floaa Beltrum', '1997-08-01', 'F', '2026-07-15', 100000, 'w-698 D sector 1st street Annanagar west Ext');

    CREATE TABLE skill (
    Skill_id INT PRIMARY KEY,
    Name VARCHAR(30),
    Description VARCHAR(200)
);


INSERT INTO skill (Skill_id, Name, Description)
VALUES
    (0, 'IT Support', 'Ability to troubleshoot and resolve technical issues, ensuring smooth operation of IT systems.'),
    (111, 'UI/UX Design', 'Skills in creating user-friendly interfaces and enhancing user experience for digital products.'),
    (123, 'Programming', 'Proficiency in coding languages like Python, Java, or C++ to develop and maintain software applications.'),
    (258, 'AI & Machine Learning', 'Knowledge of developing algorithms and models that enable machines to learn and make decisions.'),
    (321, 'Project Management', 'Capability to lead IT projects, ensuring they are completed on time and within budget.'),
    (456, 'Cybersecurity', 'Knowledge of protecting systems, networks, and data from digital threats and breaches.'),
    (654, 'Networking', 'Skills in configuring and managing network infrastructure to ensure seamless connectivity.'),
    (789, 'Cloud Computing', 'Expertise in managing and deploying applications on cloud platforms like AWS, Azure, or Google Cloud.'),
    (973, 'DevOps', 'Understanding of practices that combine software development and IT operations to shorten development cycles.'),
    (987, 'Data Analysis', 'Ability to interpret complex data sets to inform business decisions and strategies.');


create table manager(
manager_id int not null,
name char(20) not null,
dob date not null,
gender char(10) not null,
hire_date date not null,
salary double not null,
contact_info varchar(100),
primary key(manager_id),
foreign key(manager_id) references employee(Emp_id));


insert into manager
values(73,'VijayPranav','2005-11-17','M','2026-03-06',500000000,'w-698 D sector 1st street Annanagar west Ext');

CREATE TABLE positions (
    position_id INT,
    title VARCHAR(100),
    salarygrade CHAR(10),
    PRIMARY KEY (position_id)
);

INSERT INTO positions (position_id, title, salarygrade) VALUES
(10, 'System Administrator', '101-551'),
(12, 'Cybersecurity Specialist', '101-290L'),
(14, 'Data Analyst', '101-651'),
(15, 'Data Scientist', '101-751'),
(16, 'Cloud Architect', '101-851'),
(17, 'Product Manager', '101-951'),
(18, 'CTO (Chief Technology Officer)', '101-215L'),
(19, 'CIO (Chief Information Officer)', '101-225L'),
(20, 'AI/ML Engineer', '101-315L'),
(22, 'Blockchain Developer', '101-415L'),
(24, 'UX/UI Designer', '101-515L'),
(34, 'Software Engineer Trainee', '101-151'),
(45, 'Junior Developer', '101-251'),
(67, 'IT Support Specialist', '101-351'),
(89, 'DevOps Engineer', '101-451');


CREATE TABLE department (
    Dept_id INT,
    Name VARCHAR(50),
    Location CHAR(20) NOT NULL,
    PRIMARY KEY (Dept_id)
);


INSERT INTO department (Dept_id, Name, Location) VALUES
(205, 'IT Support and Infrastructure', 'VP Technologies'),
(299, 'Research and Development (R&D)', 'VP Technologies'),
(301, 'Data Analytics', 'VP Technologies'),
(343, 'Development and Engineering', 'VP Technologies'),
(345, 'Cybersecurity', 'VP Technologies'),
(567, 'Sales and Marketing', 'VP Technologies'),
(582, 'Training and Knowledge Management', 'VP Technologies'),
(777, 'Project Management', 'VP Technologies'),
(841, 'Business Analysis', 'VP Technologies'),
(892, 'Finance and Accounting', 'VP Technologies');


create table payroll(
payroll_id int ,
payment_date Date not null,
salary_amount double not null,
payment_method varchar(20) ,
primary key(payroll_id));

INSERT INTO payroll (payroll_id, payment_date, salary_amount, payment_method)
VALUES
(192, '2092-02-19', 23000.34, 'Deposit'),
(1234, '2026-09-23', 45000, 'Direct'),
(3456, '2042-04-15', 45000, 'Direct'),
(3847, '2062-01-21', 89000, NULL),
(4321, '2082-06-27', 45000, 'Checkque'),
(5432, '2062-02-18', 67500, 'Deposit'),
(5678, '1999-05-12', 45000, 'Deposit'),
(7890, '2522-03-25', 45500, 'Checkque'),
(8765, '2072-07-06', 678000.34, NULL),
(9012, '2030-09-18', 45040, 'Checkque');

    
    
create table attendance(

employee_id int,
Date date ,
status varchar(20) not null,
time_clocked_in time not null,
time_clocked_out time not null,
primary key(employee_id),
foreign key(employee_id) references employee(Emp_id)
);


INSERT INTO attendance (employee_id, Date, status, time_clocked_in, time_clocked_out)
VALUES
(12, '1997-05-12', 'Present', '09:20:00', '09:30:00'),
(21, '1992-08-22', 'Absent', '04:30:00', '09:30:00'),
(32, '1996-11-13', 'Sick Leave', '03:30:00', '09:30:00'),
(43, '1994-04-02', 'Present', '02:30:00', '09:30:00'),
(62, '1995-07-03', 'Absent', '11:30:00', '09:30:00'),
(73, '1998-02-12', 'Sick Leave', '01:30:00', '09:30:00'),
(76, '2022-03-14', 'Present', '03:30:00', '09:30:00'),
(95, '2015-04-06', 'Absent', '08:30:00', '09:30:00'),
(100, '2016-05-23', 'Sick Leave', '06:30:00', '09:30:00'),
(103, '2024-09-17', 'Present', '07:30:00', '09:30:00');


create table projects(
project_id int,
Name varchar(100) not null,
start_date date,
end_date date,
budget double not null,
primary key(project_id),
unique(Name));


INSERT INTO projects (project_id, Name, start_date, end_date, budget)
VALUES
(1, 'Renewable Energy and Sustainability', '1997-09-23', '2026-05-08', 567890),
(2, 'Artificial Intelligence and Data Centers', '1997-09-23', '2026-05-08', 567890),
(3, 'Cloud Computing and AI Infrastructure', '1997-06-23', '2026-05-08', 789890),
(4, 'Emerging Startups and Innovations', '1992-02-23', '2026-05-08', 234890),
(5, 'Secure Satellite Communications', '1994-09-23', '2026-05-08', 678890),
(6, 'AI Infrastructure Development', '1995-04-23', '2026-05-08', 100890),
(7, 'Natural Gas-Powered Data Centers', '1996-02-23', '2026-05-08', 450890),
(8, 'AI Integration in Gaming', '1997-01-23', '2026-05-08', 822890),
(9, 'AI-Driven Cybersecurity Initiatives', '1998-09-23', '2026-05-08', 999890),
(11, 'AI-Powered Chatbot Development', '1999-04-23', '2026-05-08', 923790),
(12, 'Generative AI Integration in Business Operations', '2003-08-23', '2026-05-08', 567890),
(13, 'Creating the Ideal VijayPranav World', '2009-10-23', '2026-05-08', 567890);
  





create table training_Program(
training_id int,
name varchar(35) not null,
duration float not null,
content varchar(200),
primary key(training_id),
unique(name));

alter table training_program  modify name varchar(100);

INSERT INTO training_program
VALUES 
(5678, 'Cloud Computing & Infrastructure', 8.9, 'Topics include AWS, Azure, Google Cloud Platform, and Kubernetes.'),
(9101, 'Cybersecurity Fundamentals', 7.2, 'Focused on network security, ethical hacking, incident response, and compliance with frameworks like ISO 27001 or GDPR.'),
(1121, 'Data Science and Machine Learning', 12.7, 'Covers Python, R, TensorFlow, data visualization tools, and AI model deployment.'),
(3141, 'DevOps Practices', 5.6, 'Tools like Docker, Jenkins, Git, CI/CD pipelines, and automating workflows.'),
(5161, 'Agile and Scrum Methodologies', 4.9, 'Training for Agile frameworks, Scrum Master certification, and project management.'),
(7181, 'UI/UX Design & Development', 8.9, 'Focus on design tools like Figma, Adobe XD, and front-end frameworks like React or Angular.'),
(9202, 'Blockchain Technology', 15.8, 'Smart contracts, cryptocurrency, and blockchain use cases in business.'),
(1223, 'ITIL (Information Technology Infrastructure Library)', 27.8, 'Training to improve IT service management and delivery.');


create table work_assignment(
worker_id int,
currentProject_id int,
hoursWorked double,
role_on_project varchar(50),
start_date date,
end_date date,
budget double,
primary key(worker_id,currentProject_id),
foreign key(worker_id) references employee(Emp_id),
foreign key(currentProject_id) references projects(project_id));


INSERT INTO work_assignment
VALUES
(21, 1, 456.67, 'Team Leader', '1999-04-22', '1999-04-22', 456789),
(32, 13, 5656.72, 'Team Leader', '1949-04-22', '1999-04-22', 456734),
(43, 6, 416.67, 'Team Leader', '1959-04-22', '1999-04-22', 889933),
(62, 11, 356.67, 'Team Leader', '1969-04-22', '1999-04-22', 556677),
(73, 2, 956.67, 'God of the Company', '1979-04-22', '1999-04-22', 332244),
(76, 5, 856.67, 'Team Leader', '1939-04-22', '1999-04-22', 987654),
(95, 4, 256.67, 'Team Leader', '1958-04-22', '1999-04-22', 789012),
(100, 9, 156.67, 'Team Leader', '1929-04-22', '1999-04-22', 123456),
(103, 3, 656.67, 'Team Leader', '1979-04-22', '1999-04-22', 567789);


CREATE TABLE Employee_Skill (
    Emp_id INT,
    Skill_id INT,
	E_Name varchar(50),
    Skill_Name varchar(50),
    PRIMARY KEY (Emp_id, Skill_id),
    FOREIGN KEY (Emp_id) REFERENCES Employee(Emp_id),
    FOREIGN KEY (Skill_id) REFERENCES Skill(Skill_id)
);

insert into employee_skill values(12,123,'Lilianna Centostella','UI/UX Design'),
(21,111,'Ayase Mahiru',' Programming '),
(32,123,' Aisha',' UI/UX Design'),
(43,258,' Sumeragi Satsuki',' AI & Machine Learning'),
(62,321,' Christina Beltrum ','  Project Management   '),
(73,456,'VijayPranav',' Cybersecurity  '),
(76,111,'Sendo Aki ','Programming'),
(95,123,' Celia Claire  ','UI/UX Design'),
(100,987,'Flora Beltrum ',' Data Analysis'),
(103,789,' Liselotte Cretia ','UI/UX Design'),
(73,111,'VijayPranav','Programming');


CREATE TABLE Employee_Position (
    Emp_id INT,
    Position_id INT,
    E_Name varchar(50),
    Position_Name varchar(50),
    PRIMARY KEY (Emp_id, Position_id),
    FOREIGN KEY (Emp_id) REFERENCES Employee(Emp_id),
    FOREIGN KEY (position_id) REFERENCES positions(position_id)
);

insert into employee_Position values(12,10,'Lilianna Centostella',' System Administrator'),
(21,12,'Ayase Mahiru','Cybersecurity Specialist'),
(32,14,' Aisha',' Data Analyst '),
(43,15,' Sumeragi Satsuki','Data Scientist '),
(62,16,' Christina Beltrum ','Cloud Architect'),
(73,17,'VijayPranav',' Product Manager '),
(76,18,'Sendo Aki ',' CTO (Chief Technology Officer)'),
(95,19,' Celia Claire  ','CIO (Chief Information Officer)'),
(100,20,'Flora Beltrum ','AI/ML Engineer  '),
(103,15,' Liselotte Cretia ','Data Scientist '),
(73,14,'VijayPranav',' Data Analyst ');


CREATE TABLE Employee_Departement (
    Emp_id INT,
    Dept_id INT,
    E_Name varchar(50),
    Dept_Name varchar(50),
    PRIMARY KEY (Emp_id, Dept_id),
    FOREIGN KEY (Emp_id) REFERENCES Employee(Emp_id),
    FOREIGN KEY (Dept_id) REFERENCES department(Dept_id)
);



CREATE TABLE Employee_Payroll (
    Emp_id INT,
    payroll_id INT,
    E_Name varchar(50),
    PRIMARY KEY (Emp_id, Dept_id),
    FOREIGN KEY (Emp_id) REFERENCES Employee(Emp_id),
    FOREIGN KEY (Dept_id) REFERENCES department(Dept_id)
);
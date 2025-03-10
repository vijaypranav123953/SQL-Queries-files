 use  labassignment4;
 
  create table Departments(
	Dept_id int not null,
    Dept_Name varchar(30) not null,
	primary key(Dept_id));
    
    
 create table Project (
     project_id int not null,
    project_name varchar(30),
    dept_id int not null,
    primary key(project_id),
    foreign key(dept_id) references Departments(Dept_id));
    
 create table Employee(
     Emp_id int not null,
     Emp_name varchar(30) not null,
     Dept_id int not null,
     primary key(Emp_id),
     foreign key(Dept_id) references Departments(Dept_id));  
     
     
     
insert into departments values(101,'HR'),
  (102,'Finance'),
  (103,'IT');
     
     
insert into Employee values(1,'John',101),
(2,'Mary',102),
(3,'Steve',101),
(4,'Alice',103),
(5,'Bob',102);

insert into Project values(201,'Website',101),
(202,'Mobile App',101),
(203,'Accounting',102),
(204,'Networking',103);
     
     
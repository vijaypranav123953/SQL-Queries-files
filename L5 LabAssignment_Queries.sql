use labassignment5;



create table Details_Dept(
Dept_id int not null,
DeptName varchar(30) not null,
Manager_Id int not null,
primary key (Dept_id));


create table Details (
Emp_id int not null,
Name varchar(30) not null,
Dept_id int not null,
Salary double not null,
Experience varchar(30) ,
primary key(Emp_id),
foreign key (Dept_id) references Details_Dept(Dept_id));

create table Details_Project (
Project_Id int not null,
ProjectName varchar(30) not null,
Dept_id int not null,
Budget double ,
primary key(Project_Id),
foreign key (Dept_id) references  Details_Dept(Dept_id));


create table Details_Works_on (
Emp_id int not null,
Project_Id int not null,
HoursWorked int not null,
primary key(Emp_id,Project_Id),
foreign key (Emp_id) references Details(Emp_id),
foreign key (Project_Id) references Details_Project(Project_Id)
);


INSERT INTO Details_Dept 
VALUES
(1, 'HR', 201),
(2, 'IT', 202),
(3, 'Finance', 203);


INSERT INTO Details 
VALUES
(101, 'Alice', 1, 50000, '5 years'),
(102, 'Bob', 2, 70000, '7 years'),
(103, 'Carol', 1, 65000, '6 years'),
(104, 'David', 3, 72000, '8 years'),
(105, 'Eve', 2, 52000, '4 years');


INSERT INTO Details_Project 
VALUES
(501, 'Alpha', 1, 500000),
(502, 'Beta', 2, 700000),
(503, 'Gamma', 1, 650000),
(504, 'Delta', 3, 720000);

INSERT INTO Details_Works_on
VALUES(101,501,30),
(102,502,25),
(103,503,20),
(104,504,35),
(105,502,28);


select * from details_dept where dept_id in (select distinct dept_id from details where salary > 60000);


SELECT E1.Emp_id,E1.Name 
FROM details E1
INNER JOIN (SELECT  W.Emp_id ,P.dept_id FROM details_works_on W INNER JOIN details_project P ON W.Project_Id=P.Project_Id ) as a 
ON a.Emp_id=E1.Emp_id AND a.Dept_id=E1.Dept_id;


 SELECT D.Dept_id,D.DeptName FROM details_dept D WHERE NOT EXISTS( SELECT * FROM details E where E.Dept_id=D.Dept_id AND E.Salary <= (SELECT AVG(Salary) FROM details));

SELECT E.Name from details E where E.Emp_id IN
(SELECT W.Emp_id FROM details_works_on W WHERE W.Project_Id in 
(SELECT P.Project_Id FROM details_project P INNER JOIN details_dept D ON P.Dept_id=D.Dept_id where D.deptName ="HR")
);

SELECT * FROM details WHERE Emp_id in (SELECT W.Emp_id FROM details_works_on W INNER JOIN details_project P ON W.Project_Id=P.Project_Id where Budget>600000);

SELECT D.DeptName , SUM(Salary) AS TotalSalary FROM details E INNER JOIN details_dept D ON E.dept_id=D.dept_id GROUP BY DeptName ; 

SELECT D.DeptName FROM details E INNER JOIN details_dept D ON E.dept_id=D.dept_id GROUP BY DeptName HAVING SUM(Salary)>100000; 

SELECT P.ProjectName FROM details_project P INNER JOIN details_works_on W ON  P.Project_Id=W.Project_Id GROUP BY ProjectName HAVING SUM(HoursWorked)>(SELECT AVG(HoursWorked) FROM details_works_on); 

SELECT D.DeptName FROM details E INNER JOIN details_dept D ON E.dept_id=D.dept_id GROUP BY DeptName HAVING AVG(Salary)>60000; 

SELECT D.DeptName FROM details E INNER JOIN details_dept D ON E.dept_id=D.dept_id GROUP BY DeptName HAVING AVG(Salary)>(SELECT AVG(Salary) FROM details );

SELECT E.Emp_id,E.Name,P.Project_Id,P.Budget FROM details E INNER JOIN details_project P ON E.Dept_id=P.Dept_id where Salary >=70000;

SELECT E.Emp_id,E.Name,W.Project_Id,W.HoursWorked FROM details E INNER JOIN details_works_on W ON E.Emp_id=W.Emp_id where W.HoursWorked >25 and W.HoursWorked<=30;

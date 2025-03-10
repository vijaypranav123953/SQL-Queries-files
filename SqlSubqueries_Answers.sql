use  labassignment4;

select * from Employeesub where Salary > (select avg(salary) from Employeesub);

SELECT * FROM employeesub
WHERE departement_id = (SELECT departement_id FROM departementdub WHERE department_name = 'IT') ORDER BY salary DESC LIMIT 1;

SELECT * FROM employeesub
WHERE salary = (SELECT MAX(salary) FROM employeesub WHERE departement_id = (SELECT departement_id FROM departementdub WHERE department_name = 'IT'))
AND departement_id = (SELECT departement_id FROM departementdub WHERE department_name = 'IT');

select * from employeesub where salary  > ( select salary from employeesub where employee_id = 2);

select * from employeesub e where salary >( select avg
(salary) from employeesub d where e.departement_id = d.departement_id);

select * from employeesub where departement_id  in  (select departement_id from employeesub group by (departement_id) having count(*)> 2);

select distinct *  from departementdub where departement_id in  (select departement_id from employeesub where Salary > 60000);

select * from employeesub where Salary > (select min(Salary) from employeesub where departement_id in  (select departement_id from departementdub where department_name = 'HR'));

select * from employeesub where Salary > (select Max(Salary) from employeesub where departement_id in (select departement_id from departementdub where department_name = 'Marketing'));
SELECT * FROM employeesub WHERE Salary > ALL (SELECT Salary FROM employeesub WHERE departement_id = (SELECT departement_id FROM departementdub WHERE department_name = 'Marketing'));


select * from employeesub where Salary < (select max(Salary) from employeesub where departement_id in (select departement_id from departementdub where department_name = 'IT'));

select * from departementdub where departement_id in (select departement_id from employeesub where Salary = (select Max(salary) from employeesub));



SELECT * FROM employeesub WHERE salary > (SELECT AVG(salary) FROM employeesub WHERE departement_id IN (SELECT departement_id FROM employeesub GROUP BY departement_id HAVING AVG(salary) > 55000 ));



select * from employeesub where Salary  < (select Avg(Salary) from employeesub where departement_id in ( select departement_id from employeesub group by departement_id having count(*)<3));


select * from employeesub e1  where  e1.departement_id  = (select departement_id from departementdub where department_name = 'HR') and Salary >(select avg(Salary) from employeesub e2 where e2.departement_id =(select departement_id from departementdub where department_name = 'HR'));
select * from employeesub e1  where  e1.departement_id  = (select departement_id from departementdub where department_name = 'HR') and Salary >(select avg(Salary) from employeesub e2 where e2.departement_id =e1.departement_id);



select * from employeesub where departement_id in (select departement_id from employeesub group by departement_id having count(*) > 1  and Salary >60000);

select * from employeesub e1 where Salary  > (select Avg(Salary) from employeesub e2 where e1.departement_id = e2.departement_id and e2.Salary > 50000);

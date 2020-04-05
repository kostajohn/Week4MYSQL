
Delimiter //
create procedure SalaryDescription()
Begin
select *,
	if(`salary` < 40000, 'lower salary', 'higher salary') as `salary_description`
From `salaries`
ORDER BY `salary` limit 100;
end //
Delimiter ;

	--this procedure will give a description of every employees salary.


Delimiter //
create procedure WhatCanMyEmployeesDo()
Begin
select *,
case title 
when "Senior Engineer" then "I can do the most difficult software work"
when "Staff" then "I can do day to day operations"
when "Engineer" then "I can do medium level software jobs"
when "Assistant Engineer" then "I help the Senior Engineer"
when "Senior Staff" then "I look at lots of reports"
else "I can get the coffee"
end as result
from titles limit 100;
end //
Delimiter ;

	--this procedure uses case to give a description of what every employee's job title lets them do


Delimiter //
create procedure RaiseCalculator()
Begin
select emp_no, if (salary < 40000, 40000 * 1.15, "Salary stays the same") as NewSalary
from salaries
order by salary;
end //
Delimiter ;

	--this procedure uses an if statement to determine if employees will receive a raise or if their salary stays the same. 


Delimiter //
create procedure Example(in EmpNum int)
Begin
select emp_no, concat(first_name, " ", last_name) as `employee Name`
from employees
where emp_no = EmpNum;
end //
Delimiter ;

	--this procedure takes the employee number and concatenates their first name and last name into a single column.

Delimiter //
create procedure HourlyWage(in EmpNum int)
begin
select salary / 2080, emp_no from salaries where emp_no = EmpNum;
end;
//
Delimiter ;

	--this procedure takes an employee number and calculates their Hourly Wage.









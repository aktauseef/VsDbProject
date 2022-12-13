create procedure GetAverageSalary
as
begin
select avg(salary) as AverageSalary from employee 
end
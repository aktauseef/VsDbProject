create function TenPercentOfSalary(@salary varchar(max))
returns int
as
begin
 declare @result int;
 set @result=10* cast(@salary as int)/100;
 return @result
end
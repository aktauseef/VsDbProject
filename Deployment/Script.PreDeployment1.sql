/*
 Pre-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be executed before the build script.	
 Use SQLCMD syntax to include a file in the pre-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the pre-deployment script.		
 Example:      :setvar TableName MyTable							
			   SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

print('Pre-Deployment Script')


if OBJECT_ID('[dbo].[city]') is not null
begin
if exists (select * from city)
begin
delete from city
dbcc checkident('city',reseed,0)
end
end

if OBJECT_ID('[dbo].[department]') is not null
begin
if exists (select * from department)
begin
delete from department
dbcc checkident('department',reseed,0)
end
end

if OBJECT_ID('[dbo].[employee]') is not null
begin
if exists (select * from employee)
begin
delete from employee
dbcc checkident('employee',reseed,0)
end
end

if OBJECT_ID('[dbo].[CardItem]') is not null
begin
if exists (select * from CardItem)
begin
delete from CardItem
dbcc checkident('CardItem',reseed,0)
end
end

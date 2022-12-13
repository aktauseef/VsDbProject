/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

print('Post-Deployment Script')

:r ..\Data\Insert-Table-city.sql
:r ..\Data\Insert-Table-department.sql
:r ..\Data\Insert-Table-employee.sql
:r ..\Data\Insert-Table-CardItem.sql

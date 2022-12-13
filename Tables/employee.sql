CREATE TABLE [dbo].[employee]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [firstname] NVARCHAR(20) NOT NULL, 
    [lastname] NVARCHAR(20) NOT NULL, 
    [phone] NVARCHAR(15) NULL, 
    [salary] INT NULL, 
    [cityid] INT NULL, 
    [departmentid] INT NULL, 
    CONSTRAINT [FK_users_city] FOREIGN KEY ([cityid]) REFERENCES [dbo].[city]([Id]), 
    CONSTRAINT [FK_users_department] FOREIGN KEY ([departmentid]) REFERENCES [department]([Id]) 
    )

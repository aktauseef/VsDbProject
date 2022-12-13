CREATE TABLE [dbo].[CardItem]
(
	[CardId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [CardOwnerName] NVARCHAR(100) NOT NULL, 
    [CardNumber] NVARCHAR(16) NOT NULL, 
    [ExpirationDate] NVARCHAR(5) NOT NULL, 
    [SecurityCode] NVARCHAR(3) NOT NULL
)

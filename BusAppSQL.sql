CREATE TABLE SignUp
(
Name VARCHAR(10) NOT NULL,
DOB DATE NOT NULL,
Phone VARCHAR(10) NOT NULL UNIQUE,
UserId VARCHAR(25) PRIMARY KEY NOT NULL,
Password VARCHAR(MAX) NOT NULL
)
GO

CREATE TABLE Trigger_Record
(
UserId VARCHAR(15),
Message VARCHAR(10),
CreatedAt DateTime Default CURRENT_TIMESTAMP
)
GO

DROP TABLE SignUp
--TRUNCATE TABLE SignUp
Insert into SignUp (Name,DOB,Phone,UserId,Password) VALUES ('Mohan','1998-11-13','8870662125','mohan','mona@1319')

CREATE TRIGGER SignUp_Trigger ON SignUp
AFTER INSERT,DELETE
AS
BEGIN
INSERT INTO Trigger_Record(UserId,Message) 
Select i.UserId,'Inserted'  From inserted i
Union All 
Select d.UserId,'Deleted' From deleted d
END

CREATE PROCEDURE SP_SignUp
@Name VARCHAR(10),
@DOB DATETIME,
@UserId VARCHAR(25),
@Phone VARCHAR(10),
@Password VARCHAR(MAX)
AS
BEGIN

INSERT INTO SignUp(Name, DOB, Phone, UserID, Password) VALUES (@Name, @DOB, @Phone, @UserId, @Password)

END

CREATE PROCEDURE SP_Select
AS
BEGIN

Select * from SignUp

END

Select * From Trigger_Record
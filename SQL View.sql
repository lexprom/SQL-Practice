USE Recipe
GO
/*
--WITH ENCYPTION
CREATE VIEW FirstView WITH ENCRYPTION
AS
SELECT U.ID_user as 'User ID', U.First_name as 'First Name', U.Last_name as 'Last Name'
FROM [User] as U
JOIN Rating as R ON U.ID_user=R.ID_user;
GO

EXEC sp_helptext 'FirstView'
GO

SET statistics io on
SET statistics time on

SELECT * FROM FirstView


DROP VIEW FirstView
GO


--ON UPDATE
CREATE VIEW View_INSERT
AS
SELECT U.First_name, U.Last_name
FROM [User] as U
WITH CHECK OPTION
GO


INSERT INTO [User]
VALUES
(996, 'Alex','Park')
GO

DROP VIEW View_INSERT 

*/

--INDEX
SET NUMERIC_ROUNDABORT OFF;

SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, 
ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON; 
GO 

CREATE VIEW View2 With SCHEMABINDING 
AS 
SELECT ID_dish,ID_recipe,[Count]
FROM dbo.Dish
WHERE [Count] BETWEEN 1 AND 5 
GO 

CREATE UNIQUE CLUSTERED INDEX Index_On_View2 
ON dbo.View2 (ID_dish,ID_recipe) 
GO 

SET STATISTICS TIME ON; 

SELECT ID_dish, count(*) 
FROM View2 WITH (NOEXPANDS) 
group by ID_dish 
GO 

SET STATISTICS TIME OFF; 
DROP VIEW View2

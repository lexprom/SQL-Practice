USE Recipe
GO

--WITH ENCYPTION
/*
CREATE VIEW FirstView WITH ENCRYPTION
AS
SELECT U.ID_user as 'User ID', U.First_name as 'First Name', U.Last_name as 'Last Name'
FROM [User] as U
JOIN Rating as R ON U.ID_user=R.ID_user;
GO

EXEC sp_helptext 'FirstView'
GO

print('FirstView')
SET statistics io on
SET statistics time on

SELECT * FROM FirstView

print('FirstView')

DROP VIEW FirstView
GO
*/

--ON UPDATE
/*CREATE VIEW View_INSERT
AS
SELECT U.First_name, U.Last_name
FROM [User] as U
WITH CHECK OPTION
GO


INSERT INTO [User]
VALUES
(996, 'Alex','Park')
GO

/*SELECT First_name FROM [User] WHERE ID_user = 996*/
DROP VIEW View_INSERT 
*/


--INDEX
GO
SET NUMERIC_ROUNDABORT OFF;
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL,
ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS ON;
GO

GO
CREATE VIEW View_3 WITH SCHEMABINDING 
AS
SELECT ID_cuisine,Cuisine_name
FROM Cuisine
WHERE ID_cuisine BETWEEN 1 AND 2

GO
CREATE UNIQUE CLUSTERED INDEX Index_On_View ON View_3 (ID_cuisine) 

SET STATISTICS TIME ON

SELECT * FROM View_3

SET STATISTICS TIME OFF
GO
DROP VIEW View_3

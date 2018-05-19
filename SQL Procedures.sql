--Процедура с входным параметром.
CREATE PROC sp_proc1 @num INT
AS
SELECT ID_raiting,Rating.ID_user
FROM [User] INNER JOIN Rating 
ON ID_raiting=[User].ID_user
WHERE [User].ID_user = @num
GO
EXEC sp_proc1 @num=1
GO
DROP PROC sp_proc1
GO

--Процедура с входными и выходными параметрами.
CREATE PROC sp_proc2 @name varchar(50), @sum decimal OUTPUT
AS
SELECT @sum = SUM(Price) FROM Ingredient INNER JOIN Recipe ON SUBSTRING(Recipe_name,1,5) = @name
AND ID_ingredient = ID_recipe
GO
DECLARE @st decimal
EXEC sp_proc2 'Borsh',@st OUTPUT
SELECT @st
GO
DROP PROC sp_proc2
GO

--процедурa c входными параметрами и циклом
CREATE PROCEDURE sp_proc3 (@i INT)
AS
WHILE (@i<3) 
BEGIN
SELECT Ingredient.ID_ingredient,Ingredient.Name
FROM Ingredient
WHERE Ingredient.ID_ingredient=@i;
SET @i=@i+1;
END 
GO
EXEC sp_proc3 1
GO
DROP PROC sp_proc3
GO

--Курсор
IF OBJECT_ID ( 'dbo.cursoring', 'P' ) IS NOT NULL
    DROP PROCEDURE dbo.cursoring
GO
create proc dbo.cursoring
@CURSOR Cursor varying output
AS
SET NOCOUNT ON
SET @CURSOR = CURSOR
FORWARD_ONLY STATIC FOR
		SELECT Cuisine_name
		FROM Cuisine
		WHERE ID_cuisine > 0
OPEN @CURSOR
GO
DECLARE @CURSOR1 Cursor
DECLARE @name sysname
EXEC dbo.cursoring @CURSOR = @CURSOR1 output
WHILE (@@FETCH_STATUS = 0)
BEGIN
	 print(@name)
     FETCH NEXT FROM @CURSOR1
END
CLOSE @CURSOR1
DEALLOCATE @CURSOR1
go
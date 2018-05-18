--Процедура с входным параметром.

/*
CREATE PROC sp_proc1 @num INT
AS
SELECT ID_raiting,Rating.ID_user
FROM [User] INNER JOIN Rating 
ON ID_raiting=[User].ID_user
WHERE [User].ID_user = @num

EXEC sp_proc1 12

DROP PROC sp_proc1
*/

--Процедура с входными и выходными параметрами.
/*
CREATE PROC sp_proc2 @name varchar(50), @sum decimal OUTPUT
AS
SELECT @sum = SUM(Price) FROM Ingredient INNER JOIN Recipe ON @Reci_name  = @name
AND ID_ingredient = ID_recipe


DECLARE @st decimal
EXEC sp_proc2 'Borsh',@st OUTPUT
SELECT @st

DROP PROC sp_proc2
*/

--процедурa c входными параметрами и циклом
--вывод клиентов по размерам
/*
CREATE PROCEDURE sp_proc3 (@i INT = 1)
AS

WHILE (@i<3) 
BEGIN
SELECT Ingredient.ID_ingredient,Ingredient.Name,Count FROM Composition
INNER JOIN Ingredient
ON Ingredient.ID_ingredient = ID_composition
WHERE Ingredient.ID_ingredient=@i;
SET @i=@i+1;
END 


EXEC sp_proc3 1

DROP PROC sp_proc3
*/
USE Recipe

--INSERT 1
/*
GO
CREATE TRIGGER Dish_count
ON Dish
FOR INSERT
AS
DECLARE @count decimal
SELECT @count = Dish.Count
FROM Dish
IF @count < 1
BEGIN
ROLLBACK
PRINT ('Dish count cant be less than 1')
END

GO
INSERT INTO Dish
(
  ID_dish
 ,ID_dishes
 ,ID_recipe
 ,Count
)
VALUES
(
  4 -- ID_dish - decimal NOT NULL
 ,2 -- ID_dishes - decimal NOT NULL
 ,1 -- ID_recipe - decimal NOT NULL
 ,0 -- Count - decimal NOT NULL
);
GO
SELECT * FROM Dish
DROP TRIGGER Dish_count

*/

--INSERT 2
/*
GO
CREATE TRIGGER Cuisine_name
ON Cuisine
FOR INSERT
AS
DECLARE @name varchar(20)
SELECT @name = Cuisine_name
FROM Cuisine
IF @name LIKE '%[1234567890]%'
BEGIN
ROLLBACK
PRINT ('Cuisine name does not contain numbers')
END

GO
INSERT INTO dbo.Cuisine
(
  ID_cuisine
 ,Cuisine_name
)
VALUES
(
  3 -- ID_cuisine - decimal NOT NULL
 ,'German33' -- Cuisine_name - text NOT NULL
);
GO
SELECT * FROM Cuisine
DROP TRIGGER Cuisine_name
*/

--INSERT 3
/*
GO
Create TRIGGER Instead_Of_Insert
ON Ingredient INSTEAD OF INSERT
AS 
BEGIN
	DECLARE @ID decimal
	DECLARE @Name_ingr varchar(50)
	DECLARE @Calor decimal
	DECLARE @Price decimal
	SELECT @ID = ID_ingredient,@Name_ingr = Name,@Calor = Caloricity,@Price = Price 
	FROM INSERTED

	SELECT @ID,@Name_ingr,@Calor,@Price
	FROM INSERTED
	IF NOT EXISTS(SELECT @Price FROM INSERTED WHERE @Price < 0)
	BEGIN
		INSERT INTO dbo.Ingredient
		(
		  ID_ingredient
		 ,Name
		 ,Caloricity
		 ,Price
		)
		VALUES
		(
		  @ID -- ID_ingredient - decimal NOT NULL
		 ,@Name_ingr -- Name - text NOT NULL
		 ,@Calor -- Caloricity - decimal NOT NULL
		 ,@Price -- Price - decimal NOT NULL
		);
	END
END
GO
INSERT INTO dbo.Ingredient
(
  ID_ingredient
 ,Name
 ,Caloricity
 ,Price
)
VALUES
(
  0 -- ID_ingredient - decimal NOT NULL
 ,'Banana' -- Name - text NOT NULL
 ,1 -- Caloricity - decimal NOT NULL
 ,-2 -- Price - decimal NOT NULL
);
GO
SELECT * FROM Ingredient;
DELETE FROM Ingredient WHERE ID_ingredient = 0;
GO
DROP TRIGGER Instead_Of_Insert

*/

--UPDATE 1
/*
GO
CREATE TRIGGER Cuisine_name_Update
ON Cuisine
FOR UPDATE
AS
DECLARE @ID decimal
DECLARE @Name varchar(50)
SELECT @ID = ID_cuisine, @Name = Cuisine_name
FROM Cuisine
IF UPDATE(Cuisine_name)
ROLLBACK
PRINT('U cant edit name')
GO
UPDATE Cuisine
SET Cuisine_name = 'dsad'
GO
DROP TRIGGER Cuisine_name_Update
*/
--UPDATE 2
/*
GO
CREATE TRIGGER Review_Date
ON Review
FOR UPDATE
AS
DECLARE @Date datetime
SELECT @Date = Date FROM INSERTED;
IF UPDATE(Date)
ROLLBACK
PRINT('U cant edit date when review was wrote')
GO
UPDATE Review
SET Date = '2017/04/02'
GO
DROP TRIGGER Review_Date
*/

--UPDATE 3
/*
GO
CREATE TRIGGER Cuisine_Id_Update
ON Cuisine
INSTEAD OF UPDATE
AS
BEGIN
  DECLARE @ID decimal,@Name varchar(50)
  SELECT @ID = ID_cuisine,@Name = Cuisine_name
  FROM INSERTED

  IF UPDATE(ID_cuisine)
  BEGIN
    PRINT('CuisineID cant be updated')
    ROLLBACK
  END
  ELSE
  BEGIN
    UPDATE Cuisine
    SET Cuisine_name = @Name
    WHERE ID_cuisine = @ID
  END
END
GO
UPDATE Cuisine
SET ID_cuisine = 1
GO
SELECT * FROM Cuisine;
DELETE FROM Cuisine WHERE ID_cuisine = 2;
GO
DROP TRIGGER Cuisine_Id_Update
*/


--DELETE 1
/*
GO
CREATE TRIGGER Delete_Name_Cuisine
ON Category
FOR DELETE
AS
BEGIN
 IF NOT EXISTS(SELECT * FROM DELETED,Category WHERE DELETED.ID_categoryy = Category.ID_categoryy)
 ROLLBACK;
 PRINT('U cant delete user id')
END;
GO
DELETE FROM Recipe WHERE ID_category = 1
DELETE FROM Category WHERE ID_categoryy = 1
GO
DROP TRIGGER Delete_Name_Cuisine
*/

--DELETE 2
/*
GO
CREATE TRIGGER Delete_Id_Cuisine
ON Cuisine
FOR DELETE
AS
BEGIN
  IF NOT EXISTS(SELECT * FROM DELETED INNER JOIN Cuisine ON DELETED.ID_cuisine = Cuisine.ID_cuisine)
  ROLLBACK;
  PRINT('U cant delete cuisine id')
END;
GO
DELETE FROM Cuisine WHERE ID_cuisine = 1
GO
DROP TRIGGER Delete_Id_Cuisine
*/

--DELETE 3
/*
GO CREATE TRIGGER Delete_Dishes
ON Dishes
INSTEAD OF DELETE
AS
BEGIN
  DECLARE @Dish_ID decimal
  SELECT @Dish_ID = DELETED.ID_dishes FROM DELETED

  IF @Dish_ID = 2
  BEGIN
    PRINT('Fork cannot be deleted')
    INSERT INTO Dishes
    VALUES(@Dish_ID+1,'Record cannot be deleted')
  END
END
GO
SELECT * FROM Dishes
DELETE FROM Dishes WHERE ID_dishes = 2
GO
DROP TRIGGER Delete_Dishes
*/
GO
CREATE TRIGGER DELETE_Recipe
ON Recipe
AFTER DELETE
AS
BEGIN
  DECLARE @ID decimal
  DECLARE @Ratin decimal
  SELECT @ID = ID_review,@Ratin = ID_raiting FROM Review WHERE Review.ID_review IN (SELECT ID_review FROM deleted)
  DELETE FROM Review WHERE Review.ID_review IN (SELECT ID_review FROM deleted)
  DELETE FROM Rating WHERE Rating.ID_raiting = @Ratin
END
GO
DELETE FROM Recipe WHERE ID_recipe = 1
GO
DROP TRIGGER DELETE_Recipe
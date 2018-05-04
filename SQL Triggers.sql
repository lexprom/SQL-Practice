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
PRINT ('Cuisine name cant exist numbers')
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
CREATE TRIGGER Recipe_cost
ON Recipe
FOR INSERT
AS
DECLARE @cost decimal
SELECT @cost = Cost
FROM Recipe
IF @cost < 0
BEGIN
ROLLBACK
PRINT ('Cost cant be negative')
END

GO
INSERT INTO dbo.Recipe
(
  ID_recipe
 ,ID_cuisine
 ,ID_category
 ,ID_cooking_way
 ,ID_dish
 ,ID_composition
 ,ID_review
 ,Recipe_name
 ,Cost
)
VALUES
(
  3 -- ID_recipe - decimal NOT NULL
 ,2 -- ID_cuisine - decimal NOT NULL
 ,2 -- ID_category - decimal NOT NULL
 ,1 -- ID_cooking_way - decimal NOT NULL
 ,1 -- ID_dish - decimal NOT NULL
 ,1 -- ID_composition - decimal NOT NULL
 ,1 -- ID_review - decimal NOT NULL
 ,'Unagi' -- Recipe_name - text NOT NULL
 ,-250 -- Cost - decimal NOT NULL
);
GO
SELECT * FROM Recipe
DROP TRIGGER Recipe_cost
*/
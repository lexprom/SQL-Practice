--INNER JOIN
/*SELECT Cuisine.ID_cuisine,Cuisine.Cuisine_name,Category.ID_categoryy,Category.Category_name
FROM Cuisine
INNER JOIN Category ON Cuisine.ID_cuisine = Category.ID_categoryy;*/

--OUTER JOIN
/*SELECT Cuisine.ID_cuisine,Cuisine.Cuisine_name,Category.ID_categoryy,Category.Category_name
FROM Cuisine
RIGHT OUTER JOIN Category ON Cuisine.ID_cuisine = Category.ID_categoryy;*/

--CROSS JOIN
/*SELECT *
FROM Cuisine CROSS JOIN Category*/

--CROSS APPLY
/*SELECT *
FROM Cuisine
CROSS APPLY Category*/

--SELF-JOIN
/*SELECT *
FROM Cuisine A, Cuisine B
WHERE A.ID_cuisine <> B.ID_cuisine*/

--EXISTS
/*DECLARE @Cuis varchar(10) = 'Polish';
--SET @Cuis = 'Polish'
SELECT Cuisine_name
FROM Cuisine
WHERE EXISTS (SELECT Cuisine_name FROM Cuisine WHERE SUBSTRING(Cuisine_name, 1, DATALENGTH(Cuisine_name)) = @Cuis ) and SUBSTRING(Cuisine_name, 1, DATALENGTH(Cuisine_name))=@Cuis*/

--IN
/*SELECT Cuisine_name
FROM Cuisine
WHERE (SUBSTRING(Cuisine_name, 1, DATALENGTH(Cuisine_name))) IN ('Russian')*/

--ALL
/*SELECT Cuisine_name
FROM Cuisine
WHERE ID_cuisine > ALL (SELECT ID_cuisine FROM Cuisine WHERE ID_cuisine > 1)*/


--ANY/SOME
/*SELECT *
FROM Dishes
WHERE ID_dishes = ANY/SOME (SELECT ID_dishes FROM Dishes)*/

--BETWEEN
/*SELECT * 
FROM Dishes
WHERE ID_dishes BETWEEN 0 AND 2*/

--LIKE
/*SELECT *
FROM Dishes
WHERE Name LIKE '%k%'*/

--CASE
/*SELECT *,
CASE
WHEN ID_ingredient is NULL
THEN 'Theres nothin'
END
FROM Ingredient
RIGHT OUTER JOIN Category ON Ingredient.ID_ingredient = Category.ID_categoryy*/

--CAST
/*SELECT CAST(AVG(Caloricity) AS VARCHAR(20))
FROM Ingredient*/

--CONVERT
/*SELECT CONVERT(int, Caloricity) AS INT
FROM Ingredient*/

--ISNULL
/*SELECT ISNULL(ingr.ID_ingredient, 'This ingredient doesnt exist')
FROM Ingredient ingr*/

--NULLIF
--Если картоха, то NULL
/*SELECT NULLIF(ID_ingredient, 'Potato') AS 'Ingredients'
FROM Ingredient*/

--COALESCE
/*SELECT COALESCE(NULL,'First',NULL,'');*/

--CHOOSE
/*SELECT ID_cooking_method,CHOOSE(ID_cooking_method,'A','B') AS Result
FROM [Cooking method]*/

--IIF
/*DECLARE @a int = 45, @b int = 40;  
SELECT IIF ( @a > @b, 'TRUE', 'FALSE' ) AS Result;*/

--REPLACE
/*DECLARE @name varchar(20) = 'Russian' 
SELECT REPLACE(@name,'R','F') 
FROM Cuisine
WHERE ID_cuisine=1*/

--STUFF(string1, start, length, add_string)
/*SELECT STUFF('SQL Tutorial',1,3,'HTML')*/

--STR
/*SELECT STR(123) AS Result_String*/

--UNICODE
/*SELECT UNICODE('A') AS Unicode_code*/

--LOWER/UPPER
/*SELECT LOWER/UPPER('SQL is not fun')*/

--DATEPART
/*SELECT DATEPART(YEAR,Date)
FROM Review*/

--DATEADD
/*SELECT DATEADD(YEAR,2,Date)
FROM Review*/

--DATEDIFF (date2 - date1)
/*SELECT DATEDIFF(YEAR, '2011/08/25', '2018/08/25')*/

--GETDATE
/*SELECT GETDATE();*/

--DATETIMEOFFSET
/*SELECT SYSDATETIMEOFFSET();*/

--GROUP BY/HAVING

/*INSERT INTO dbo.Dish
(
  ID_dish
 ,ID_dishes
 ,ID_recipe
 ,Count
)
VALUES
(
  3
 ,2
 ,1
 ,2
);*/

SELECT COUNT(ID_dish),ID_dishes
FROM Dish
GROUP BY ID_dishes
HAVING ID_dishes>2
--INNER JOIN
SELECT Cuisine.ID_cuisine,Cuisine.Cuisine_name,Category.ID_categoryy,Category.Category_name
FROM Cuisine
INNER JOIN Category ON Cuisine.ID_cuisine = Category.ID_categoryy;

--OUTER JOIN
SELECT Cuisine.ID_cuisine,Cuisine.Cuisine_name,Category.ID_categoryy,Category.Category_name
FROM Cuisine
RIGHT OUTER JOIN Category ON Cuisine.ID_cuisine = Category.ID_categoryy;

--CROSS JOIN
SELECT *
FROM Cuisine CROSS JOIN Category

--CROSS APPLY
SELECT *
FROM Cuisine
CROSS APPLY Category

--SELF-JOIN
SELECT *
FROM Cuisine A, Cuisine B
WHERE A.ID_cuisine <> B.ID_cuisine

--EXISTS
DECLARE @Cuis varchar(10) = 'Polish';
SELECT Cuisine_name
FROM Cuisine
WHERE EXISTS (SELECT Cuisine_name FROM Cuisine WHERE SUBSTRING(Cuisine_name, 1, DATALENGTH(Cuisine_name)) = @Cuis ) and SUBSTRING(Cuisine_name, 1, DATALENGTH(Cuisine_name))=@Cuis

--IN
SELECT Cuisine_name
FROM Cuisine
WHERE (SUBSTRING(Cuisine_name, 1, DATALENGTH(Cuisine_name))) IN ('Russian')

--ALL
SELECT Cuisine_name
FROM Cuisine
WHERE ID_cuisine > ALL (SELECT ID_cuisine FROM Cuisine)


--ANY/SOME
SELECT *
FROM Dishes
WHERE ID_dishes = ANY (SELECT ID_dishes FROM Dishes)

--BETWEEN
SELECT * 
FROM Dishes
WHERE ID_dishes BETWEEN 0 AND 2

--LIKE
SELECT *
FROM Dishes
WHERE Name LIKE '%k%'

--CASE
SELECT *,
CASE
WHEN ID_ingredient is NULL
THEN 'Theres nothin'
END
FROM Ingredient
RIGHT OUTER JOIN Category ON Ingredient.ID_ingredient = Category.ID_categoryy

--CAST
SELECT CAST(AVG(Caloricity) AS VARCHAR(20))
FROM Ingredient

--CONVERT
SELECT CONVERT(int, Caloricity) AS INT
FROM Ingredient

--ISNULL
SELECT ISNULL(ingr.ID_ingredient, 'This ingredient doesnt exist')
FROM Ingredient ingr

--COALESCE
SELECT COALESCE(NULL,'First',NULL,'');

--CHOOSE
SELECT ID_cooking_method,CHOOSE(ID_cooking_method,'A','B') AS Result
FROM [Cooking method]

--IIF
DECLARE @a int = 45, @b int = 40;  
SELECT IIF ( @a > @b, 'TRUE', 'FALSE' ) AS Result;

--REPLACE
DECLARE @name varchar(20) = 'Russian' 
SELECT REPLACE(@name,'R','F') 
FROM Cuisine
WHERE ID_cuisine=1

--STUFF(string1, start, length, add_string)
SELECT STUFF('SQL Tutorial',1,3,'HTML')

--STR
SELECT STR(123) AS Result_String

--UNICODE
SELECT UNICODE('A') AS Unicode_code

--LOWER/UPPER
SELECT LOWER('SQL is not fun')

--DATEPART
SELECT DATEPART(YEAR,Date)
FROM Review

--DATEADD
SELECT DATEADD(YEAR,2,Date)
FROM Review

--DATEDIFF (date2 - date1)
SELECT DATEDIFF(YEAR, '2011/08/25', '2018/08/25')

--GETDATE
SELECT GETDATE();

--DATETIMEOFFSET
SELECT SYSDATETIMEOFFSET();



--GROUPBY
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
 ,1 -- ID_category - decimal NOT NULL
 ,1 -- ID_cooking_way - decimal NOT NULL
 ,1 -- ID_dish - decimal NOT NULL
 ,1 -- ID_composition - decimal NOT NULL
 ,1 -- ID_review - decimal NOT NULL
 ,'Unagi' -- Recipe_name - text NOT NULL
 ,250 -- Cost - decimal NOT NULL
);

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
  4 -- ID_recipe - decimal NOT NULL
 ,2 -- ID_cuisine - decimal NOT NULL
 ,2 -- ID_category - decimal NOT NULL
 ,1 -- ID_cooking_way - decimal NOT NULL
 ,1 -- ID_dish - decimal NOT NULL
 ,1 -- ID_composition - decimal NOT NULL
 ,1 -- ID_review - decimal NOT NULL
 ,'Holodez' -- Recipe_name - text NOT NULL
 ,40 -- Cost - decimal NOT NULL
);

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
  5 -- ID_recipe - decimal NOT NULL
 ,2 -- ID_cuisine - decimal NOT NULL
 ,3 -- ID_category - decimal NOT NULL
 ,1 -- ID_cooking_way - decimal NOT NULL
 ,1 -- ID_dish - decimal NOT NULL
 ,1 -- ID_composition - decimal NOT NULL
 ,1 -- ID_review - decimal NOT NULL
 ,'Maccaroni' -- Recipe_name - text NOT NULL
 ,232 -- Cost - decimal NOT NULL
);

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
  6 -- ID_recipe - decimal NOT NULL
 ,2 -- ID_cuisine - decimal NOT NULL
 ,3 -- ID_category - decimal NOT NULL
 ,1 -- ID_cooking_way - decimal NOT NULL
 ,1 -- ID_dish - decimal NOT NULL
 ,1 -- ID_composition - decimal NOT NULL
 ,1 -- ID_review - decimal NOT NULL
 ,'Pizza' -- Recipe_name - text NOT NULL
 ,2322 -- Cost - decimal NOT NULL
);

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
  7 -- ID_recipe - decimal NOT NULL
 ,2 -- ID_cuisine - decimal NOT NULL
 ,3 -- ID_category - decimal NOT NULL
 ,1 -- ID_cooking_way - decimal NOT NULL
 ,1 -- ID_dish - decimal NOT NULL
 ,1 -- ID_composition - decimal NOT NULL
 ,1 -- ID_review - decimal NOT NULL
 ,'Soup' -- Recipe_name - text NOT NULL
 ,245 -- Cost - decimal NOT NULL
);

SELECT CONVERT(varchar(50),b.Category_name), COUNT(a.ID_category) AS COuntt
FROM Recipe a INNER JOIN Category b ON a.ID_category = b.ID_categoryy
GROUP BY  CONVERT(varchar(50),b.Category_name)

HAVING COUNT(a.ID_category) >= 0

--NULLIF
SELECT NULLIF(25,25)
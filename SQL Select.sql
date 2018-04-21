--INNER JOIN
/*SELECT Cuisine.ID_Кухня,Cuisine.Название_кухни,Category.ID_категории,Category.Название_категории
FROM Cuisine
INNER JOIN Category ON Cuisine.Id_Кухня = Category.ID_категории;*/

--OUTER JOIN
/*SELECT Cuisine.ID_Кухня,Cuisine.Название_кухни,Category.ID_категории,Category.Название_категории
FROM Cuisine
RIGHT OUTER JOIN Category ON Cuisine.Id_Кухня = Category.ID_категории;*/

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
WHERE A.ID_Кухня <> B.ID_Кухня*/

--EXISTS
/*DECLARE @Cuis varchar(10) = N'Польская';
--SET @Cuis = N'Польская'
SELECT Название_кухни
FROM Cuisine
WHERE EXISTS (SELECT Название_кухни FROM Cuisine WHERE SUBSTRING(Название_кухни, 1, DATALENGTH(Название_кухни)) = @Cuis ) and SUBSTRING(Название_кухни, 1, DATALENGTH(Название_кухни))=@Cuis
*/


--IN
/*SELECT Название_кухни
FROM Cuisine
WHERE (SUBSTRING(Название_кухни, 1, DATALENGTH(Название_кухни)))  IN (N'Русская')*/

--ALL
/*SELECT Название_кухни
FROM Cuisine
WHERE ID_кухня > ALL (SELECT ID_кухня FROM Cuisine WHERE ID_кухня > 1)*/


--ANY/SOME
/*SELECT *
FROM Dishes
WHERE ID_посуды = SOME/ANY (SELECT ID_посуды FROM Dishes)*/

--BETWEEN
/*SELECT * 
FROM Dishes
WHERE ID_посуды BETWEEN 0 AND 2*/

--LIKE
/*SELECT *
FROM Dishes
WHERE Название LIKE N'%р%'*/

--CASE
/*SELECT *,
CASE
WHEN ID_ингредиента is NULL
THEN 'Нету в наличии'
END
FROM Ingredient
RIGHT OUTER JOIN Category ON Ingredient.ID_ингредиента = Category.ID_категории*/

--CAST
/*SELECT CAST(AVG(Калорийность) AS VARCHAR(20))
FROM Ingredient*/

--CONVERT
/*SELECT CONVERT(int,Калорийность) AS INT
FROM Ingredient*/

--ISNULL

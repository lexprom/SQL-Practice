--INNER JOIN
/*SELECT Cuisine.ID_�����,Cuisine.��������_�����,Category.ID_���������,Category.��������_���������
FROM Cuisine
INNER JOIN Category ON Cuisine.Id_����� = Category.ID_���������;*/

--OUTER JOIN
/*SELECT Cuisine.ID_�����,Cuisine.��������_�����,Category.ID_���������,Category.��������_���������
FROM Cuisine
RIGHT OUTER JOIN Category ON Cuisine.Id_����� = Category.ID_���������;*/

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
WHERE A.ID_����� <> B.ID_�����*/

--EXISTS
/*DECLARE @Cuis varchar(10) = N'��������';
--SET @Cuis = N'��������'
SELECT ��������_�����
FROM Cuisine
WHERE EXISTS (SELECT ��������_����� FROM Cuisine WHERE SUBSTRING(��������_�����, 1, DATALENGTH(��������_�����)) = @Cuis ) and SUBSTRING(��������_�����, 1, DATALENGTH(��������_�����))=@Cuis
*/


--IN
/*SELECT ��������_�����
FROM Cuisine
WHERE (SUBSTRING(��������_�����, 1, DATALENGTH(��������_�����)))  IN (N'�������')*/

--ALL
/*SELECT ��������_�����
FROM Cuisine
WHERE ID_����� > ALL (SELECT ID_����� FROM Cuisine WHERE ID_����� > 1)*/


--ANY/SOME
/*SELECT *
FROM Dishes
WHERE ID_������ = SOME/ANY (SELECT ID_������ FROM Dishes)*/

--BETWEEN
/*SELECT * 
FROM Dishes
WHERE ID_������ BETWEEN 0 AND 2*/

--LIKE
/*SELECT *
FROM Dishes
WHERE �������� LIKE N'%�%'*/

--CASE
/*SELECT *,
CASE
WHEN ID_����������� is NULL
THEN '���� � �������'
END
FROM Ingredient
RIGHT OUTER JOIN Category ON Ingredient.ID_����������� = Category.ID_���������*/

--CAST
/*SELECT CAST(AVG(������������) AS VARCHAR(20))
FROM Ingredient*/

--CONVERT
/*SELECT CONVERT(int,������������) AS INT
FROM Ingredient*/

--ISNULL

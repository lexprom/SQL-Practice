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

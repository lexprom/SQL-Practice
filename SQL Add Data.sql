USE [Recipe]
GO

INSERT INTO [dbo].[Ingredient]
([ID_Ingredient]
,[Name]
,[Caloricity]
,[Price])
VALUES
(1
,'Tomato'
,12
,23)

INSERT INTO [dbo].[Ingredient]
([ID_Ingredient]
,[Name]
,[Caloricity]
,[Price])
VALUES
(2
,'Cucumber'
,7
,10)

INSERT INTO [dbo].[User]
([ID_user]
,[First_name]
,[Last_name])
VALUES
(1
,'Ivan'
,'Pupkin')

INSERT INTO [dbo].[Dishes]
([ID_dishes]
,[Name])
VALUES
(1
,'Plate')


INSERT INTO [dbo].[Dishes]
([ID_dishes]
,[Name])
VALUES
(2
,'Fork')


INSERT INTO [dbo].[Cooking method]
([ID_cooking_method]
,[Name])
VALUES
(1
,'Roast')

INSERT INTO [dbo].[Cooking method]
([ID_cooking_method]
,[Name])
VALUES
(2
,'Boil')

INSERT INTO [dbo].[Cuisine]
([ID_Cuisine]
,[Cuisine_Name])
VALUES
(1
,'Russian')

INSERT INTO [dbo].[Cuisine]
([ID_Cuisine]
,[Cuisine_Name])
VALUES
(2
,'Polish')

INSERT INTO [dbo].[Category]
([ID_categoryy]
,[Category_Name])
VALUES
(1
,'Breakfast')

INSERT INTO [dbo].[Category]
([ID_categoryy]
,[Category_Name])
VALUES
(2
,'Lunch')

INSERT INTO [dbo].[Category]
([ID_categoryy]
,[Category_Name])
VALUES
(3
,'Dinner')

INSERT INTO [dbo].[Composition]
([ID_Composition]
,[ID_Ingredient]
,[ID_recipe]
,[Count])
VALUES
(1
,1
,1
,3)

INSERT INTO [dbo].[Rating]
([ID_raiting]
,[ID_user]
,[Recipes_Count]
,[Positive_per]
,[Negative_per])
VALUES
(1
,1
,1
,1
,0)

INSERT INTO [dbo].[Dish]
([ID_dish]
,[ID_dishes]
,[ID_recipe]
,[Count])
VALUES
(1
,1
,1
,1)

INSERT INTO [dbo].[Dish]
([ID_dish]
,[ID_dishes]
,[ID_recipe]
,[Count])
VALUES
(2
,2
,1
,2)

INSERT INTO [dbo].[Review]
([ID_review]
,[ID_raiting]
,[ID_recipe]
,[Message]
,[Date]
,[Mark])
VALUES
(1
,1
,1
,'Hmm yummy'
,'04/14/2017'
,1)

INSERT INTO [dbo].[Recipe]
([ID_recipe]
,[ID_Cuisine]
,[ID_category]
,[ID_cooking_way]
,[ID_dish]
,[ID_Composition]
,[ID_review]
,[Recipe_Name]
,[Cost])
VALUES
(1
,1
,1
,2
,1
,1
,1
,'Borsh'
,300)
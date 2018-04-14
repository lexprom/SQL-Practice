USE [Recipe]
GO

INSERT INTO [dbo].[Ingredient]
           ([ID_ингредиента]
           ,[Название]
           ,[Калорийность]
           ,[Цена])
     VALUES
           (1
           ,N'Томат'
           ,12
           ,23)

INSERT INTO [dbo].[Ingredient]
           ([ID_ингредиента]
           ,[Название]
           ,[Калорийность]
           ,[Цена])
     VALUES
           (2
           ,N'Огурец'
           ,7
           ,10)

INSERT INTO [dbo].[User]
           ([ID_пользователя]
           ,[Имя]
           ,[Фамилия])
     VALUES
           (1
           ,N'Иван'
           ,N'Пупкин')

INSERT INTO [dbo].[Dishes]
           ([ID_посуды]
           ,[Название])
     VALUES
           (1
           ,N'Тарелка')


INSERT INTO [dbo].[Dishes]
           ([ID_посуды]
           ,[Название])
     VALUES
           (2
           ,N'Вилка')


INSERT INTO [dbo].[Cooking method]
           ([ID_метод_приготовления]
           ,[Название])
     VALUES
           (1
           ,N'Жарить')

INSERT INTO [dbo].[Cooking method]
           ([ID_метод_приготовления]
           ,[Название])
     VALUES
           (2
           ,N'Варить')

INSERT INTO [dbo].[Cuisine]
           ([ID_кухня]
           ,[Название_кухни])
     VALUES
           (1
           ,N'Русская')

INSERT INTO [dbo].[Cuisine]
           ([ID_кухня]
           ,[Название_кухни])
     VALUES
           (2
           ,N'Польская')

INSERT INTO [dbo].[Category]
           ([ID_категории]
           ,[Название_категории])
     VALUES
           (1
           ,N'Завтрак')

INSERT INTO [dbo].[Category]
           ([ID_категории]
           ,[Название_категории])
     VALUES
           (2
           ,N'Обед')

INSERT INTO [dbo].[Category]
           ([ID_категории]
           ,[Название_категории])
     VALUES
           (3
           ,N'Ужин')

INSERT INTO [dbo].[Composition]
           ([ID_состав]
           ,[ID_ингредиента]
           ,[ID_рецепта]
           ,[Количество])
     VALUES
           (1
           ,1
           ,1
           ,3)

INSERT INTO [dbo].[Rating]
           ([ID_рейтинг]
           ,[ID_пользователя]
           ,[Колво_рецептов]
           ,[Процент_положительных]
           ,[Процент_отрицательных])
     VALUES
           (1
           ,1
           ,1
           ,1
           ,0)

INSERT INTO [dbo].[Dish]
           ([ID_посуда]
           ,[ID_посуды]
           ,[ID_рецепта]
           ,[Количество])
     VALUES
           (1
           ,1
           ,1
           ,1)

INSERT INTO [dbo].[Dish]
           ([ID_посуда]
           ,[ID_посуды]
           ,[ID_рецепта]
           ,[Количество])
     VALUES
           (2
           ,2
           ,1
           ,2)

INSERT INTO [dbo].[Review]
           ([ID_отзыва]
           ,[ID_рейтинга]
           ,[ID_рецепта]
           ,[Сообщение]
           ,[Дата]
           ,[Оценка])
     VALUES
           (1
           ,1
           ,1
           ,N'полезный рецепт'
           ,'04/14/2017'
           ,1)

INSERT INTO [dbo].[Recipe]
           ([ID_рецепта]
           ,[ID_кухня]
           ,[ID_категория]
           ,[ID_способ_приготовления]
           ,[ID_посуда]
           ,[ID_состав]
           ,[ID_отзыва]
           ,[Название_рецепта]
           ,[Стоимость])
     VALUES
           (1
           ,1
           ,1
           ,2
           ,1
           ,1
           ,1
           ,N'Борщ'
           ,300)
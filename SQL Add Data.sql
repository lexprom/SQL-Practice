USE [Recipe]
GO

INSERT INTO [dbo].[Ingredient]
           ([ID_�����������]
           ,[��������]
           ,[������������]
           ,[����])
     VALUES
           (1
           ,N'�����'
           ,12
           ,23)

INSERT INTO [dbo].[Ingredient]
           ([ID_�����������]
           ,[��������]
           ,[������������]
           ,[����])
     VALUES
           (2
           ,N'������'
           ,7
           ,10)

INSERT INTO [dbo].[User]
           ([ID_������������]
           ,[���]
           ,[�������])
     VALUES
           (1
           ,N'����'
           ,N'������')

INSERT INTO [dbo].[Dishes]
           ([ID_������]
           ,[��������])
     VALUES
           (1
           ,N'�������')


INSERT INTO [dbo].[Dishes]
           ([ID_������]
           ,[��������])
     VALUES
           (2
           ,N'�����')


INSERT INTO [dbo].[Cooking method]
           ([ID_�����_�������������]
           ,[��������])
     VALUES
           (1
           ,N'������')

INSERT INTO [dbo].[Cooking method]
           ([ID_�����_�������������]
           ,[��������])
     VALUES
           (2
           ,N'������')

INSERT INTO [dbo].[Cuisine]
           ([ID_�����]
           ,[��������_�����])
     VALUES
           (1
           ,N'�������')

INSERT INTO [dbo].[Cuisine]
           ([ID_�����]
           ,[��������_�����])
     VALUES
           (2
           ,N'��������')

INSERT INTO [dbo].[Category]
           ([ID_���������]
           ,[��������_���������])
     VALUES
           (1
           ,N'�������')

INSERT INTO [dbo].[Category]
           ([ID_���������]
           ,[��������_���������])
     VALUES
           (2
           ,N'����')

INSERT INTO [dbo].[Category]
           ([ID_���������]
           ,[��������_���������])
     VALUES
           (3
           ,N'����')

INSERT INTO [dbo].[Composition]
           ([ID_������]
           ,[ID_�����������]
           ,[ID_�������]
           ,[����������])
     VALUES
           (1
           ,1
           ,1
           ,3)

INSERT INTO [dbo].[Rating]
           ([ID_�������]
           ,[ID_������������]
           ,[�����_��������]
           ,[�������_�������������]
           ,[�������_�������������])
     VALUES
           (1
           ,1
           ,1
           ,1
           ,0)

INSERT INTO [dbo].[Dish]
           ([ID_������]
           ,[ID_������]
           ,[ID_�������]
           ,[����������])
     VALUES
           (1
           ,1
           ,1
           ,1)

INSERT INTO [dbo].[Dish]
           ([ID_������]
           ,[ID_������]
           ,[ID_�������]
           ,[����������])
     VALUES
           (2
           ,2
           ,1
           ,2)

INSERT INTO [dbo].[Review]
           ([ID_������]
           ,[ID_��������]
           ,[ID_�������]
           ,[���������]
           ,[����]
           ,[������])
     VALUES
           (1
           ,1
           ,1
           ,N'�������� ������'
           ,'04/14/2017'
           ,1)

INSERT INTO [dbo].[Recipe]
           ([ID_�������]
           ,[ID_�����]
           ,[ID_���������]
           ,[ID_������_�������������]
           ,[ID_������]
           ,[ID_������]
           ,[ID_������]
           ,[��������_�������]
           ,[���������])
     VALUES
           (1
           ,1
           ,1
           ,2
           ,1
           ,1
           ,1
           ,N'����'
           ,300)
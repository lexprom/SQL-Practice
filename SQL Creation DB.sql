CREATE TABLE [Recipe] (
	ID_������� decimal NOT NULL UNIQUE,
	ID_����� decimal NOT NULL,
	ID_��������� decimal NOT NULL,
	ID_������_������������� decimal NOT NULL,
	ID_������ decimal NOT NULL,
	ID_������ decimal NOT NULL,
	ID_������ decimal NOT NULL,
	��������_������� text NOT NULL,
	��������� decimal NOT NULL,
  CONSTRAINT [PK_RECIPE] PRIMARY KEY CLUSTERED
  (
  [ID_�������] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Cuisine] (
	ID_����� decimal NOT NULL,
	��������_����� text NOT NULL,
  CONSTRAINT [PK_CUISINE] PRIMARY KEY CLUSTERED
  (
  [ID_�����] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Category] (
	ID_��������� decimal NOT NULL,
	��������_��������� text NOT NULL,
  CONSTRAINT [PK_CATEGORY] PRIMARY KEY CLUSTERED
  (
  [ID_���������] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Ingredient] (
	ID_����������� decimal NOT NULL,
	�������� text NOT NULL,
	������������ decimal NOT NULL,
	���� decimal NOT NULL,
  CONSTRAINT [PK_INGREDIENT] PRIMARY KEY CLUSTERED
  (
  [ID_�����������] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Cooking method] (
	ID_�����_������������� decimal NOT NULL,
	�������� text NOT NULL,
  CONSTRAINT [PK_COOKING METHOD] PRIMARY KEY CLUSTERED
  (
  [ID_�����_�������������] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Review] (
	ID_������ decimal NOT NULL,
	ID_�������� decimal NOT NULL,
	ID_������� decimal NOT NULL,
	��������� text NOT NULL,
	���� datetime NOT NULL,
	������ bit NOT NULL,
  CONSTRAINT [PK_REVIEW] PRIMARY KEY CLUSTERED
  (
  [ID_������] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [User] (
	ID_������������ decimal NOT NULL,
	��� text NOT NULL,
	������� text NOT NULL,
  CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED
  (
  [ID_������������] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Composition] (
	ID_������ decimal NOT NULL,
	ID_����������� decimal NOT NULL,
	ID_������� decimal NOT NULL,
	���������� decimal NOT NULL,
  CONSTRAINT [PK_COMPOSITION] PRIMARY KEY CLUSTERED
  (
  [ID_������] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Rating] (
	ID_������� decimal NOT NULL,
	ID_������������ decimal NOT NULL,
	�����_�������� decimal NOT NULL,
	�������_������������� decimal NOT NULL,
	�������_������������� decimal NOT NULL,
  CONSTRAINT [PK_RATING] PRIMARY KEY CLUSTERED
  (
  [ID_�������] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Dish] (
	ID_������ decimal NOT NULL,
	ID_������ decimal NOT NULL,
	ID_������� decimal NOT NULL,
	���������� decimal NOT NULL,
  CONSTRAINT [PK_DISH] PRIMARY KEY CLUSTERED
  (
  [ID_������] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Dishes] (
	ID_������ decimal NOT NULL,
	�������� text NOT NULL,
  CONSTRAINT [PK_DISHES] PRIMARY KEY CLUSTERED
  (
  [ID_������] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
ALTER TABLE [Recipe] WITH CHECK ADD CONSTRAINT [Recipe_fk0] FOREIGN KEY ([ID_�����]) REFERENCES [Cuisine]([ID_�����])
ON UPDATE CASCADE
GO
ALTER TABLE [Recipe] CHECK CONSTRAINT [Recipe_fk0]
GO
ALTER TABLE [Recipe] WITH CHECK ADD CONSTRAINT [Recipe_fk1] FOREIGN KEY ([ID_���������]) REFERENCES [Category]([ID_���������])
ON UPDATE CASCADE
GO
ALTER TABLE [Recipe] CHECK CONSTRAINT [Recipe_fk1]
GO
ALTER TABLE [Recipe] WITH CHECK ADD CONSTRAINT [Recipe_fk2] FOREIGN KEY ([ID_������_�������������]) REFERENCES [Cooking method]([ID_�����_�������������])
ON UPDATE CASCADE
GO
ALTER TABLE [Recipe] CHECK CONSTRAINT [Recipe_fk2]
GO
ALTER TABLE [Recipe] WITH CHECK ADD CONSTRAINT [Recipe_fk3] FOREIGN KEY ([ID_������]) REFERENCES [Dish]([ID_������])
ON UPDATE CASCADE
GO
ALTER TABLE [Recipe] CHECK CONSTRAINT [Recipe_fk3]
GO
ALTER TABLE [Recipe] WITH CHECK ADD CONSTRAINT [Recipe_fk4] FOREIGN KEY ([ID_������]) REFERENCES [Composition]([ID_������])
ON UPDATE CASCADE
GO
ALTER TABLE [Recipe] CHECK CONSTRAINT [Recipe_fk4]
GO
ALTER TABLE [Recipe] WITH CHECK ADD CONSTRAINT [Recipe_fk5] FOREIGN KEY ([ID_������]) REFERENCES [Review]([ID_������])
ON UPDATE CASCADE
GO
ALTER TABLE [Recipe] CHECK CONSTRAINT [Recipe_fk5]
GO





ALTER TABLE [Review] WITH CHECK ADD CONSTRAINT [Review_fk0] FOREIGN KEY ([ID_��������]) REFERENCES [Rating]([ID_�������])
ON UPDATE CASCADE
GO
ALTER TABLE [Review] CHECK CONSTRAINT [Review_fk0]
GO


ALTER TABLE [Composition] WITH CHECK ADD CONSTRAINT [Composition_fk0] FOREIGN KEY ([ID_�����������]) REFERENCES [Ingredient]([ID_�����������])
ON UPDATE CASCADE
GO
ALTER TABLE [Composition] CHECK CONSTRAINT [Composition_fk0]
GO

ALTER TABLE [Rating] WITH CHECK ADD CONSTRAINT [Rating_fk0] FOREIGN KEY ([ID_������������]) REFERENCES [User]([ID_������������])
ON UPDATE CASCADE
GO
ALTER TABLE [Rating] CHECK CONSTRAINT [Rating_fk0]
GO

ALTER TABLE [Dish] WITH CHECK ADD CONSTRAINT [Dish_fk0] FOREIGN KEY ([ID_������]) REFERENCES [Dishes]([ID_������])
ON UPDATE CASCADE
GO
ALTER TABLE [Dish] CHECK CONSTRAINT [Dish_fk0]
GO
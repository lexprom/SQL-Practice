CREATE TABLE [Recipe] (
	ID_рецепта decimal NOT NULL UNIQUE,
	ID_кухня decimal NOT NULL,
	ID_категория decimal NOT NULL,
	ID_способ_приготовления decimal NOT NULL,
	ID_посуда decimal NOT NULL,
	ID_состав decimal NOT NULL,
	ID_отзыва decimal NOT NULL,
	Название_рецепта text NOT NULL,
	Стоимость decimal NOT NULL,
  CONSTRAINT [PK_RECIPE] PRIMARY KEY CLUSTERED
  (
  [ID_рецепта] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Cuisine] (
	ID_кухня decimal NOT NULL,
	Название_кухни text NOT NULL,
  CONSTRAINT [PK_CUISINE] PRIMARY KEY CLUSTERED
  (
  [ID_кухня] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Category] (
	ID_категории decimal NOT NULL,
	Название_категории text NOT NULL,
  CONSTRAINT [PK_CATEGORY] PRIMARY KEY CLUSTERED
  (
  [ID_категории] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Ingredient] (
	ID_ингредиента decimal NOT NULL,
	Название text NOT NULL,
	Калорийность decimal NOT NULL,
	Цена decimal NOT NULL,
  CONSTRAINT [PK_INGREDIENT] PRIMARY KEY CLUSTERED
  (
  [ID_ингредиента] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Cooking method] (
	ID_метод_приготовления decimal NOT NULL,
	Название text NOT NULL,
  CONSTRAINT [PK_COOKING METHOD] PRIMARY KEY CLUSTERED
  (
  [ID_метод_приготовления] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Review] (
	ID_отзыва decimal NOT NULL,
	ID_рейтинга decimal NOT NULL,
	ID_рецепта decimal NOT NULL,
	Сообщение text NOT NULL,
	Дата datetime NOT NULL,
	Оценка bit NOT NULL,
  CONSTRAINT [PK_REVIEW] PRIMARY KEY CLUSTERED
  (
  [ID_отзыва] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [User] (
	ID_пользователя decimal NOT NULL,
	Имя text NOT NULL,
	Фамилия text NOT NULL,
  CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED
  (
  [ID_пользователя] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Composition] (
	ID_состав decimal NOT NULL,
	ID_ингредиента decimal NOT NULL,
	ID_рецепта decimal NOT NULL,
	Количество decimal NOT NULL,
  CONSTRAINT [PK_COMPOSITION] PRIMARY KEY CLUSTERED
  (
  [ID_состав] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Rating] (
	ID_рейтинг decimal NOT NULL,
	ID_пользователя decimal NOT NULL,
	Колво_рецептов decimal NOT NULL,
	Процент_положительных decimal NOT NULL,
	Процент_отрицательных decimal NOT NULL,
  CONSTRAINT [PK_RATING] PRIMARY KEY CLUSTERED
  (
  [ID_рейтинг] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Dish] (
	ID_посуда decimal NOT NULL,
	ID_посуды decimal NOT NULL,
	ID_рецепта decimal NOT NULL,
	Количество decimal NOT NULL,
  CONSTRAINT [PK_DISH] PRIMARY KEY CLUSTERED
  (
  [ID_посуда] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Dishes] (
	ID_посуды decimal NOT NULL,
	Название text NOT NULL,
  CONSTRAINT [PK_DISHES] PRIMARY KEY CLUSTERED
  (
  [ID_посуды] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
ALTER TABLE [Recipe] WITH CHECK ADD CONSTRAINT [Recipe_fk0] FOREIGN KEY ([ID_кухня]) REFERENCES [Cuisine]([ID_кухня])
ON UPDATE CASCADE
GO
ALTER TABLE [Recipe] CHECK CONSTRAINT [Recipe_fk0]
GO
ALTER TABLE [Recipe] WITH CHECK ADD CONSTRAINT [Recipe_fk1] FOREIGN KEY ([ID_категория]) REFERENCES [Category]([ID_категории])
ON UPDATE CASCADE
GO
ALTER TABLE [Recipe] CHECK CONSTRAINT [Recipe_fk1]
GO
ALTER TABLE [Recipe] WITH CHECK ADD CONSTRAINT [Recipe_fk2] FOREIGN KEY ([ID_способ_приготовления]) REFERENCES [Cooking method]([ID_метод_приготовления])
ON UPDATE CASCADE
GO
ALTER TABLE [Recipe] CHECK CONSTRAINT [Recipe_fk2]
GO
ALTER TABLE [Recipe] WITH CHECK ADD CONSTRAINT [Recipe_fk3] FOREIGN KEY ([ID_посуда]) REFERENCES [Dish]([ID_посуда])
ON UPDATE CASCADE
GO
ALTER TABLE [Recipe] CHECK CONSTRAINT [Recipe_fk3]
GO
ALTER TABLE [Recipe] WITH CHECK ADD CONSTRAINT [Recipe_fk4] FOREIGN KEY ([ID_состав]) REFERENCES [Composition]([ID_состав])
ON UPDATE CASCADE
GO
ALTER TABLE [Recipe] CHECK CONSTRAINT [Recipe_fk4]
GO
ALTER TABLE [Recipe] WITH CHECK ADD CONSTRAINT [Recipe_fk5] FOREIGN KEY ([ID_отзыва]) REFERENCES [Review]([ID_отзыва])
ON UPDATE CASCADE
GO
ALTER TABLE [Recipe] CHECK CONSTRAINT [Recipe_fk5]
GO





ALTER TABLE [Review] WITH CHECK ADD CONSTRAINT [Review_fk0] FOREIGN KEY ([ID_рейтинга]) REFERENCES [Rating]([ID_рейтинг])
ON UPDATE CASCADE
GO
ALTER TABLE [Review] CHECK CONSTRAINT [Review_fk0]
GO


ALTER TABLE [Composition] WITH CHECK ADD CONSTRAINT [Composition_fk0] FOREIGN KEY ([ID_ингредиента]) REFERENCES [Ingredient]([ID_ингредиента])
ON UPDATE CASCADE
GO
ALTER TABLE [Composition] CHECK CONSTRAINT [Composition_fk0]
GO

ALTER TABLE [Rating] WITH CHECK ADD CONSTRAINT [Rating_fk0] FOREIGN KEY ([ID_пользователя]) REFERENCES [User]([ID_пользователя])
ON UPDATE CASCADE
GO
ALTER TABLE [Rating] CHECK CONSTRAINT [Rating_fk0]
GO

ALTER TABLE [Dish] WITH CHECK ADD CONSTRAINT [Dish_fk0] FOREIGN KEY ([ID_посуды]) REFERENCES [Dishes]([ID_посуды])
ON UPDATE CASCADE
GO
ALTER TABLE [Dish] CHECK CONSTRAINT [Dish_fk0]
GO
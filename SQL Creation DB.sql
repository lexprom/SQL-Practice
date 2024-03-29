CREATE TABLE [Recipe] (
ID_recipe decimal NOT NULL UNIQUE,
ID_cuisine decimal NOT NULL,
ID_category decimal NOT NULL,
ID_cooking_way decimal NOT NULL,
ID_dish decimal NOT NULL,
ID_composition decimal NOT NULL,
ID_review decimal NOT NULL,
Recipe_name text NOT NULL,
Cost decimal NOT NULL,
CONSTRAINT [PK_RECIPE] PRIMARY KEY CLUSTERED
(
[ID_recipe] ASC
) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Cuisine] (
ID_cuisine decimal NOT NULL,
Cuisine_name text NOT NULL,
CONSTRAINT [PK_CUISINE] PRIMARY KEY CLUSTERED
(
[ID_cuisine] ASC
) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Category] (
ID_categoryy decimal NOT NULL,
Category_name text NOT NULL,
CONSTRAINT [PK_CATEGORY] PRIMARY KEY CLUSTERED
(
[ID_categoryy] ASC
) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Ingredient] (
ID_ingredient decimal NOT NULL,
Name text NOT NULL,
Caloricity decimal NOT NULL,
Price decimal NOT NULL,
CONSTRAINT [PK_INGREDIENT] PRIMARY KEY CLUSTERED
(
[ID_ingredient] ASC
) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Cooking method] (
ID_cooking_method decimal NOT NULL,
Name text NOT NULL,
CONSTRAINT [PK_COOKING METHOD] PRIMARY KEY CLUSTERED
(
[ID_cooking_method] ASC
) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Review] (
ID_review decimal NOT NULL,
ID_raiting decimal NOT NULL,
ID_recipe decimal NOT NULL,
Message text NOT NULL,
Date datetime NOT NULL,
Mark bit NOT NULL,
CONSTRAINT [PK_REVIEW] PRIMARY KEY CLUSTERED
(
[ID_review] ASC
) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [User] (
ID_user decimal NOT NULL,
First_name text NOT NULL,
Last_name text NOT NULL,
CONSTRAINT [PK_USER] PRIMARY KEY CLUSTERED
(
[ID_user] ASC
) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Composition] (
ID_composition decimal NOT NULL,
ID_ingredient decimal NOT NULL,
ID_recipe decimal NOT NULL,
Count decimal NOT NULL,
CONSTRAINT [PK_COMPOSITION] PRIMARY KEY CLUSTERED
(
[ID_composition] ASC
) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Rating] (
ID_raiting decimal NOT NULL,
ID_user decimal NOT NULL,
Recipes_count decimal NOT NULL,
Positive_per decimal NOT NULL,
Negative_per decimal NOT NULL,
CONSTRAINT [PK_RATING] PRIMARY KEY CLUSTERED
(
[ID_raiting] ASC
) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Dish] (
ID_dish decimal NOT NULL,
ID_dishes decimal NOT NULL,
ID_recipe decimal NOT NULL,
Count decimal NOT NULL,
CONSTRAINT [PK_DISH] PRIMARY KEY CLUSTERED
(
[ID_dish] ASC
) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Dishes] (
ID_dishes decimal NOT NULL,
Name text NOT NULL,
CONSTRAINT [PK_DISHES] PRIMARY KEY CLUSTERED
(
[ID_dishes] ASC
) WITH (IGNORE_DUP_KEY = OFF)

)
GO
ALTER TABLE [Recipe] WITH CHECK ADD CONSTRAINT [Recipe_fk0] FOREIGN KEY ([ID_cuisine]) REFERENCES [Cuisine]([ID_cuisine])
ON UPDATE CASCADE
GO
ALTER TABLE [Recipe] CHECK CONSTRAINT [Recipe_fk0]
GO
ALTER TABLE [Recipe] WITH CHECK ADD CONSTRAINT [Recipe_fk1] FOREIGN KEY ([ID_category]) REFERENCES [Category]([ID_categoryy])
ON UPDATE CASCADE
GO
ALTER TABLE [Recipe] CHECK CONSTRAINT [Recipe_fk1]
GO
ALTER TABLE [Recipe] WITH CHECK ADD CONSTRAINT [Recipe_fk2] FOREIGN KEY ([ID_cooking_way]) REFERENCES [Cooking method]([ID_cooking_method])
ON UPDATE CASCADE
GO
ALTER TABLE [Recipe] CHECK CONSTRAINT [Recipe_fk2]
GO
ALTER TABLE [Recipe] WITH CHECK ADD CONSTRAINT [Recipe_fk3] FOREIGN KEY ([ID_dish]) REFERENCES [Dish]([ID_dish])
ON UPDATE CASCADE
GO
ALTER TABLE [Recipe] CHECK CONSTRAINT [Recipe_fk3]
GO
ALTER TABLE [Recipe] WITH CHECK ADD CONSTRAINT [Recipe_fk4] FOREIGN KEY ([ID_composition]) REFERENCES [Composition]([ID_composition])
ON UPDATE CASCADE
GO
ALTER TABLE [Recipe] CHECK CONSTRAINT [Recipe_fk4]
GO
ALTER TABLE [Recipe] WITH CHECK ADD CONSTRAINT [Recipe_fk5] FOREIGN KEY ([ID_review]) REFERENCES [Review]([ID_review])
ON UPDATE CASCADE
GO
ALTER TABLE [Recipe] CHECK CONSTRAINT [Recipe_fk5]
GO





ALTER TABLE [Review] WITH CHECK ADD CONSTRAINT [Review_fk0] FOREIGN KEY ([ID_raiting]) REFERENCES [Rating]([ID_raiting])
ON UPDATE CASCADE
GO
ALTER TABLE [Review] CHECK CONSTRAINT [Review_fk0]
GO


ALTER TABLE [Composition] WITH CHECK ADD CONSTRAINT [Composition_fk0] FOREIGN KEY ([ID_ingredient]) REFERENCES [Ingredient]([ID_ingredient])
ON UPDATE CASCADE
GO
ALTER TABLE [Composition] CHECK CONSTRAINT [Composition_fk0]
GO

ALTER TABLE [Rating] WITH CHECK ADD CONSTRAINT [Rating_fk0] FOREIGN KEY ([ID_user]) REFERENCES [User]([ID_user])
ON UPDATE CASCADE
GO
ALTER TABLE [Rating] CHECK CONSTRAINT [Rating_fk0]
GO

ALTER TABLE [Dish] WITH CHECK ADD CONSTRAINT [Dish_fk0] FOREIGN KEY ([ID_dishes]) REFERENCES [Dishes]([ID_dishes])
ON UPDATE CASCADE
GO
ALTER TABLE [Dish] CHECK CONSTRAINT [Dish_fk0]
GO
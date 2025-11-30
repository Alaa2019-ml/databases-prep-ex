CREATE TABLE recipes (
    recipeId  SERIAL,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (recipeId)
);

CREATE TABLE categories (
    categoryId  SERIAL,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (categoryId)
);


CREATE TABLE ingredients (
    ingredientId  SERIAL,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (ingredientId)
);


CREATE TABLE steps (
    stepId  SERIAL,
    description VARCHAR(300) NOT NULL,
    PRIMARY KEY (stepId)
);


CREATE TABLE recipeCategory (
    recipeId INTEGER,
    categoryId INTEGER,
    FOREIGN KEY (recipeId) REFERENCES recipes(recipeId),
    FOREIGN KEY (categoryId) REFERENCES categories(categoryId),
    CONSTRAINT PK_recipeCategory PRIMARY KEY (recipeId,categoryId)
);



CREATE TABLE recipeIngredients (
    recipeId INTEGER,
    ingredientId INTEGER,
    FOREIGN KEY (recipeId) REFERENCES recipes(recipeId),
    FOREIGN KEY (ingredientId) REFERENCES ingredients(ingredientId),
    CONSTRAINT PK_recipeIngredients PRIMARY KEY (recipeId,ingredientId)
);



CREATE TABLE recipeSteps (
    recipeId INTEGER,
    stepId INTEGER,
    stepOrder INTEGER, 
    FOREIGN KEY (recipeId) REFERENCES recipes(recipeId),
    FOREIGN KEY (stepId) REFERENCES steps(stepId),
    CONSTRAINT PK_recipeSteps PRIMARY KEY (recipeId,stepId)
);

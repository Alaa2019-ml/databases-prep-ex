--  Find all recipes that use rice
SELECT DISTINCT r.name
FROM recipes r
JOIN recipeIngredients ri ON r.recipeId = ri.recipeId
JOIN ingredients i ON ri.ingredientId = i.ingredientId
WHERE i.name = 'Rice';

-- Find all Yemeni recipes
SELECT DISTINCT r.name
FROM recipes r
JOIN recipeCategory rc ON r.recipeId = rc.recipeId
JOIN categories c ON rc.categoryId = c.categoryId
WHERE c.name = 'Yemeni';

-- Find all dishes that include shrimp
SELECT DISTINCT r.name
FROM recipes r
JOIN recipeIngredients ri ON r.recipeId = ri.recipeId
JOIN ingredients i ON ri.ingredientId = i.ingredientId
WHERE i.name = 'Shrimps';

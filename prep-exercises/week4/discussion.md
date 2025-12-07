What made you decide when to embed information? What assumptions did you make?
I chose to embed information because the dataset is small and the amount of data inside each recipe will not grow very large. Ingredients and steps naturally belong to a recipe, and they are almost always retrieved together. Since customers need to see the full recipe at once, embedding makes it faster and avoids unnecessary queries. My assumption is that the data will stay fairly small, stable, and does not need to be shared across multiple documents.

If you were given PostgreSQL and MongoDB as choices to build the recipe database at the beginning, which one would you choose and why?
I would choose MongoDB because the data structure fits a document-based model better. Recipes work well as a single document with embedded ingredients and steps. The dataset is small, the relationships are simple, and embedding improves performance while keeping the design easy to manage.

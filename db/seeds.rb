# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create({
  username: 'Admin',
  email: 'admin@admin.com',
  password: 'password',
  image_url: 'https://i.imgur.com/HZPz2tu.png',
  location: 'NYC',
  description: 'I am the almighty Admin; trespassers beware!'
})

userTwo = User.create({
  username: 'Onuris',
  email: 'onuris@onuris.com',
  password: 'password2',
  image_url: 'https://i.pinimg.com/originals/73/3e/cb/733ecb578c2789700959598d1b4c74cc.png',
  location: 'NYC',
  description: 'Vegans for the win!'
})

userThree = User.create({
  username: 'Kenpachi',
  email: 'kenpachi@kenpachi.com',
  password: 'password3',
  image_url: 'https://i.skyrock.net/4996/84594996/pics/3103296637_1_3_uP9haFwQ.jpg',
  location: 'NYC',
  description: 'Plants plants plants!'
})

recipe = Recipe.create({
  image_url: 'https://www.connoisseurusveg.com/wp-content/uploads/2019/01/vegan-banana-bread-1-of-1.jpg',
  title: 'Banana Bread',
  description: 'The great thing about veganizing banana bread is that you don’t have to fuss over figuring out the right egg substitute. Bananas do the job!',
  ingredients: '3 medium overripe bananas
  1/3 cup organic granulated sugar
  1/3 cup organic brown sugar
  1/3 cup canola oil (or your favorite baking oil)
  2 teaspoons vanilla extract
  2 cups all-purpose flour
  1 teaspoon baking soda
  1 teaspoon ground cinnamon
  1 teaspoon salt
  1 cup chopped walnuts',
  prep: 'Preheat the oven to 350; Peel the bananas and place them into a large mixing bowl. Mash them well with a fork or potato masher; d sugar, brown sugar, oil, and vanilla to the bowl. Stir until well-mixed; Spoon the batter into the prepared loaf pan and smooth out the top with the back of a spoon; Bake for 50 minutes, or until a toothpick inserted into the center comes out clean.',
  user_id: 1
})

recipeTwo = Recipe.create({
  image_url: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/cucumber-melon-gazpacho-1563811856.jpg',
  title: 'Cucumber-Melon Soup',
  description: 'Looking to cool off from the lingering summer heat? This no-cook soup is refreshing and bright, and it comes together entirely in your blender.',
  ingredients: '1 lb. English cucumbers, cut into pieces, plus more for serving
  1/2 small honeydew melon, seeded and rind removed (about 1 pound), cut into pieces
  1/2 c. flat-leaf parsley
  3 tbsp. red wine vinegar 
  1 tbsp. fresh lime juice
  2 tsp. sugar
  Kosher salt and pepper
  Watercress, for serving',
  prep: 'In blender, puree cucumbers, melon, parsley, vinegar, lime juice, sugar, and 1/2 teaspoon salt until smooth.
  Refrigerate at least 1 hour and up to overnight. Serve topped with watercress, sliced cucumber, and cracked pepper.',
  user_id: 1
})

recipeThree = Recipe.create({
  image_url: 'https://hips.hearstapps.com/ghk.h-cdn.co/assets/16/17/3200x1600/landscape-1461703583-ghk-0516-grilled-asparagus-and-shiitake-tacos.jpg?resize=980:*',
  title: 'Grilled Asparagus and Shiitake Tacos',
  description: 'For a fresh spin on Mexican, try these stellar vegetarian tacos.',
  ingredients: '3 tbsp. canola oil
  4 garlic cloves, crushed with press
  1 tsp. ground chipotle chile
  1/2 tsp. Kosher salt
  8 oz. shiitake mushrooms, stems discarded
  1 bunch green onions, trimmed
  8 corn tortillas, warmed
  1 c. homemade or prepared guacamole
  Lime wedges
  cilantro sprigs
  Hot sauce, for serving',
  prep: 'Heat grill on medium. In a large baking dish, combine oil, garlic, chipotle, and salt. Add asparagus, shiitakes, and green onions; toss to coat. Grill asparagus until tender and lightly charred, turning occasionally; 5 to 6 minutes. Grill shiitakes and green onions until lightly charred, turning occasionally; 4 to 5 minutes. Transfer vegetables to cutting board.
  Cut asparagus and green onions into 2" lengths and slice shiitakes. Serve with corn tortillas, guacamole, lime wedges, cilantro, and hot sauce.',
  user_id: 1
})

recipe_comment = RecipeComment.create({
  comment: '',
  user_id: 1,
  recipe_id: 1
})
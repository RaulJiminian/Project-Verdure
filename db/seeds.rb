# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create({
  username: 'Tom',
  email: 'admin@admin.com',
  password: 'password',
  image_url: 'https://i.imgur.com/Pi6ATGN.png',
  location: 'NYC',
  description: 'I am the almighty Admin; trespassers beware!'
})

userTwo = User.create({
  username: 'Onuris',
  email: 'onuris@onuris.com',
  password: 'password',
  image_url: 'https://i.pinimg.com/originals/73/3e/cb/733ecb578c2789700959598d1b4c74cc.png',
  location: 'NYC',
  description: 'Vegans for the win!'
})

userThree = User.create({
  username: 'Kenpachi',
  email: 'kenpachi@kenpachi.com',
  password: 'password',
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
  user_id: 2
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
  user_id: 3
})

recipeFour = Recipe.create({
  image_url: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/roasted-butternut-squash-puree-ghk-1119-1570802636.jpg?crop=1xw:1xh;center,top&resize=980:*',
  title: 'Creamy Roasted Squash Puree',
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

recipeFive = Recipe.create({
  image_url: 'https://hips.hearstapps.com/ghk.h-cdn.co/assets/16/43/1477592728-ghk060116ykmushroom-quinoa-burger.jpg?crop=0.883xw:0.884xh;0.0846xw,0.0150xh&resize=980:*',
  title: 'Mushroom-Quinoa Burger',
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
  user_id: 2
})

recipeSix = Recipe.create({
  image_url: 'https://hips.hearstapps.com/ghk.h-cdn.co/assets/18/11/1521213518-tofu-pad-thai-ghk.jpg?crop=1.0xw:1xh;center,top&resize=980:*',
  title: 'Tofu Pad Thai',
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
  user_id: 3
})

recipeSeven = Recipe.create({
  image_url: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/spiced-fresht-tomato-soup-vegan-recipes-1544715007.jpg?crop=1xw:1xh;center,top&resize=980:*',
  title: 'Spiced Tomato Soup with Pita',
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

recipeEight = Recipe.create({
  image_url: 'https://hips.hearstapps.com/ghk.h-cdn.co/assets/16/37/1473707479-ghk090116yk-bbq-chickpea-cauliflower-flatbreads.jpg?crop=0.44440465532676815xw:1xh;center,top&resize=980:*',
  title: 'BBQ Chickpea and Cauliflower',
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
  user_id: 2
})

recipeNine = Recipe.create({
  image_url: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/tahini-lemon-quinoa-asparagus-ribbons-ghk-0518-1524172330.jpg?crop=1xw:1xh;center,top&resize=980:*',
  title: 'Tahini-Lemon Quinoa',
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
  user_id: 3
})

recipeTen = Recipe.create({
  image_url: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/1484157602-febghk-warming-winter-squash-lentil-stew-mike-garten-2-1525810988.jpg?crop=0.822xw:0.823xh;0.0777xw,0.0415xh&resize=980:*',
  title: 'Winter Squash Lentil Stew',
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

recipeElevan = Recipe.create({
  image_url: 'https://hips.hearstapps.com/ghk.h-cdn.co/assets/18/06/1517948767-resized-tempeh-bowl.jpg?crop=1.0xw:1xh;center,top&resize=980:*',
  title: 'Roasted Veggies and Tempeh Bowl',
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
  user_id: 2
})

recipeTwelve = Recipe.create({
  image_url: 'https://hips.hearstapps.com/ghk.h-cdn.co/assets/16/35/1472483875-nachos.jpg?crop=1.0xw:1xh;center,top&resize=980:*',
  title: 'Crispy Potatoes With Nacho Sauce',
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
  user_id: 3
})

recipeThirteen = Recipe.create({
  image_url: 'https://hips.hearstapps.com/ghk.h-cdn.co/assets/18/06/1517948690-resized-zucchini.jpg?crop=1.0xw:1xh;center,top&resize=980:*',
  title: 'Asian Sesame Zucchini Noodles',
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

recipeFourteen = Recipe.create({
  image_url: 'https://hips.hearstapps.com/ghk.h-cdn.co/assets/17/30/1500912651-danielle-occhiogross-crispy-tofu-bowl-0817.jpg?crop=1xw:0.99975xh;center,top&resize=980:*',
  title: 'Crispy Tofu Bowl',
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
  user_id: 2
})

recipeFifteen = Recipe.create({
  image_url: 'https://hips.hearstapps.com/ghk.h-cdn.co/assets/18/06/1517948799-resized-rainbow.jpg?crop=0.979xw:0.980xh;0.0207xw,0&resize=980:*',
  title: 'Rainbow Veggie Kabobs',
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
  user_id: 3
})

recipeSixteen = Recipe.create({
  image_url: 'https://hips.hearstapps.com/ghk.h-cdn.co/assets/17/19/1494268374-mike-garten-summer-pesto-pasta-0617.jpg?crop=1xw:0.99975xh;center,top&resize=980:*',
  title: 'Pesto Pasta',
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

recipeSeventeen = Recipe.create({
  image_url: 'https://hips.hearstapps.com/ghk.h-cdn.co/assets/16/35/1472763355-1472484054-veganpasta.jpg?crop=1.0xw:1xh;center,top&resize=980:*',
  title: 'Creamy Linguine With Wild Mushrooms',
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
  user_id: 2
})

recipeEighteen = Recipe.create({
  image_url: 'https://hips.hearstapps.com/ghk.h-cdn.co/assets/16/35/1472483702-panzanella.jpg?crop=0.827xw:0.828xh;0.150xw,0.101xh&resize=980:*',
  title: 'Garden Greens and Pumpernickel',
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
  user_id: 3
})

recipeNineteen = Recipe.create({
  image_url: 'https://hips.hearstapps.com/ghk.h-cdn.co/assets/17/11/1489698268-danielle-occhiogrosso-beet-mushroom-avo-salad-0417.jpg?crop=1.0xw:1xh;center,top&resize=980:*',
  title: 'Beet, Mushroom, and Avocado',
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

recipeTwenty = Recipe.create({
  image_url: 'https://hips.hearstapps.com/ghk.h-cdn.co/assets/16/35/1472743119-ghk100116yk-mushroom-orzo-soup.jpg?crop=0.779xw:0.864xh;0.134xw,0.136xh&resize=980:*',
  title: 'Supergreen Mushroom and Orzo',
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
  user_id: 2
})

recipeTwentyOne = Recipe.create({
  image_url: 'https://hips.hearstapps.com/ghk.h-cdn.co/assets/17/01/1483547957-ghk010117ykpeanuttyedamameandnoodlesalad.jpg?crop=0.733xw:0.880xh;0.102xw,0.101xh&resize=980:*',
  title: 'Peanutty Edamame and Noodle',
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
  user_id: 3
})

recipeTwentyTwo = Recipe.create({
  image_url: 'https://hips.hearstapps.com/ghk.h-cdn.co/assets/17/02/1484149670-febghk-smoky-vegan-black-bean-soup-mike-garten.jpg?crop=0.822xw:0.823xh;0,0.00575xh&resize=980:*',
  title: 'Smoky Black Bean Soup',
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

recipeTwentyThree = Recipe.create({
  image_url: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/1472739653-ghk100116-granola-bars-1525810618.jpg?crop=0.810xw:0.810xh;0.0604xw,0.0415xh&resize=980:*',
  title: 'Choco-Cherry Bars',
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
  user_id: 2
})

recipeTwentyFour = Recipe.create({
  image_url: 'https://hips.hearstapps.com/ghk.h-cdn.co/assets/16/35/1472484291-mole.jpg?crop=0.708xw:0.709xh;0.128xw,0.182xh&resize=980:*',
  title: 'Roasted Squash and Pumpkin Seed',
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
  user_id: 3
})

recipeTwentyFive = Recipe.create({
  image_url: 'https://hips.hearstapps.com/ghk.h-cdn.co/assets/cm/15/11/54ff2da21c322-bulgur-pilaf-garbanzos-dried-apricots-d055mh-xln.jpg?crop=0.771xw:1.00xh;0.172xw,0&resize=980:*',
  title: 'Bulgur Pilaf Qith Garbanzos',
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

recipeTwentySix = Recipe.create({
  image_url: 'https://hips.hearstapps.com/ghk.h-cdn.co/assets/18/06/1517948734-resized-avocado-bowl.jpg?crop=1.0xw:1xh;center,top&resize=768:*',
  title: 'Avocado and Lime Bean',
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
  user_id: 2
})

recipeTwentySeven = Recipe.create({
  image_url: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/spiralized-zucchini-carrot-salad-vegan-recipes-1544719430.jpg?crop=1xw:1xh;center,top&resize=768:*',
  title: 'Spiralized Zucchini and Carrot',
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
  user_id: 3
})

recipeTwentyEight = Recipe.create({
  image_url: 'https://hips.hearstapps.com/ghk.h-cdn.co/assets/18/06/1517949809-resized-brussels-sprouts.jpg?crop=1.0xw:1xh;center,top&resize=768:*',
  title: 'Kung Pao Brussels Sprouts',
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

recipeTwentyNine = Recipe.create({
  image_url: 'https://hips.hearstapps.com/ghk.h-cdn.co/assets/18/06/1517944906-gallery-1487005182-delish-churro-banana-bites-pin-1.jpg?crop=0.9986111111111111xw:1xh;center,top&resize=768:*',
  title: 'Churro Banana Bites',
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
  user_id: 2
})

recipeThirty = Recipe.create({
  image_url: 'https://hips.hearstapps.com/ghk.h-cdn.co/assets/18/06/1517945254-mean-green-detox-salad-half-baked-harvest.jpg?crop=1.0xw:1xh;center,top&resize=768:*',
  title: 'Mean Green Detox Salad',
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
  user_id: 3
})

recipe_comment = RecipeComment.create({
  comment: '',
  user_id: 1,
  recipe_id: 1
})
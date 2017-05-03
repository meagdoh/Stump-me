# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Baker.destroy_all
Recipe.destroy_all

# create your "parent" objects as usual

marie = Baker.create(name:"Marie", img_url:"http://www.pbs.org/food/wp-content/blogs.dir/2/files/2016/06/GBBS-Bio-Marie.jpg", bio: "Marie and her husband Colin can finally live the good life after retiring 6 years ago from working for the ministry of defence, living round the world and running BnB’s. Today Marie spends her days playing golf, attending Zumba classes, helping at local charity fundraisers and baking. Her children and grandchildren now live in England, but she regularly visits and the first thing she does is get the eggs and flour out and make the kids ‘proper’ packed lunches.")
tamal = Baker.create(name:"Tamal", img_url: "http://www.pbs.org/food/wp-content/blogs.dir/2/files/2016/06/GBBS-Bio-Tamal.jpg", bio: "Tamal grew up wanting to be a vet but as he got to age 16, realised he was scared of animals and decided to become a doctor as human’s are less likely to bite him. He qualified as a doctor five years ago and after working at a hospital in Brighton, made the move to Manchester to work in anaesthetics.")
marie2 = Baker.create(name:"Marie", img_url:"http://www.pbs.org/food/wp-content/blogs.dir/2/files/2016/06/GBBS-Bio-Marie.jpg", bio: "Marie and her husband Colin can finally live the good life after retiring 6 years ago from working for the ministry of defence, living round the world and running BnB’s. Today Marie spends her days playing golf, attending Zumba classes, helping at local charity fundraisers and baking. Her children and grandchildren now live in England, but she regularly visits and the first thing she does is get the eggs and flour out and make the kids ‘proper’ packed lunches.")
tamal2 = Baker.create(name:"Tamal", img_url: "http://www.pbs.org/food/wp-content/blogs.dir/2/files/2016/06/GBBS-Bio-Tamal.jpg", bio: "Tamal grew up wanting to be a vet but as he got to age 16, realised he was scared of animals and decided to become a doctor as human’s are less likely to bite him. He qualified as a doctor five years ago and after working at a hospital in Brighton, made the move to Manchester to work in anaesthetics.")
marie3 = Baker.create(name:"Marie", img_url:"http://www.pbs.org/food/wp-content/blogs.dir/2/files/2016/06/GBBS-Bio-Marie.jpg", bio: "Marie and her husband Colin can finally live the good life after retiring 6 years ago from working for the ministry of defence, living round the world and running BnB’s. Today Marie spends her days playing golf, attending Zumba classes, helping at local charity fundraisers and baking. Her children and grandchildren now live in England, but she regularly visits and the first thing she does is get the eggs and flour out and make the kids ‘proper’ packed lunches.")
tamal3 = Baker.create(name:"Tamal", img_url: "http://www.pbs.org/food/wp-content/blogs.dir/2/files/2016/06/GBBS-Bio-Tamal.jpg", bio: "Tamal grew up wanting to be a vet but as he got to age 16, realised he was scared of animals and decided to become a doctor as human’s are less likely to bite him. He qualified as a doctor five years ago and after working at a hospital in Brighton, made the move to Manchester to work in anaesthetics.")


# now that the parent exists in the DB
# we can call '.create' on the relation
marie.recipes.create([
    {name: "Mocha and Tutti Frutti Cream Horns",
      ingredients: "150g (5½oz) strong white bread flour, chilled, plus extra for dusting",
      instructions: "Flatten the butter into a rectangle, about 16x7½in, by hitting it with a rolling pin (you may find it easier if you sandwich the butter between 2 sheets of cling film). Return to the fridge for an hour to harden the butter again.",
      category: "puff pastry"
    }
    ])

tamal.recipes.create([
    {name: "Mocha and Tutti Frutti Cream Horns",
      ingredients: "150g (5½oz) strong white bread flour, chilled, plus extra for dusting",
      instructions: "Flatten the butter into a rectangle, about 16x7½in, by hitting it with a rolling pin (you may find it easier if you sandwich the butter between 2 sheets of cling film). Return to the fridge for an hour to harden the butter again.",
      category: "puff pastry"
    }
    ])

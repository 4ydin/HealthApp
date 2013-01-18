namespace :db do
  desc "Fill compact tables with sample data"
  task data: :environment do
    
    [Food].each(&:delete_all)
    [Tip].each(&:delete_all)

    Food.create!(
        name: "Apple Pie (1 Piece)",
        calory: 405,
        protein: 3,
        carbohydrate: 60,
        )

    Food.create!(
        name: "Omelet (1 Egg)", 
        calory: 100,
        protein: 7,
        carbohydrate: 1,
        )
    Food.create!(
        name: "Croissant",
        calory: 235,
        protein: 5,
        carbohydrate: 27,    
        )
    Food.create!(
        name: "Rice, White, Cooked   (1 Cup)",
        calory: 225,
        protein: 4,
        carbohydrate: 50,
        )
    Food.create!(
        name: "Coca cola Reguler (350 ml)",
        calory: 160,
        protein: 0,
        carbohydrate: 41,
        )
    Food.create!(
        name: "Yoghurt Low-Fat Plain (240 ml)",
        calory: 145,
        protein: 12,
        carbohydrate: 16,
        )
    Food.create!(
        name: "Lemon Juice (1 Cup)",
        calory: 60,
        protein: 1,
        carbohydrate: 21,
        )
    Food.create!(
        name: "Chicken, Fried, FLour, Breast",
        calory: 220,
        protein: 31,
        carbohydrate: 2,
        )
    Food.create!(
        name: "Chocolate Milk, Regular (1 Cup)",
        calory: 210,
        protein: 8,
        carbohydrate: 26,
        )
    Food.create!(
        name: "Hamburger, Regular (1 Piece)",
        calory: 245,
        protein: 12,
        carbohydrate: 28,
        )

     
    Tip.create!(
        name: "Water therapy",
        context: "The colder the water you drink, the more calories you burn, since your body expends more energy warming up the water. If you have 8 glasses (64 oz) of ice-cold water in a day, you'll burn 70 more calories than if you drank 8 glasses of a body temperature beverage.",
        )
    Tip.create!(
        name: "Coffee as an antioxidants",
        context: "Coffee contains hundreds of compounds that may help with research into some of the most prevalent diseases of our time and one of the most exciting discoveries is the significant presence of antioxidants within the coffee beans.
        Antioxidants are proven to help mitigate the chances of heart diseases and cancer.",
        ) 
    Tip.create!(
        name: "Black beans",
        context: "A cup of black beans packs a whopping 15 grams of satisfying protein and doesn't contain any of the saturated fat found in other protein sources, like red meat.",
        ) 
    Tip.create!(
        name: "Avocado",
        context: "Stick to a quarter or a half of an avocado and watch that belly fat melt away. The creamy fruit is also packed with fiber and protein",
        )
    Tip.create!(
        name: "Blueberries",
        context: "Best known for their anti-aging effects, blueberries, while tiny, are a powerful figure-friendly eat: A 1-cup serving sets you back only 80 calories, and helps you feel full with 4 grams of fiber.",
        )



  end
end
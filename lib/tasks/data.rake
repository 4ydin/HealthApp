namespace :db do
  desc "Fill compact tables with sample data"
  task data: :environment do
    
    [Food].each(&:delete_all)
    
    
     

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
  end
end
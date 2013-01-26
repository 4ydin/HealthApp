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
        name: "Green Tea",
        context: "Green tea is very famous to be a very great way to lose pounds quickly. Green tea is also rich in powerful antioxidants that can have great benefits for everybody. The green tea has special combination that attack fat and obviously is great to lose weight. Simply replace your coffee with green tea, but appearently not everyone drink coffee regularly. So, basicly just replace your other caffeinated beverages. You should drink 3-5 cups of green tea everyday. But, remember the green tea is only a part of a whole dieting plan, you should combine green tea with healthy diet and exercise regularly. P.s : Don't throw away the the used green tea leaves. Use them as a face mask. it helps you reduce the redness.",
        )
    Tip.create!(
        name: "Water",
        context: "Drink 2 liter water everyday! But for you who want to lose weight, it is better to drink cold water every day instead body temperatured water. Losing weight by drinking cold water is one of the easiest diet out there. Cold water foces your body to work, because it takes energy to heaten up the cold water to body temperature before it's used. Drink 8 glasses of cold water everyday and you'll see how amazing this thing works.",
        ) 
    Tip.create!(
        name: "Lemon",
        context: "Lemon contains a lot of vitamin C. The Vitamin C found in lemon helps in amplifying fat oxidation. Just add lemon to your water can make a huge difference. It cleans your body from toxin and impurities and repairs function in the body.",
        ) 
    Tip.create!(
        name: "Oatmel",
        context: "Oatmeal has a lot of benefits. It has high levels of fiber, low levels of fat, and high levels of protein. One cup of Oatmeal is only about 130 calories. It also helps to remove your bad cholesterol. Oatmeal has unique fiber, called beta-glucan. It effects your cholesterol levels. You can cook it whatever you want. You can cook it with milk or just water. You can add some fresh fruits in the end. Or change the milk/water with your favourite juice.",
        )
    Tip.create!(
        name: "Blueberry",
        context: "Blueberry is one of the richest source of antioxidants. The antioxidants helps to neutralize free-radical which can lead to cancer and other age related diseases. Without antioxidants, we would be prone to numerous infections and diseases. That's why blueberry is really good for your health. Blueberry antioxidants are also thought to delay aging by their naturally cleansing properties in the body. You can find blueberry almost in every store you meet, they are available almost year round and you can just combine it with everything. They are good with salad, you can make home made blueberry jam, you can also make blueberry muffin, and of course blueberries are delicious and healthy snack.",
        )




  end
end
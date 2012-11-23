class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :calory
      t.integer :protein
      t.integer :carbohydrate

      t.timestamps
    end
  end
end

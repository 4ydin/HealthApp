class CreateDailies < ActiveRecord::Migration
  def change
    create_table :dailies do |t|
      t.integer :total
      t.string :content

      t.timestamps
    end
  end
end

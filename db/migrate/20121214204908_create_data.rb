class CreateData < ActiveRecord::Migration
  def change
    create_table :data do |t|
      t.integer :weight
      t.integer :height

      t.timestamps
    end
  end
end

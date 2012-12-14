class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :weight
      t.integer :height

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.date :birth_date
      t.string :email
      t.string :password
      t.string :password_confirmartion
      t.integer :height
      t.integer :weight

      t.timestamps
    end
  end
end

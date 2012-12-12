class RemoveNameBirthDateFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :name
    remove_column :users, :birth_date
  end

  def down
    add_column :users, :birth_date, :timestamp
    add_column :users, :name, :string
  end
end

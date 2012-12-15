class RemoveNameAndBirthDateFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :name
    remove_column :users, :birth_date
  end

  def down
    add_column :users, :birth_date, :date
    add_column :users, :name, :string
  end
end

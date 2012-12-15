class AddNameAndBirthDateToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :name, :string
    add_column :profiles, :birth_date, :date
  end
end

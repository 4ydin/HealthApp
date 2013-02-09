class RemoveGenderFromProfile < ActiveRecord::Migration
  def up
    remove_column :profiles, :gender
  end

  def down
    add_column :profiles, :gender, :string
  end
end

class RemoveCalculatedAtFromDaily < ActiveRecord::Migration
  def up
    remove_column :dailies, :calculated_at
  end

  def down
    add_column :dailies, :calculated_at, :datetime
  end
end

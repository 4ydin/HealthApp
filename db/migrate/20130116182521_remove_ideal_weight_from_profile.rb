class RemoveIdealWeightFromProfile < ActiveRecord::Migration
  def up
    remove_column :profiles, :ideal_weight
  end

  def down
    add_column :profiles, :ideal_weight, :integer
  end
end

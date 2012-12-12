class RemoveWeightFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :weight
  end

  def down
    add_column :users, :weight, :int
  end
end

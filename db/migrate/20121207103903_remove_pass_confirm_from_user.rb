class RemovePassConfirmFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :pass_confirm
  end

  def down
    add_column :users, :pass_confirm, :string
  end
end

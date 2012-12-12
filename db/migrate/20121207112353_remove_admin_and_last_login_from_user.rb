class RemoveAdminAndLastLoginFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :admin
    remove_column :users, :last_login
  end

  def down
    add_column :users, :last_login, :timestamp
    add_column :users, :admin, :boolean
  end
end

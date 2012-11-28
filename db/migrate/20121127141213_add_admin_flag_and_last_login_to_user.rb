class AddAdminFlagAndLastLoginToUser < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, :default => false
    add_column :users, :last_login, :timestamp
  end
end

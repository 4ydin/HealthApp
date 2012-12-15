class AddPasswordDigestAndPersistenceTokenToUser < ActiveRecord::Migration
  def change
    add_column :users, :password_digest, :string
    add_column :users, :persistence_token, :string
  end
end

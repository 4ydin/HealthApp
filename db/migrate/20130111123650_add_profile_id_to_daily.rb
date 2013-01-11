class AddProfileIdToDaily < ActiveRecord::Migration
  def change
    add_column :dailies, :profile_id, :integer
  end
end

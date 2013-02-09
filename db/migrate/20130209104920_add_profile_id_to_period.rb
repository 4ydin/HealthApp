class AddProfileIdToPeriod < ActiveRecord::Migration
  def change
    add_column :periods, :profile_id, :integer
  end
end

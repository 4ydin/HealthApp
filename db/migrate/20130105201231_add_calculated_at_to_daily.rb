class AddCalculatedAtToDaily < ActiveRecord::Migration
  def change
    add_column :dailies, :calculated_at, :datetime
  end
end

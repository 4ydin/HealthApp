class AddCalculatedAt2ToDaily < ActiveRecord::Migration
  def change
    add_column :dailies, :calculated_at, :date
  end
end

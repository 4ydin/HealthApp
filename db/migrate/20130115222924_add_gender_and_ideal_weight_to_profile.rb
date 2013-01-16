class AddGenderAndIdealWeightToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :gender, :string
    add_column :profiles, :ideal_weight, :integer
  end
end

class DropDataTable < ActiveRecord::Migration
  def up
  	drop_table :data
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end

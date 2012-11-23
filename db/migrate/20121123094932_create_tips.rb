class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :name
      t.text :context

      t.timestamps
    end
  end
end

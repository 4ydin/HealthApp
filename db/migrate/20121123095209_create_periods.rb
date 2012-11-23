class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.date :started_at
      t.at :finished
      t.integer :duration

      t.timestamps
    end
  end
end

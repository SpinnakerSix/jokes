class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :item_id
      t.integer :up
      t.integer :down

      t.timestamps
    end
  end
end

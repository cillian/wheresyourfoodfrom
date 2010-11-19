class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.integer :food_id
      t.integer :brand_id
      t.integer :consumer_id
      t.integer :producer_id

      t.timestamps
    end
  end

  def self.down
    drop_table :entries
  end
end

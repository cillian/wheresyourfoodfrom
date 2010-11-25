class AddConsumptionTypeToFoods < ActiveRecord::Migration
  def self.up
    add_column :foods, :consumption_type, :string
    Food.reset_column_information
    Food.update_all('consumption_type = "food"')
  end

  def self.down
    remove_column :foods, :consumption_type
  end
end

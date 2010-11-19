class CreateFlags < ActiveRecord::Migration
  def self.up
    create_table :flags do |t|
      t.integer :entry_id
      t.string :encrypted_session_id

      t.timestamps
    end
  end

  def self.down
    drop_table :flags
  end
end

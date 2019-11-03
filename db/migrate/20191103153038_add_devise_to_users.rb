class AddDeviseToUsers < ActiveRecord::Migration[5.2]
  def self.up
    change_table :users do |t|
      t.string :username, null: false      
    end

    add_index :users, :username, unique: true
  end

  def self.down
    remove_index :users, :username
    remove_column :users, :username
  end
end

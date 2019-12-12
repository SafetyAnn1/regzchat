class AddBioToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :biography, :string
    add_column :users, :address, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip, :string
  end
end

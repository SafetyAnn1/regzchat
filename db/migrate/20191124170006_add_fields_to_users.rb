class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :professional_title, :string
    add_column :users, :phone, :string
  end
end

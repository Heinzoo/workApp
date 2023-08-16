class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :photo, :string
    add_column :users, :ocupation, :string
    add_column :users, :age, :string
    add_column :users, :description, :text
  end
end

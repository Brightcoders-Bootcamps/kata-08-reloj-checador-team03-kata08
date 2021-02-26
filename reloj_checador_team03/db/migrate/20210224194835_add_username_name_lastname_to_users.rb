class AddUsernameNameLastnameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_column :users, :name, :string
    add_column :users, :lastname, :string
    add_index :users, :username, unique: true
  end
end

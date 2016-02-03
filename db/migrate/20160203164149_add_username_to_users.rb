class AddUsernameToUsers < ActiveRecord::Migration
  def change # anything inside this method, is translated to SQL code and modified the datbase (Currently, SQLite)
    add_column :users, :username, :string # add a new column to table "users", called "username" and of type "string"
    add_index :users, :username, unique: true # first, index usernames for quick lookup, second, ensure username are always unique
    
  end
end

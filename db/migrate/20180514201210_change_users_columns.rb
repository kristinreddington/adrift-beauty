class ChangeUsersColumns < ActiveRecord::Migration
  def change
    remove_column :users, :email, :string
    add_column :users, :name, :string 
  end
end

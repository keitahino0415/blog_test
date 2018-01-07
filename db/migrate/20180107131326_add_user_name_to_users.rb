class AddUserNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :User_Name, :string
  end
end

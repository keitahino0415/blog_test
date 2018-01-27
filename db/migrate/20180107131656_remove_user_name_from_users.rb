class RemoveUserNameFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :User_Name, :string
  end
end

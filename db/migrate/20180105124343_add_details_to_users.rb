class AddDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :password, :string
    add_column :users, :password__confirmation, :string
  end
end

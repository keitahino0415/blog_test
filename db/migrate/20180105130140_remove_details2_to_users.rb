class RemoveDetails2ToUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :password_confirmation, :crypted_password, :string
  end
end

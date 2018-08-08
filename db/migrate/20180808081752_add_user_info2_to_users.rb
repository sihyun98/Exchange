class AddUserInfo2ToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nationality, :string
    add_column :users, :name, :string
  end
end

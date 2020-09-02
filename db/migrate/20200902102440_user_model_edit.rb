class UserModelEdit < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :title, :string
    add_column :users, :company, :string
    add_column :users, :phone_number, :string
    add_column :users, :profile_image, :string
  end
end

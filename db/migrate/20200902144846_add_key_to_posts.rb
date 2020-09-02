class AddKeyToPosts < ActiveRecord::Migration[6.0]
  def change
    add_reference :posts, :projects, foreign_key: true
    add_reference :posts, :users, foreign_key: true
  end
end

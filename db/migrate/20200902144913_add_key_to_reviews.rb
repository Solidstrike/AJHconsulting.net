class AddKeyToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :users, foreign_key: true
    add_reference :reviews, :projects, foreign_key: true
  end
end

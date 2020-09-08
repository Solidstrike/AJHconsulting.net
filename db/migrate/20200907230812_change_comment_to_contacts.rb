class ChangeCommentToContacts < ActiveRecord::Migration[6.0]
  def change
    change_column :contacts, :comment, :text
  end
end

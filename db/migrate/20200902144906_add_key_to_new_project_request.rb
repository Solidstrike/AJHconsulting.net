class AddKeyToNewProjectRequest < ActiveRecord::Migration[6.0]
  def change
    add_reference :new_project_requests, :projects, foreign_key: true
    add_reference :new_project_requests, :users, foreign_key: true
  end
end

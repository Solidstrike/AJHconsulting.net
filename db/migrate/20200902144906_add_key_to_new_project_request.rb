class AddKeyToNewProjectRequest < ActiveRecord::Migration[6.0]
  def change
    add_reference :new_project_requests, :project, null: false, foreign_key: true
    add_reference :new_project_requests, :user, null: false, foreign_key: true
  end
end

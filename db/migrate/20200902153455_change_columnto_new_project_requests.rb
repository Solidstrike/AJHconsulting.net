class ChangeColumntoNewProjectRequests < ActiveRecord::Migration[6.0]
  def change
    change_column :new_project_requests, :status, :string, default: "pending"
    end
end

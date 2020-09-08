class AddPayTypeToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :pay_type, :string
    end
end

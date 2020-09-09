class AddCityToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :city, :string
  end
end

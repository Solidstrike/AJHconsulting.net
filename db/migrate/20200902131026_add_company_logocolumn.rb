class AddCompanyLogocolumn < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :company_logo, :string
  end
end

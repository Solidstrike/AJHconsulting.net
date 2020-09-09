class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :company
      t.string :url
      t.string :specialty
      t.string :employment_type
      t.string :headline
      t.text :company_description
      t.text :job_description
      t.date :starts_at
      t.date :ends_at
      t.float :lat
      t.float :lng
      t.string :street
      t.integer :house_number
      t.string :house_number_additional
      t.string :postcode
      t.string :country
      t.float :salary
      t.string :image
      t.string :image_company_logo

      t.timestamps
    end
  end
end

class CreateInvoces < ActiveRecord::Migration[6.0]
  def change
    create_table :invoces do |t|
      t.references :user, null: false, foreign_key: true
      t.string :number
      t.date :billing_date
      t.date :payment_date
      t.integer :tax
      t.float :total
      t.string :your_references

      t.timestamps
    end
  end
end

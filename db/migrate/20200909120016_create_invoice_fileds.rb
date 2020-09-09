class CreateInvoiceFileds < ActiveRecord::Migration[6.0]
  def change
    create_table :invoice_fileds do |t|
      t.daterange :date_range
      t.text :description
      t.float :hours
      t.float :rate
      t.float :total

      t.timestamps
    end
  end
end

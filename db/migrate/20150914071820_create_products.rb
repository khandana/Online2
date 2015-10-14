class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :description
      t.string :price
      t.string :catagory
      t.references :order_line, index: true

      t.timestamps null: false
    end
    add_foreign_key :products, :order_lines
  end
end

class CreateOrderLines < ActiveRecord::Migration
  def change
    create_table :order_lines do |t|
      t.string :quantity
      t.string :price
      t.string :discount
      t.references :order, index: true

      t.timestamps null: false
    end
    add_foreign_key :order_lines, :orders
  end
end

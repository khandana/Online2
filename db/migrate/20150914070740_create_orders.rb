class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :order_date
      t.string :total_amount
      t.references :customer, index: true

      t.timestamps null: false
    end
    add_foreign_key :orders, :customers
  end
end

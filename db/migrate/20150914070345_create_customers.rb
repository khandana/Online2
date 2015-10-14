class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :phone_no
      t.date :reg_date
      t.string :email

      t.timestamps null: false
    end
  end
end

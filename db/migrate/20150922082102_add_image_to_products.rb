class AddImageToProducts < ActiveRecord::Migration
  def change
    add_column :products, :Image, :string
  end
end

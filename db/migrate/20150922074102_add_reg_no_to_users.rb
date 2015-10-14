class AddRegNoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :reg_no, :string
  end
end

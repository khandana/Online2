class Product < ActiveRecord::Base
  belongs_to :order_line
	belongs_to :catagories
end

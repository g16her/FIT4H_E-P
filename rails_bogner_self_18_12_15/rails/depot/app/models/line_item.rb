class LineItem < ActiveRecord::Base
	has_many :products
	has_many :carts
end

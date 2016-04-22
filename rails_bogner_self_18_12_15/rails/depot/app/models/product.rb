class Product < ActiveRecord::Base
	before_destroy :any_line_item
	belongs_to :line_item
	validates :image_url, allow_blank: true, format: { with: /\w+\.(gif|jpg|png)\z/i, message: "Dateiformat muss jpg, gif oder png sein!" }
	validates :description, presence: true
	validates :title, presence: true, uniqueness: true
	validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }

	def any_line_item
		if line_items.count.zero?
      return true
    else
      return false
    end
	end

end

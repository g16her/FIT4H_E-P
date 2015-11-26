module ApplicationHelper

	def format_price(event)
		if event.free? 
		#<strong>FREE</strong>".html_safe
		conten_tag(:strong, "FREE")
		else number_to_currency(event.price, unit:"€")
		end
	end 
end

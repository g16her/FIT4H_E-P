module ApplicationHelper
	def format_price(event)
		if event.free? 
			#"<strong>FREE</strong>".html_safe
			content_tag(:strong, "Free")
		else
			number_to_currency(event.price, unit: "€ ") 
		end
	end
	def image_for(event)
		if event.image.blank?
			image_tag 'dummy.jpg'

		else
			image_tag event.image
		end
		
	end
end

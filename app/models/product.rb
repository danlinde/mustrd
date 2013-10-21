class Product < ActiveRecord::Base
	def formatted_price
		sprintf "£%.2f", price
	end
end

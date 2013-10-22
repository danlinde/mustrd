class Product < ActiveRecord::Base

	has_and_belongs_to_many :carts

	def formatted_price
		sprintf "£%.2f", price
	end
end

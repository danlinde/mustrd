class Cart < ActiveRecord::Base
	has_and_belongs_to_many :products

	def count
		products.count
	end

	def products_with_quanitity
		hash = Hash.new(0)
		products.inject(hash) do |hash, product|
			hash[product] += 1
			hash
		end
	end

end

	# def items
	# 	products.group_by(&:id).map do |id,product_group|
	# 		LineItem.new(product_group)
	# 	end
	# end

# class LineItem
# 	def initialize(product_group)
# 		@item = product_group[0]
# 		@qty = product_group.count
# 	end

# 	def name
# 		@item.name
# 	end

# 	def formatted_price
# 		sprintf "£%.2f", @item.price
# 	end

# 	def qty
# 		@qty
# 	end
# end
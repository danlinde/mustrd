class Cart < ActiveRecord::Base
	has_and_belongs_to_many :products

	def count
		products.count
	end


	def items
		products.group_by(&:id).map do |id,product_group|
			LineItem.new(product_group)
		end
	end

	def total
		memo = 0
		items.each do |i|
			memo += i.amount
		end
		memo
	end

end


class LineItem
	def initialize(product_group)
		@item = product_group[0]
		@qty = product_group.count
	end

	def name
		@item.name
	end

	def price
		@item.price
	end

	def qty
		@qty
	end

	def amount
		@item.price * @qty
	end

end

class BigDecimal
	def in_pounds
		sprintf "£%.2f", self
	end
end
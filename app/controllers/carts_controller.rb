class CartsController < ApplicationController

	def show
		@products = current_cart.products
		@products_with_quantity = current_cart.products_with_quanitity
	end

	def update
		product = Product.find params[:cart][:product_id]
		current_cart.products << product
		redirect_to product_path(product)
	end
end

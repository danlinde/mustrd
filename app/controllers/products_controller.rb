class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def new
		@product = Product.new
	end
	
	def create
		product = Product.create(params[:product].permit(:name, :description, :quantity, :price))
		redirect_to product_path(product)
	end
end

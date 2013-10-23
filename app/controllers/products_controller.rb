class ProductsController < ApplicationController
	def index
		@products = Product.all
	end

	def homepage
		@products = Product.all
		@hide_sidebar = true
	end

	def show
		@product = Product.find(params[:id])
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.create(params[:product].permit(:name, :description, :quantity, :price, :image))
		redirect_to @product
		rescue AWS::S3::Errors::RequestTimeout
     	flash[:notice] = "Upload timed out"
     	render 'new'
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		@product = Product.find(params[:id])
		if @product.update(params[:product].permit(:name, :description, :quantity, :price))
			redirect_to @product
		else
			render 'edit'
		end
	end

	def destroy
		product = Product.find(params[:id]).destroy
		redirect_to products_path
	end

end



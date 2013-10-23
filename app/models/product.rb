class Product < ActiveRecord::Base

	has_and_belongs_to_many :carts

	has_attached_file :image, :styles => { :thumb => "100x100>" } #, 
											# storage: :s3,
           #                    				bucket: 'ecommerce_demo'


	def formatted_price
		sprintf "£%.2f", price
	end
end

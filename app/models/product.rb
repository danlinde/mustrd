class Product < ActiveRecord::Base

	has_and_belongs_to_many :carts

	has_attached_file :image, storage: :s3,
							  bucket: "mustrd_development",
							  styles: { thumb: '140x140>' }

	def formatted_price
		sprintf "£%.2f", price
	end
end

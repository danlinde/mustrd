require 'spec_helper'

describe Product do

	it {should have_and_belong_to_many(:carts)}

	it 'can have an image' do
		product = Product.create(image: example_image)
		expect(product.image.exists?).to be_true
	end

	it 'can have a thumbnail of the image' do
		product = Product.create(image: example_image)
		expect(product.image.exists?(:thumb)).to be_true
	end

end

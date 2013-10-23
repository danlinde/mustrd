require 'spec_helper'

describe Product do
	it {should have_and_belong_to_many(:carts)}

	it 'can have an attached image' do
          product = Product.create image: example_image
          expect(product.image.exists?(:thumb)).to be_true
    end
end


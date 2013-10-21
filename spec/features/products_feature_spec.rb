require 'spec_helper'

describe 'products page' do |variable|
	it 'should display products' do
		Product.create(name: 'a product')
		visit '/products'
		expect(page).to have_content 'a product'
	end
end
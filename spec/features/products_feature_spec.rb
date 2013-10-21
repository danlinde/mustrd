require 'spec_helper'

describe 'products page' do
	it 'should display products' do
		Product.create(name: 'a product')
		visit '/products'
		expect(page).to have_content 'a product'
	end
end

describe 'an individual product' do
	before(:each) do
		Product.create(name: 'a product')
	end
	it 'should have its own page' do
		visit '/products'
		click_link "a product"
		expect(page).to have_content 'a product'
	end
end

describe 'a new product form' do
	it 'create a new product' do
		visit '/products/new'
		fill_in 'name', with: 'Brand new product'
		fill_in 'description', with: 'description of product'
		fill_in 'quantity', with: 10
		fill_in "price", with: 9.99
		click_button "Create Product"
		expect(page).to have_content 'Brand new product'
	end
end
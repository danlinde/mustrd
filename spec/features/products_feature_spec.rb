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
		visit '/products'
		click_link "a product"
	end
	it 'should have its own page' do
		expect(page).to have_content 'a product'
	end

	it 'can be edited' do
		click_link "Edit product"
		fill_in "name", with: "Renamed product"
		click_button "Update Product"
		expect(page).to have_content "Renamed product"
	end

	it 'can be deleted' do
		click_button "Delete product"
		expect(page).not_to have_content 'a product'
	end
end

describe 'a new product form' do
	it 'creates a new product' do
		visit '/products/new'
		fill_in 'name', with: 'Brand new product'
		fill_in 'description', with: 'description of product'
		fill_in 'quantity', with: 10
		fill_in "price", with: 9.99
		click_button "Create Product"
		expect(page).to have_content 'Brand new product'
	end
end
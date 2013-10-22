require 'spec_helper'

describe 'an empty cart' do
	let(:iphone) {FactoryGirl.create(:product)}

	it 'should initially be empty' do
		visit product_path(iphone)
		expect(page).to have_css '.item_count', text: '0 items'
	end
end

describe 'a cart' do
	before do
		FactoryGirl.create(:product)
		visit products_path
		click_button 'Add to Cart', :match => :first
	end
	
	it 'can have items added to it' do
		expect(page).to have_css '.item_count', text: '1 item'
		expect(page).not_to have_css '.item_count', text: '1 items'
	end

	it 'can be viewed' do
		click_link 'cart-link'
		expect(page).to have_content "iphone"
		expect(page).to have_content "199.00"
	end

	it 'should show an image of the product' do
		pending
	end

	it 'can have quantities updated' do
		pending
	end

	it 'can have items removed' do
		pending
	end

end



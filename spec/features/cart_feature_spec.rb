require 'spec_helper'

describe 'the cart' do
	let(:iphone) {FactoryGirl.create(:product)}

	it 'should initially be empty' do
		visit product_path(iphone)
		expect(page).to have_css '.item_count', text: '0 items'
	end

	it 'can have items added to it' do
		visit product_path(iphone)
		click_button 'Add to Cart', :match => :first

		expect(page).to have_css '.item_count', text: '1 item'
		expect(page).not_to have_css '.item_count', text: '1 items'
	end
end


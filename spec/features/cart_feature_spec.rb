require 'spec_helper'

describe 'Cart' do
  
  context 'on product show page' do

    let(:piglet_bank) { create(:product) }

    before(:each) do
      visit product_path(piglet_bank)
    end

    it 'should be empty' do
      expect(page).to have_css('.cart', text: '0 items')
    end

    it "should be able to add product to cart" do
      click_button 'Add to cart'
      expect(page).to have_css('.cart', text: '1 item')
      expect(page).not_to have_css('.cart', text: '1 items')
    end

  end

end

require 'spec_helper'

describe 'Homepage' do

  context 'list of products for sale' do

    let(:iphone1) { create(:product) }
    let(:iphone2) { create(:product) }

    it 'should list the products' do
      visit root_path

      within '.product-list' do
        expect(page).to have_css('.product-name', text: 'iPhone1')
        expect(page).to have_css('.product-name', text: 'iPhone2')
      end
    end

  end  

end

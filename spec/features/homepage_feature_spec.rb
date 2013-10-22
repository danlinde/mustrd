require 'spec_helper'

describe 'Homepage' do

  context 'list of products for sale' do

    before(:all) do
      @iphone1 = create(:product)
      @iphone2 = create(:product)
    end

    it 'should list the products' do
      visit root_path

      within '.product-list' do
        expect(page).to have_css('.product-name', text: @iphone1.name)
        expect(page).to have_css('.product-name', text: @iphone2.name)
      end
    end

    it 'should not have a sidebar' do
      visit root_path

      expect(page).not_to have_css '.sidebar-nav'
    end

  end  

end

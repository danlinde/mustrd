require 'spec_helper'

describe 'Uploads' do

  context 'when I create a new products' do

    it 'can have an  uploaded product image' do
      visit new_product_path

      fill_in :price, with: 10.00
      attach_file 'Image', example_image_path
      click_button 'Create Product'

      expect(page).to have_css 'img.product_image'
    end

  end

end

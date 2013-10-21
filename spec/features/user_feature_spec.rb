require 'spec_helper'

describe 'User' do
  
  context 'registered members' do

    it 'should start with none' do
      expect(User.all.count).to eq 0
    end

    it 'should create a new user' do
      visit new_user_registration_path

      fill_in 'Name', with: 'Ketchup'
      fill_in 'Email', with: 'email@email.com'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'
      click_button 'Sign up'

      expect(current_path).to eq root_path
      expect(page).to have_css('.notice', text: 'Ready to spread, Ketchup')
    end

  end

end

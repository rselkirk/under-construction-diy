require 'rails_helper'

RSpec.feature "Visitor can register and login", type: :feature, js: true do
  
    # faker login info for test
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    email = Faker::Internet.email

    scenario "A visitor can register for a new account" do
      visit signup_path
      fill_in 'user[first_name]', with: first_name
      fill_in 'user[last_name]', with: last_name
      fill_in 'user[email]', with: email
      fill_in 'user[password]', with: '12345'
      fill_in 'user[password_confirmation]', with: '12345'
      click_on 'Submit'
      expect(page).to have_text('Profile')
    end

    scenario "A brand new user can logout of an account" do
      visit logout_path
      current_path.should == "/"
    end

    scenario "A user can login to an account for the first time and see their profile" do
      visit login_path
      fill_in 'email', with: email
      fill_in 'password', with: '12345'
      click_on 'Submit'
      expect(page).to have_text('Profile')

    #DEBUG
    save_screenshot
    end
   
 
end

require 'rails_helper'
require 'capybara/rails'

feature 'Auth' do 

	scenario 'User can see when a quote was submitted' do 
	  create_user email: "user@example.com"
	  Quote.create!(text: %Q{Something pithy})

	visit root_path
    click_on "Login"
    fill_in "Email", with: "user@example.com"
    fill_in "Password", with: "password"
    click_on "Login"

    expect(page).to have_content('less than a minute ago')
  end
end
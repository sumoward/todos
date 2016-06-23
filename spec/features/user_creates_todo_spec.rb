require 'rails_helper'

feature 'User creates todo' do
  scenario 'sucessfully' do
    sign_in
    click_on 'Add a new Todo'
    fill_in 'Title', with: 'Buy Milk'
    click_on 'Sign in'
    expect(page).to have_css '.todos li', text: 'Buy Milk'
  end
end
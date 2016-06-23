require 'rails_helper'

feature 'User creates todo' do
  scenario 'sucessfully' do
    sign_in
    create_todo('Buy Milk')
    expect(page).to have_css('.todos li', text: 'Buy Milk')
  end
end
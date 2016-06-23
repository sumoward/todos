require 'rails_helper'

feature 'User sees own todos' do
  scenario 'doesnt see others todos' do
    Todo.create!(title: "Buy Milk", email: "someone_else@example.com")
    sign_in_as "someone@example.com"
    expect(page).not_to display_todo "Buy Milk"
  end
end
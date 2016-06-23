require "rails_helper"

feature "User completes todo" do
  scenario "succesfully" do
    sign_in
    create_todo('Buy Milk')
    click_on "Mark complete"
    expect(page).to display_completed_todo 'Buy Milk'

  end

end
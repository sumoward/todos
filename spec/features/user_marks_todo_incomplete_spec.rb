require "rails_helper"

feature "User completes todo" do
  scenario "succesfully" do
    sign_in

    create_todo('Buy Milk')

    click_on "Mark complete"
    click_on "Mark incomplete"

    expect(page).not_to display_completed_todo 'Buy Milk'
    expect(page).to display_todo 'Buy Milk'
  end

end
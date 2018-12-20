require 'rails_helper'
require_relative '../support/feature_web_helpers'
require_relative '../support/capybara_selectors'

RSpec.feature "Update posts", type: :feature do
  scenario "User can update their own post" do
    signup
    post_hello_world_message
    click_on('Edit')
    fill_in 'Message', with: "Goodbye, world!"
    click_button "Submit"
    expect(page).to have_content("Goodbye, world!")
    expect(page).not_to have_content("Hello, world!")
  end
end

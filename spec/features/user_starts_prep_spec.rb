require 'rails_helper'

RSpec.feature "User can start a session upon login" do
  scenario "they can start a session" do
    question = create(:question)
    user = create(:user)

    visit root_path

    within(".welcome_box") do
      expect(page).to have_link "Get Login"
      expect(page).to have_link "Login"
    end

    click_link("Login")

    within(".menu_login_container") do
      fill_in("Username", with: user.username)
      fill_in("Password", with: user.password)
    end

    click_button("Login")

    within(".user_profile") do
      expect(page).to have_link("Hit me")
      expect(page).to have_content("Questions")
      expect(page).to have_content("Comments")
      expect(page).to have_content("Comfort Level")
    end

    click_link("Hit me")

    assert_equal questions_path, current_path
    within(".question_box") do
      expect(page).to have_content question.title
    end
  end
end

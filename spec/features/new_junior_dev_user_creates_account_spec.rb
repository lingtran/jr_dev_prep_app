require 'rails_helper'

RSpec.feature "Junior dev user creates an account" do
  scenario "they can log in upon creation" do
    user = User.create(name: "Felicity", username: "felicity", email: "felicity@fake", password: "felicity")

    visit root_path

    within ".welcome_box" do
      expect(page).to have_content("Welcome!")
    end

    click_link("Get Login")

    assert_equal create_user_path, current_path

    within(".registration") do
      fill_in("Name", with: "#{user.name}")
      fill_in("E-mail", with: "#{user.email}")
      fill_in("Set a username", with: "#{user.username}")
      fill_in("Set a password", with: "#{user.password}")
    end
    click_button("Create Login")

    assert_equal login_path, current_path
  end
end

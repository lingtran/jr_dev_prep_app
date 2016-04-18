require 'rails_helper'

RSpec.feature "User can logout" do
  scenario "user sees landing page" do
    login_user

    within(".nav_container") do
      expect(page).to have_link("Logout"), href: logout_path
    end

    click_link("Logout")

    expect(page).to have_current_path(root_path)
  end

  def login_user
    @user = create(:user)
    visit login_path

    within(".menu_login_container") do
      fill_in("Username", with: "#{@user.username}")
      fill_in("Password", with: "#{@user.password}")
      click_button("Login")
    end
  end
end

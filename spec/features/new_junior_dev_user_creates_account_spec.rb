require 'rails_helper'

RSpec.feature "Junior dev user creates an account" do
  scenario "they are asked to log in with valid params" do
    user = { name: "Felicity",
            email: "felicity@fake",
            username: "felicity",
            password: "felicity"
          }
    reg_success_msg = "Successfully registered! Go ahead and log in."
    greeting = "Welcome!"

    visit root_path

    within ".welcome_box" do
      expect(page).to have_content greeting
      expect(page).to have_link "Get Login", href: create_user_path
    end

    click_link("Get Login")

    # expect(response).to redirect_to(create_user_path) # move to Users controller test

    within(".menu_registration_container") do
      fill_in("Name", with: "#{user[:name]}")
      fill_in("E-mail", with: "#{user[:email]}")
      fill_in("Set a username", with: "#{user[:username]}")
      fill_in("Set a password", with: "#{user[:password]}")
    end
    click_button("Create Login")

    # expect(response).to redirect_to(login_path) # move to Users controller test
    expect(page).to have_content reg_success_msg
  end
end

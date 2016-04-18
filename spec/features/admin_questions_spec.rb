require 'rails_helper'

RSpec.feature "Admin logs in" do
  scenario "they can view questions" do
    admin = create(:admin)
    question = create(:question)

    visit login_path

    within(".menu_login_container") do
      fill_in("Username", with: "#{admin.username}")
      fill_in("Password", with: "#{admin.password}")
    end
    click_button("Login")

    expect(page).to have_current_path(admin_questions_path)

    expect(page).to have_content("Admin Questions")

    within(".admin_questions") do
      expect(page).to have_content("#{question.title}")
      expect(page).to have_content("#{question.category}")
    end
  end
end

require 'rails_helper'

RSpec.feature "Admin logs in" do
  scenario "they can view questions" do
    login_admin
    gen_question

    visit login_path

    within(".menu_login_container") do
      fill_in("Username", with: "#{@admin.username}")
      fill_in("Password", with: "#{@admin.password}")
      click_button("Login")
    end

    expect(page).to have_current_path(admin_questions_path)

    expect(page).to have_content("Admin Questions")

    within(".admin_questions") do
      expect(page).to have_content("#{@question.title}")
      expect(page).to have_content("#{@question.category}")
    end
  end

  scenario "they can edit questions" do
    login_admin
    gen_question
    new_question_title = "Edit title"
    new_question_category = "Edit category"

    controller = ApplicationController.new
    allow(controller).to receive(:current_user).and_return(@admin)

    visit admin_questions_path

    within(".admin_questions") do
      expect(page).to have_content("#{@question.title}")
      expect(page).to have_content("#{@question.category}")
      expect(page).to have_link("Edit"), href: edit_admin_question_path(@question)
      click_link("Edit")
    end

    within(".question_box") do
      fill_in("Title", with: "#{new_question_title}")
      fill_in("Category", with: "#{new_question_category}")
      click_button("Save")
    end

    expect(page).to have_current_path(admin_questions_path)
    within(".admin_questions") do
      expect(page).to have_content("#{new_question_title}")
      expect(page).to have_content("#{new_question_category}")
    end
  end

  scenario "they can create a question" do
    login_admin
    gen_question
    new_question = {  title: "new q",
                      category: "new cat"
      }

    controller = ApplicationController.new
    allow(controller).to receive(:current_user).and_return(@admin)

    visit admin_questions_path

    expect(page).to have_link("Create a question"), href: new_admin_question_path

    click_link("Create a question")

    within(".question_box") do
      fill_in("Title", with: "#{new_question[:title]}")
      fill_in("Category", with: "#{new_question[:category]}")
      click_button("Save")
    end

    expect(page).to have_current_path(admin_questions_path)
    within(".admin_questions") do
      expect(page).to have_content("#{new_question[:title]}")
      expect(page).to have_content("#{new_question[:category]}")
    end
  end

  def login_admin
     @admin = create(:admin)
  end

  def gen_question
    @question = create(:question)
  end
end

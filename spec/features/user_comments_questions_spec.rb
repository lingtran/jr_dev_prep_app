require 'rails_helper'

RSpec.feature "User can comment per question" do
  scenario "they comments questions by choice while in session" do
    create(:question)
    current_user = login_user
    comment = "Points to consider"

    click_link "Hit me"
    expect(page).to have_current_path(questions_path)

    within(".comments_box") do
      fill_in("Notes to self", with: comment)
      click_button "Save"
    end

    expect(page).to have_current_path(questions_path)

    click_link "Next Question"
    click_link "Enough prep for now"

    expect(page).to have_current_path(profile_path)
    expect(page).to have_content(comment)
  end

  xscenario "they edit comments to questions in profile page" do
    ApplicationController.any_instance.stubs(:current_user).returns(user)
    get_user_questions_with_login
    # HELP could not figure out how to persist comments

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

  def get_user_questions_with_login
    question_one, question_two, question_three = create_list(:question, 3)
    user_question = create(:user_question)
    user_question.user = User.last
    user_question.question = question_one
    user_question.comments
  end
end

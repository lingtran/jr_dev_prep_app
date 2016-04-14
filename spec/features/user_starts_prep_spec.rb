require 'rails_helper'

RSpec.feature "User starts a prep session" do
  scenario "they are directed to their first question" do
    question = Question.create(title: "Who let the dogs out?", category: "Soft")

    visit root_path

    within(".welcome_box") do
      expect(page).to have_content "Hit me"
    end

    click_link("Hit me")

    assert_equal questions_path, current_path
    within(".question_box") do
      expect(page).to have_content question.title
    end
  end
end

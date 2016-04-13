require 'rails_helper'

RSpec.feature "User starts a prep session" do
  scenario "they are directed to their first question" do
    question = Question.create(title: "Who let the dogs out?", category: "Soft")

    visit root_path
    # how to express test to press key Enter/Return...and then how to code this? Maybe implement with 'next' link first?
    within(".welcome_box") do
      expect(page).to have_content "Landing page."
    end
    find(".welcome_box").set("\n")
    within(".question_box") do # test fails here likely due to line 12 not redirecting
      expect(page).to have_content question.title
    end
  end
end

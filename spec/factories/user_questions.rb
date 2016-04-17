FactoryGirl.define do
  factory :user_question do
    user
    question
    comments "MyText"
    comfort_level "MyString"
  end
end

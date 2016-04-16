FactoryGirl.define do
  factory :user_question do
    user nil
    question nil
    comments "MyText"
    comfort_level "MyString"
  end
end

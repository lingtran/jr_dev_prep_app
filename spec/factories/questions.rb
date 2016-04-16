FactoryGirl.define do
  factory :question do
    title "MyText"
    category "MyString"
  end

  sequence :title, ["What are the colors of the rainbow?", "What really are the colors of the rainbow?", "What is a linked list?", "What is an ip address?"] do |q|
    "#{q}"
  end

  sequence :category, ["Soft", "Technical"] do |cat|
    "#{cat}"
  end
end

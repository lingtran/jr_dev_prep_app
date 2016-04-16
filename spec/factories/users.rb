FactoryGirl.define do
  factory :user do
    name
    email
    username
    password "password"
  end

  sequence :name do |n|
    "#{n} user"
  end

  sequence :username do |n|
    "#{n} username"
  end

  sequence :email do |n|
    "#{n}@fake"
  end

end

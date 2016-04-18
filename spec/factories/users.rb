FactoryGirl.define do
  factory :user do
    name
    email
    username
    role 0
    password "password"
  end

  factory :admin, parent: :user do
    sequence(:name)
    sequence(:email)
    username "admin"
    role 1
    password "admin"
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

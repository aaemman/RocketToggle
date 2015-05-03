FactoryGirl.define do
  factory :user do
    name 'Alex'
    sequence(:email) { |n| "email#{n}@gmail.com"}
    password 'password'
  end

end

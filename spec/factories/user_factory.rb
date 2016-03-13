FactoryGirl.define do

  sequence(:email) { |n| "user#{n}@example.com" }

  factory :user do
    email
    password "fake1234"
    username "JohnG"
    first_name "John"
    last_name "Glenn"
    admin false
  end

  factory :admin, class: User do
    email
    password "1234fake"
    username "Admin"
    first_name "Administrator"
    last_name "User"
    admin true
  end

end

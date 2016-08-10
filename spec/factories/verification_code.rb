FactoryGirl.define do
  factory :verification_code do
    email { Faker::Internet.email }
    code  { Faker::PhoneNumber.subscriber_number(6) }
  end
end

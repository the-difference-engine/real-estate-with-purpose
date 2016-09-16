FactoryGirl.define do
  factory :user do
    email "test@test.com"
    encrypted_password "password"
  end
end
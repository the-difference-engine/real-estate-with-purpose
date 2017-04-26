FactoryGirl.define do
  factory :user do
    first_name 'John'
    last_name 'Smith'
    email 'jsmith@gmail.com'
    password_digest 'password'
    admin false
    home_budget 5.0
    signup 'signup'
  end
end
FactoryGirl.define do
  factory :property do
    est_donated_amount 1.5
    address "MyString"
    num_bedrooms 1
    num_bathrooms 1
    price 1.5
    property_type "MyString"
    image "MyString"
    overview "MyText"
    details "MyText"
    misc_details "MyText"
  end
end

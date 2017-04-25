FactoryGirl.define do
  factory :property do
    num_bedrooms 1
    num_bathrooms "1"
    list_price 1.0
    image "Image"
    overview "Overview"
    details "Details"
    misc_details "Details"
    line_1 "line1"
    line_2 "line2"
    city   "Chicago"      
    state "IL"        
    zip "60618"
    api_address "apiaddress"
  end
end

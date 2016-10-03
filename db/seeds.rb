# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Property.create!([
    {num_bedrooms: 2, num_bathrooms: 8, list_price: 1020, image: 'https://upload.wikimedia.org/wikipedia/commons/c/c0/Gingerbread_House_Essex_CT.jpg', overview: 'An awesome house.',misc_details: Faker::Lorem.sentence,  details: Faker::Lorem.paragraph(2)},
    {num_bedrooms: 4, num_bathrooms: 7, list_price: 3325, image: 'https://smallhousebliss.files.wordpress.com/2016/02/smallworks-cypress-laneway-house-exterior-via-smallhousebliss.jpg', overview: 'Moss-covered cottage', misc_details: Faker::Lorem.sentence, details: Faker::Lorem.paragraph(2) },
    {num_bedrooms: 5, num_bathrooms: 6, list_price: 56457,image: 'https://i.ytimg.com/vi/Xx6t0gmQ_Tw/maxresdefault.jpg', overview: 'House in the hills', misc_details: Faker::Lorem.sentence, details: Faker::Lorem.paragraph(2) },
    {num_bedrooms: 6, num_bathrooms: 5, list_price: 346346,image: 'http://associateddesigns.com/sites/default/files/plan_images/main/craftsman_house_plan_tillamook_30-519-picart.jpg', overview: 'Biggest mansion on the block', misc_details: Faker::Lorem.sentence, details: Faker::Lorem.paragraph(2) },
    {num_bedrooms: 7, num_bathrooms: 4, list_price: 967976, image: 'http://kurld.com/images/house/house-05.jpg', overview: 'Fancy village townhouse', misc_details: Faker::Lorem.sentence, details: Faker::Lorem.paragraph(2) },
    {num_bedrooms: 8, num_bathrooms: 3, list_price: 22434, image: 'https://upload.wikimedia.org/wikipedia/commons/f/f8/Ellen_H._Swallow_Richards_House_Boston_MA_01.jpg', overview: 'The campsite tower', misc_details: Faker::Lorem.sentence, details: Faker::Lorem.paragraph(2) },
    {num_bedrooms: 9, num_bathrooms: 2, list_price: 64645, image:'http://www.hotel-r.net/im/hotel/ba/house-22.jpg', overview: 'An amazing house.', misc_details: Faker::Lorem.sentence, details: Faker::Lorem.paragraph(2) },
  ])

Address.create!([{
  line_1: Faker::Address.street_address,
  city: Faker::Address.city,
  state: Faker::Address.state_abbr,
  zip: Faker::Address.zip,
  property_id: 1
  },
  {
  line_1: Faker::Address.street_address,
  city: Faker::Address.city,
  state: Faker::Address.state_abbr,
  zip: Faker::Address.zip,
  property_id: 2
  },
  {
  line_1: Faker::Address.street_address,
  city: Faker::Address.city,
  state: Faker::Address.state_abbr,
  zip: Faker::Address.zip,
  property_id: 3
  },  
  {
  line_1: Faker::Address.street_address,
  city: Faker::Address.city,
  state: Faker::Address.state_abbr,
  zip: Faker::Address.zip,
  property_id: 4
  },
  {
  line_1: "222 W Merchandise Mart Plaza",
  zip: "60654",
  property_id: 5
  },
  {
  line_1: "218 W Kinzie St",
  zip: "60654",
  property_id: 6
  },
  {
  line_1: "205 W Lake St",
  zip: "60606",
  property_id: 7
  }     
  ])





# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Property.create!([
    {num_bedrooms: 2, num_bathrooms: 8, list_price: 1020, image: 'https://upload.wikimedia.org/wikipedia/commons/c/c0/Gingerbread_House_Essex_CT.jpg', overview: 'An awesome house.',misc_details: Faker::Lorem.sentence,  details: Faker::Lorem.paragraph(2), line_1: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip },
    {num_bedrooms: 4, num_bathrooms: 7, list_price: 3325, image: 'https://smallhousebliss.files.wordpress.com/2016/02/smallworks-cypress-laneway-house-exterior-via-smallhousebliss.jpg', overview: 'Moss-covered cottage', misc_details: Faker::Lorem.sentence, details: Faker::Lorem.paragraph(2), line_1: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip  },
    {num_bedrooms: 5, num_bathrooms: 6, list_price: 56457,image: 'https://i.ytimg.com/vi/Xx6t0gmQ_Tw/maxresdefault.jpg', overview: 'House in the hills', misc_details: Faker::Lorem.sentence, details: Faker::Lorem.paragraph(2), line_1: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip  },
    {num_bedrooms: 6, num_bathrooms: 5, list_price: 346346,image: 'http://associateddesigns.com/sites/default/files/plan_images/main/craftsman_house_plan_tillamook_30-519-picart.jpg', overview: 'Biggest mansion on the block', misc_details: Faker::Lorem.sentence, details: Faker::Lorem.paragraph(2), line_1: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip  },
    {num_bedrooms: 7, num_bathrooms: 4, list_price: 967976, image: 'http://kurld.com/images/house/house-05.jpg', overview: 'Fancy village townhouse', misc_details: Faker::Lorem.sentence, details: Faker::Lorem.paragraph(2), line_1: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip  },
    {num_bedrooms: 8, num_bathrooms: 3, list_price: 22434, image: 'https://upload.wikimedia.org/wikipedia/commons/f/f8/Ellen_H._Swallow_Richards_House_Boston_MA_01.jpg', overview: 'The campsite tower', misc_details: Faker::Lorem.sentence, details: Faker::Lorem.paragraph(2), line_1: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip  },
    {num_bedrooms: 9, num_bathrooms: 2, list_price: 64645, image:'http://www.hotel-r.net/im/hotel/ba/house-22.jpg', overview: 'An amazing house.', misc_details: Faker::Lorem.sentence, details: Faker::Lorem.paragraph(2), line_1: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state_abbr, zip: Faker::Address.zip  },
  ])

Charity.create!([
  {name: "WTTW", logo: "http://realestatewithpurpose.co/wp-content/uploads/2015/03/REWP_Partners_WTTW11.jpg", description: "Wonderful charity"},
  {name: "Tree House Humane Society", logo: "http://realestatewithpurpose.co/wp-content/uploads/2015/03/REWP_Partners_Tree-House-Humane-Society.jpg", description: "Great Charity"},
  {name: "Rise International", logo: "http://realestatewithpurpose.co/wp-content/uploads/2015/03/REWP_Partners_Rise-International.jpg", description: "Fantastic Charity"},
  {name: "Minds Matter", logo: "http://realestatewithpurpose.co/wp-content/uploads/2015/03/REWP_Partners_Minds-Matter.jpg", description: "Great Charity"},
  {name: "Make a Wish Foundation", logo: "http://realestatewithpurpose.co/wp-content/uploads/2015/03/REWP_Partners_MakeAWish.jpg", description: "Great Charity"},
  {name: "Literacy Volunteers of Illinois", logo: "http://realestatewithpurpose.co/wp-content/uploads/2015/03/REWP_Partners_LVI1.jpg", description: "Fantastic Charity"},
  {name: "Lilac Tree Evanston", logo: "http://realestatewithpurpose.co/wp-content/uploads/2015/03/REWP_Partners_Lilac-Tree.jpg", description: "Great Charity"},
  {name: "Susan G. Komen", logo: "http://realestatewithpurpose.co/wp-content/uploads/2015/03/REWP_Partners_Susan-G-Komen.jpg", description: "Great Charity"},
  {name: "Jellystone Bark", logo: "http://realestatewithpurpose.co/wp-content/uploads/2015/05/REWP_Partners_JellystoneBark.jpg", description: "Fantastic Charity"},
  {name: "IWSE", logo: "http://realestatewithpurpose.co/wp-content/uploads/2015/03/REWP_Partners_IWSE.jpg", description: "Infant Welfare Society of Evanston"},
  {name: "Foundation for Womens Cancer", logo: "http://realestatewithpurpose.co/wp-content/uploads/2015/03/REWP_Partners_Foundation-for-Womens-Cancer.jpg", description: "Great Charity"},
  {name: "Evanston Animal Shelter", logo: "http://realestatewithpurpose.co/wp-content/uploads/2015/03/REWP_Partners_Evanston-Animal-Shelter.jpg", description: "Fantastic Charity"},
  {name: "Chicago Childrens Charities", logo: "http://realestatewithpurpose.co/wp-content/uploads/2015/03/REWP_Partners_Chicago-Childrens-Charities.jpg", description: "Great Charity"},
  {name: "Wright Way Rescue", logo: "http://realestatewithpurpose.co/wp-content/uploads/2015/03/REWP_Partners_Wright-Way-Rescue.jpg", description: "Great Charity"},
  {name: "Katie Samsel Fund", logo: "http://realestatewithpurpose.co/wp-content/uploads/2015/03/REWP_Partners_CCSD21_Katie-Samsel-Fund.jpg", description: "Community Consolidated Schools District 21"},        
  {name: "Camp Minikani", logo: "http://realestatewithpurpose.co/wp-content/uploads/2015/03/REWP_Partners_Camp-Minikani.jpg", description: "Wonderful charity"},
  {name: "Association House of Chicago", logo: "http://realestatewithpurpose.co/wp-content/uploads/2015/03/REWP_Partners_Association-House.jpg", description: "Wonderful charity"},
  {name: "Anti-Cruelty Society", logo: "http://realestatewithpurpose.co/wp-content/uploads/2015/03/REWP_Partners_AntiCrueltySociety_1.jpg", description: "Wonderful charity"},
  {name: "Ann Robert H. Lurie Childrens Hospital of Chicago", logo: "http://realestatewithpurpose.co/wp-content/uploads/2015/03/REWP_Partners_AnnRobertLurie.jpg", description: "Wonderful charity"},
  {name: "American Cancer Society", logo: "http://realestatewithpurpose.co/wp-content/uploads/2015/03/REWP_Partners_American-Cancer-Society1.jpg", description: "Wonderful charity"},      
  {name: "American Brain Tumor Association", logo: "http://realestatewithpurpose.co/wp-content/uploads/2015/03/REWP_Partners_American-Brain-Tumor-Assoc.jpg", description: "Wonderful charity"},
  {name: "Alzheimers Association", logo: "http://realestatewithpurpose.co/wp-content/uploads/2015/03/REWP_Partners_Alzheimers-Association.jpg", description: "Wonderful charity"},    
    ])







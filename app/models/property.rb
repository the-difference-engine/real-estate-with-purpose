class Property < ApplicationRecord
  has_many :addresses

  def self.all
    user = ENV['USERNAME']
    pass = ENV['PASSWORD']

    # initialize a new Cookie Jar
    jar = HTTP::CookieJar.new

    headers = {"X-Frame-Options"=>"SAMEORIGIN", "X-XSS-Protection"=>"1; mode=block", "X-Content-Type-Options"=>"nosniff"}
    # check if there is an existing cookies file already, load if it exists
    jar.load("mrets_cookies") if File.exist?("mrets_cookies")

    # use Unirest to send a login/authorization request and retrieve the response headers
    response1 = Unirest.get("http://#{user}:#{pass}@connectmls-rets.mredllc.com/rets/server/login").headers

    # convert the second request URL to a URI
    uri = URI("http://connectmls-rets.mredllc.com/rets/server/search?SearchType=Property&Class=ResidentialProperty&QueryType=DMQL2&Format=COMPACT&StandardNames=1&Select=ListingID,ListPrice,BedsTotal,BathsTotal,StreetNumber,StreetName&Query=(ListPrice=10000%2B)&Count=1&Limit=9")
    
    # parse the cookies into the jar
    response1[:set_cookie].each { |value| jar.parse(value, uri) }

    # store the cookies back into the variable: headers
    headers["Cookie"] = HTTP::Cookie.cookie_value(jar.cookies(uri))
    
    # save the current jar
    jar.save("mrets_cookies")

    # use Unirest to submit a second request using your search URI (must be a string) and the headers you stored earlier
    response2 = Unirest.get(uri.to_s, headers: headers).body
    p response2
    # parse the XML response into JSON-like string
    response2 = Hash.from_xml(response2)

    # convert string into actual JSON
    
    response_array = response2["RETS"]["DATA"]
    final_array = []
    response_array.each do |listing|
      final_array << listing.split(" ")
    end
    collection = []
    final_array.each do |listing|
      address_lines = []
      indeces = listing.length - 1
      for i in 4..indeces
        address_lines << listing[i]
      end
      number = address_lines.pop
      address = number + " " + address_lines.join(' ')
      new_listing = Property.new(num_bedrooms: listing[1],
                                 num_bathrooms: listing[0],
                                 list_price: listing[3],
                                 line_1: address)
      collection << new_listing
      
    end
    collection
  end

  def bath_and_half_bath
    # Getting the pluralization right
    baths = num_bathrooms.split(".")
    if baths[0] == '1' 
      full_bath = "bath"
    else
      full_bath = "baths"
    end

    if baths[1] && baths[1] == '1' 
      half_bath = "bath"
    else
      half_bath = "baths"
    end

    if baths[1]
      "#{baths[0]} #{full_bath}, #{baths[1]} half #{half_bath}"
    else
      "#{baths[0]} #{full_bath}"
    end
  end

  def amount_donated
    list_price.to_f * 0.10
  end

  def coordinates
     Geocoder.coordinates(full_address)
  end

  def lat
    coordinates[0]
  end

  def long
    coordinates[1]
  end

  def full_address
    "#{api_address},+#{city},+#{state}+#{zip}"
  end
end

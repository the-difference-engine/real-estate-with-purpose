class RetsController < ApplicationController

  def index
    user = ENV['USERNAME']
    pass = ENV['PASSWORD']

    # initialize a new Cookie Jar
    jar = HTTP::CookieJar.new

    # check if there is an existing cookies file already, load if it exists
    jar.load("mrets_cookies") if File.exist?("mrets_cookies")

    # use Unirest to send a login/authorization request and retrieve the response headers
    response1 = Unirest.get("http://#{user}:#{pass}@connectmls-rets.mredllc.com/rets/server/login").headers

    # convert the second request URL to a URI
    uri = URI("http://connectmls-rets.mredllc.com/rets/server/search?SearchType=Property&Class=ResidentialProperty&QueryType=DMQL2&Format=COMPACT&StandardNames=1&Select=ListingID,ListPrice,BedsTotal,BathsTotal,StreetNumber,StreetName&Query=(ListPrice=300000%2B)&Count=1&Limit=10")
    
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
    
    responseArray = response2["RETS"]["DATA"]
    @finalArray = []
    responseArray.each do |listing|
      @finalArray << listing.split(" ")
    end
  end
end
  

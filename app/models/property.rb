class Property < ApplicationRecord
  has_many :addresses

  def self.find(mls_id)
    Unirest.get("https://#{ENV['USERNAME']}:#{ENV['PASSWORD']}@api.simplyrets.com/properties/#{mls_id}").body    
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

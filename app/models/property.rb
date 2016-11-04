class Property < ApplicationRecord
  has_many :addresses

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

class Map < ApplicationRecord

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
    "#{name},+#{address},+#{city},+#{state}+#{zip_code}"
  end
end

class Property < ApplicationRecord
  has_many :addresses
  has_many :user_properties
  has_many :users, through: :user_properties

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

  def property
    Unirest.get("https://#{ENV['USERNAME']}:#{ENV['PASSWORD']}@api.simplyrets.com/properties/#{params[:id]}").body
  end

  def self.iterate(data)
    data_array = []
    data.each do |info|
     if info.is_a?(Hash) 
        info.each_pair do |key, value|
        if value != nil 
          data_array << "#{key}: #{value}"  
        elsif value.is_a?(Hash) 
          value.each_pair do |key2, value2|
          data_array << key
          if value2 != nil 
            data_array << "#{key2}: #{value2}"
          end 
        end 
      end 
    end
    
  end

  end
    return data_array
  end 

end

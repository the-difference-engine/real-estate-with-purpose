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
 
  def self.new_iterate(data)
    display_text = []
    info.each_pair do |key1, value1|
     if value1.is_a?(Hash)
      display_text << key1
      display_text << value1
    end 

    while value1.is_a?(Hash)
      value1
     


    break if info

  end
 
  def self.iterate(data)
    data_array = []
      data.each do |info|
        if info.is_a?(Hash) 
          info.each_pair do |key, value|
            if value.is_a?(Hash)
              data_array << "<ul> <b> #{key}:: </b> </ul>".html_safe 
              value.each_pair do |key2, value2|       
                if value2.is_a?(Hash)
                  data_array << "<ul> <ul> <b> #{key2} </b> </ul> </ul>".html_safe
                  value2.each_pair do |key3, value3|
                    if value3.is_a?(Hash)
                      data_array << key2
                      data_array << "<ul> <ul> <b> #{key3}: </b> #{value3} </ul> </ul>".html_safe
                    end
                  end
                end
              if value2 != nil
                data_array << "<ul> <ul> <b> #{key2}: </b> #{value2} </ul> </ul>".html_safe
              end
            end
          else
            if value != nil
              data_array << "<ul> <b> #{key}: </b> #{value}  </ul>".html_safe
            end
          end
        end
      end
    end
  return data_array
  end
end

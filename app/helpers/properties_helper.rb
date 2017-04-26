module PropertiesHelper
  @@counter = 1

  def increase_counter
    @@counter += 1
  end

  def reset_counter
   @@counter = 1
  end

  def display_hash_key(key)
    return front_tabs(@@counter) + '<b>'.html_safe + key + ': ' + '</b>'.html_safe + close_tabs(@@counter)
  end

  def display_key_and_value(key, value)
    front_tabs(@@counter) + '<b>'.html_safe + key + ': ' + '</b>'.html_safe + value + close_tabs(@@counter)
  end

  def display_hash_value(value)
    front_tabs(@@counter) + value + close_tabs(@@counter)
  end

  def display_string(input_string)
    return front_tabs(@@counter) + input_string + close_tabs(@@counter)
  end

  def front_tabs(number_of_tabs)
    tags = ''
    number_of_tabs.times do
      tags = tags + '<ul>'
    end
    tags.html_safe
  end

  def close_tabs(number_of_tabs)
    puts "number of tabs" + number_of_tabs.to_s
    tags = ''
    number_of_tabs.times do
      tags = tags + '</ul>'
    end
    tags.html_safe
  end
end

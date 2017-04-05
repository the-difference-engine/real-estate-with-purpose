module PropertiesHelper
  def display_hash_key_value(key, value, number_of_tabs)
    front_tabs(number_of_tabs) + key + ': ' + value + close_tabs(number_of_tabs)
  end

  def display_hash_key(key, number_of_tabs)
    front_tabs(number_of_tabs) + key + ': ' + close_tabs(number_of_tabs)
  end

  def display_hash_value(value, number_of_tabs)
    front_tabs(number_of_tabs) + value + close_tabs(number_of_tabs)
  end

  def display_string(input_string, number_of_tabs)
    front_tabs(number_of_tabs) + input_string + close_tabs(number_of_tabs)
  end

  def front_tabs(number_of_tabs)
    if number_of_tabs == 1
      '<b><ul>'.html_safe
    elsif number_of_tabs == 2
      '<b><ul><ul>'.html_safe
    elsif number_of_tabs == 3
      '<ul><b><ul><ul>'.html_safe
    elsif number_of_tabs == 4
      '<ul><ul><ul><ul>'.html_safe
    end
  end

  def close_tabs(number_of_tabs)
    if number_of_tabs == 1
      '</ul></b>'.html_safe
    elsif number_of_tabs == 2
      '</ul></ul></b>'.html_safe
    elsif number_of_tabs == 3
      '</ul></ul></b></ul>'.html_safe
    elsif number_of_tabs == 4
      '</ul></ul></ul></ul>'.html_safe
    end
  end
end

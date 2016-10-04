class Property < ApplicationRecord
  has_many :addresses

  def amount_donated
    list_price.to_f * 0.10
  end
end

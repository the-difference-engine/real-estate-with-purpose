class Seller < ApplicationRecord
  has_many :users, :as => :userable
end

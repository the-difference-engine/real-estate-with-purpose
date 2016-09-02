class Buyer < ApplicationRecord
  has_many :users, :as => userable
end

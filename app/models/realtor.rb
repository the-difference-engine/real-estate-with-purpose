class Realtor < ApplicationRecord
  has_many :users, :as => :userable
end

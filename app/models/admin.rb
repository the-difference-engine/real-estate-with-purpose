class Admin < ApplicationRecord
  has_many :users, :as => userable
end

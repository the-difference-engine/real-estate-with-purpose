class Realtor < ApplicationRecord
  has_many :users, :as => :userable
  validates :name, presence: true 
end

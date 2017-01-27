class User < ApplicationRecord
  has_secure_password
  has_many :user_properties
  has_many :properties, through: :user_properties

  def est_donation_amount
    self.home_budget * 0.025 * 0.7 * 0.1
  end

end

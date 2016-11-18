class User < ApplicationRecord
  has_secure_password

  def est_donation_amount
    self.home_budget * 0.025 * 0.7 * 0.1
  end

end

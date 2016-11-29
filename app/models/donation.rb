class Donation < ApplicationRecord
  belongs_to :charity

  def average_donation
    donations = Donation.all
    total_donations = 0
    donations.each do |donation|
      total_donations += (donation.amount_donated)
    end
    return (total_donations/donations.count)
  end

end

class HomepagesController < ApplicationController
  def index 
    @donations = Donation.all
  end
end

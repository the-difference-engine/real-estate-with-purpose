class HomepagesController < ApplicationController
  def index 
    @donations = Donation.all
    @donation = Donation.first
  end

  def listwithus
    
  end

end

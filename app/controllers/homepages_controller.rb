class HomepagesController < ApplicationController
  def index
    @donations = Donation.all
    @donation = Donation.first
  end

  def listwithus

  end

  def findyourhome

  end

  def company

  end

  def contact

  end
end

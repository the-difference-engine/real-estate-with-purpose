class DonationsController < ApplicationController

  def index
    @donations = Donations.all
  end

  def new
    @donation = Donation.new
  end

  def show
    @donation = Donation.find_by(id: params[:id])
  end

  def edit
    @donation = Donation.find_by(id: params[:id])
  end

  def update
    @donation = Donation.find_by(id: params[:id])

    if @donation.update(
      amount_donated: params[:amount_donated],
      charity_name: params[:charity_name])
    end
  end

  def destroy
    @donation = Donation.find_by(id: params[:id])
    @donation.destroy

    flash[:warning] = "Destroyed!"
    redirect_to "/"
  end
end

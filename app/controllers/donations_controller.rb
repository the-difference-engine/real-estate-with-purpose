class DonationsController < ApplicationController
  def index
    @donations = Donation.all
  end

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.create(amount_donated: params[:amount_donated],
                                charity_name: params[:charity_name]
                                )
    flash[:success] = "Donation Created"
    redirect_to '/donations/#{@donation.id}'
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
    
    flash[:success] = 'Donation Updated'
  end

  def destroy
    @donation = Donation.find_by(id: params[:id])
    @donation.destroy

    flash[:warning] = "Destroyed!"
    redirect_to "/"
  end
end

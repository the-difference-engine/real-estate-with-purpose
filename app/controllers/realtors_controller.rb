class RealtorsController < ApplicationController

  before_action :authenticate_admin!, except: [:index, :show]

  def index
    @realtors = Realtor.all
  end

  def new
    @realtor = Realtor.new  
  end

  def create
    @realtor = Realtor.create(
      headshot: params[:headshot],
      bio: params[:bio],
      faqs: params[:faqs],
      twitter_handle: params[:twitter_handle],
      phone_number: params[:phone_number],
      email: params[:email],
      name: params[:name]
    )
    flash[:success] = 'New Realtor Created'
    redirect_to "/realtors/#{@realtor.id}"
  end

  def show
    @realtor = Realtor.find_by(id: params[:id])
  end

  def edit
    @realtor = Realtor.find_by(id: params[:id])
  end

  def update
    @realtor = Realtor.find_by(id: params[:id])
    @realtor.update(
      headshot: params[:headshot],
      bio: params[:bio],
      faqs: params[:faqs],
      twitter_handle: params[:twitter_handle],
      phone_number: params[:phone_number],
      email: params[:email],
      name: params[:name]
    )
    flash[:success] = 'Realtor Updated'
    redirect_to "/realtors/#{@realtor.id}"
  end

  def destroy
    @realtor = Realtor.find_by(id: params[:id])
    @realtor.destroy

    flash[:warning] = "Destroyed!"
    redirect_to "/"
  end
end

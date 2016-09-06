class RealtorsController < ApplicationController
  def index
    @realtors = Realtor.all
  end

  def new
    @realtor = Realtor.new
  end

  def show
    @realtor = Realtor.find_by(id: params[:id])
  end

  def edit
    @realtor = Realtor.find_by(id: params[:id])
  end

  def update
    @realtor = Realtor.find_by(id: params[:id])

    if @realtor.update(
      headshot: params[:headshot],
      bio: params[:bio],
      faqs: params[:faqs],
      twitter_handle: params[:twitter_handle],
      phone_number: params[:phone_number],
      email: params[:email]
    end
  end

  def destroy
    @realtor = Realtor.find_by(id: params[:id])
    @realtor.destroy

    flash[:warning] = "Destroyed!"
    redirect_to "/"
  end
end

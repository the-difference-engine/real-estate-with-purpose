class CharitiesController < ApplicationController
  # Notes for Charities authenticate_admin later
   # before_action :authenticate_admin!, only: [:index]

  def index
    @charities = Charity.all
  end

  def new
    @charity = Charity.new
  end

  def show
    @charity = set_lead
  end

  def edit
    @charity = set_lead
  end

  def create
    @charity = Charity.create(user_params)
    if @charity.save
      redirect_to "/charities/#{@charity.id}"
    else
      render 'new.html.erb'
    end
  end

  def update
    @charity = set_lead
    @charity.update(user_params)
    redirect_to "/charities/#{@charity.id}"
  end

  def destroy
    @charity = set_lead
    @charity.destroy
    redirect_to "/charities"
  end

  private

  def set_lead
    charity = Charity.find(params[:id])
  end

  def user_params
    params.require(:charity).permit(:name, :description, :logo, :url)
  end

end

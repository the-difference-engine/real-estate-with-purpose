class CharitiesController < ApplicationController

  before_action :authenticate_admin!, except: [:show, :index]

  def index
    @charities = Charity.all
  end
  def new
    @charity = Charity.new
    render 'new.html.erb'
  end
  def create
    @charity = Charity.create(
      name: params[:name],
      logo: params[:logo],
      description: params[:description]
      )

    flash[:success] = 'Charity Created'
    redirect_to '/charities/#{@charity.id}'
  end
  def show
    @charity = Charity.find_by(id: params[:id])
  end
  def edit
    @charity = Charity.find_by(id: params[:id])
  end
  def update
    @charity = Charity.find_by(id: params[:id])
    @charity.update(
      name: params[:name],
      logo: params[:logo],
      description: params[:description]
      )

    flash[:success] = "Charity Updated"
    redirect_to '/charities/#{@charity.id}'
  end
  def destroy
    @charity = Charity.find_by(id: params[:id])
    @charity.destroy

    flash[:warning] = "Destroyed!"
    redirect_to "/"
  end
end

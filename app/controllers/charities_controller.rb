class CharitiesController < ApplicationController

  def index
    @charities = Charity.all
  end

  def new
    @charity = Charity.new
  end

  def show
    @charity = Charity.find_by(:id params[:id])
  end

  def edit
    @charity = Charity.find_by(:id params[:id])
  end

  def update
    @charity = Charity.find_by(:id params[:id])

    if @charity.update(
      name: params[:name],
      logo: params[:logo],
      description: params[:description]
      )
  end

  def destroy
    @charity = Charity.find_by(:id params[:id])
    @charity.destroy

    flash[:warning] = "Destroyed!"
    redirect_to "/"
  end
end

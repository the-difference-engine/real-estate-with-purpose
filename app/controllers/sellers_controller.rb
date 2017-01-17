class SellersController < ApplicationController
  def index
    @sellers = Seller.all
  end

  def new
    @seller = Seller.new
  end

  def create
    @seller = Seller.create(name: params[:name])
    flash[:success] = 'New Seller Created'
    redirect_to '/sellers/#{@seller.id}'
  end

  def show
    @seller = Seller.find_by(id: params[:id])
  end

  def edit
    @seller = Seller.find_by(id: params[:id])
  end

  def update
    @seller = Seller.find_by(id: params[:id])
    @seller.update(name: params[:name])
    flash[:success] = 'Seller Updated'
    redirect_to '/sellers/#{@seller.id}'
  end

  def destroy
    @seller = Seller.find_by(id: params[:id])
    @seller.destroy
    flash[:warning] = "Destroyed!"
    redirect_to "/"
  end
end

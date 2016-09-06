class SellersController < ApplicationController
    def index
      @sellers = Seller.all
    end

    def new
      @seller = Seller.new
    end

    def show
      @seller = Seller.find_by(id: params[:id])
    end

    def edit
      @seller = Seller.find_by(id: params[:id])
    end

    def update
      @seller = Seller.find_by(id: params[:id])

      if @seller.update(
        name: params[:name]
        )
      end
    end

    def destroy
      @seller = Seller.find_by(id: params[:id])
      @seller.destroy

      flash[:warning] = "Destroyed!"
      redirect_to "/"
    end
  end
end

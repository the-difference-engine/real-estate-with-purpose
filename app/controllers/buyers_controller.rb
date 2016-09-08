class BuyersController < ApplicationController
    def index
      @buyers = Buyer.all
    end

    def new
      @buyer = Buyer.new
    end

    def create
      @buyer = Buyer.create(name: params[:name])

      redirect_to '/buyers/#{@buyer.id}'
    end

    def show
      @buyer = Buyer.find_by(id: params[:id])
    end

    def edit
      @buyer = Buyer.find_by(id: params[:id])
    end

    def update
      @buyer = Buyer.find_by(id: params[:id])

      if @buyer.update(
        name: params[:name]
        )
      end
    end

    def destroy
      @buyer = Buyer.find_by(id: params[:id])
      @buyer.destroy

      flash[:warning] = "Destroyed!"
      redirect_to "/"
    end
  end
end

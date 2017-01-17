class PropertiesController < ApplicationController

  before_action :authenticate_admin!, except: [:index, :new, :create, :show]

  def index
    user = ENV["USERNAME"]
    pass = ENV["PASSWORD"]

    price_min = params[:price_min]
    price_max = params[:price_max]
    baths_min = params[:baths_min]
    baths_max = params[:baths_max]
    beds_min = params[:beds_min]
    beds_max = params[:beds_max]
    
    @properties = Unirest.get("https://#{user}:#{pass}@api.simplyrets.com/properties?status=Active&limit=9&counties=cook&minprice=#{price_min}&maxprice=#{price_max}&minbaths=#{baths_min}&maxbaths=#{baths_max}&minbeds=#{beds_min}&maxbeds=#{beds_max}").body
    @properties.to_json
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.create(
      num_bedrooms: params[:num_bedrooms],
      num_bathrooms: params[:num_bathrooms],
      list_price: params[:list_price],
      image: params[:image],
      overview: params[:overview],
      details: params[:details],
      misc_details: params[:misc_details],
      line_1: params[:line_1],
      api_address: params[:api_address],
      city: params[:api],
      state: params[:state],
      zip: params[:zip]
      )
    flash[:success] = 'New Property Created'
    redirect_to "/properties/#{@property.id}"
  end

  def show
    @property = Property.find_by(id: params[:id])
  end

  def edit
    unless current_user && current_user.admin
      redirect_to '/'
    end
    @property = Property.find_by(id: params[:id])
  end

  def update
    @property = Property.find_by(id: params[:id])
    @property.update(
      num_bedrooms: params[:num_bedrooms],
      num_bathrooms: params[:num_bathrooms],
      list_price: params[:list_price],
      image: params[:image],
      overview: params[:overview],
      details: params[:details],
      misc_details: params[:misc_details]
      )
    flash[:success] = 'Property Updated'
    redirect_to "/properties/#{@property.id}"
  end

  def destroy
    @property = Property.find_by(id: params[:id])
    @property.destroy

    flash[:warning] = "Destroyed!"
    redirect_to "/"
  end
end

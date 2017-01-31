class PropertiesController < ApplicationController

  before_action :authenticate_admin!, except: [:index, :new, :create, :show]

  def index
    user = ENV["USERNAME"]
    pass = ENV["PASSWORD"]

    @price_min = params[:price_min]
    @price_max = params[:price_max]
    @baths_min = params[:baths_min]
    @baths_max = params[:baths_max]
    @beds_min = params[:beds_min]
    @beds_max = params[:beds_max]
    params[:location] != "" ? location = "&q=#{params[:location]}" : location = ""
    params[:offset] ? @offset = params[:offset] : @offset = '0'
    params[:current_page] ? @current_page = params[:current_page] : @current_page = 1
    params[:sort] ? @sort = params[:sort] : @sort = '-listdate'
    @just_location = params[:location]
    
    call = Unirest.get("https://#{user}:#{pass}@api.simplyrets.com/properties?status=Active&counties=cook#{location}&minprice=#{@price_min}&maxprice=#{@price_max}&minbaths=#{@baths_min}&maxbaths=#{@baths_max}&minbeds=#{@beds_min}&maxbeds=#{@beds_max}&sort=#{@sort}&limit=18&offset=#{@offset}",
                       headers: { "Accept" => "application/json" })
    @properties = call.body
    total_results = call.headers[:x_total_count]
    @pages = (total_results.to_f / 18.0).ceil
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

    user = ENV["USERNAME"]
    pass = ENV["PASSWORD"]
    mlsId = params[:id]
    @property = Unirest.get("https://#{user}:#{pass}@api.simplyrets.com/properties/#{mlsId}").body
    @address = @property["address"]["full"]
    @beds = @property["property"]["bedrooms"]
    @baths = @property["property"]["bathsFull"]
    @list_price = @property["listPrice"]
    @list_date = @property["listDate"]

    @lat = @property["geo"]["lat"]
    @long = @property["geo"]["lng"]

    @google = ENV["GOOGLE"]
    @map_image = "https://maps.googleapis.com/maps/api/staticmap?center=#{@lat},#{@long}&zoom=12&size=600x300&maptype=roadmap&markers=color:red%7Clabel:A%7C#{@lat},#{@long}&key=#{@google}"
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
